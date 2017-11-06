.class abstract Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
.super Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;
.source "SeslAbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/Filter$FilterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnFluidScrollEffectListener;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecyclerListener;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeListener;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$InputConnectionWrapper;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SmoothScrollByMove;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForKeyLongPress;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForLongPress;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$WindowRunnnable;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$ListItemAccessibilityDelegate;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SelectionBoundsAdjuster;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
        "Landroid/widget/Filter$FilterListener;"
    }
.end annotation


# static fields
.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_MULTIPLE_MODAL:I = 0x3

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final DELAY_GO_TO_TOP_HIDE:I = 0x9c4

.field private static final DRAGSCROLL_WORKING_ZONE_DP:I = 0x19

.field private static final GTP_STATE_NONE:I = 0x0

.field private static final GTP_STATE_PRESSED:I = 0x2

.field private static final GTP_STATE_SHOWN:I = 0x1

.field private static final HOVERSCROLL_DOWN:I = 0x2

.field private static final HOVERSCROLL_HEIGHT_BOTTOM_DP:I = 0x19

.field private static final HOVERSCROLL_HEIGHT_TOP_DP:I = 0x19

.field private static final HOVERSCROLL_SPEED_FASTER:F = 3000.0f

.field private static final HOVERSCROLL_UP:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field private static JUMP_SCROLL_TO_TOP_FINISHING:I = 0x0

.field private static JUMP_SCROLL_TO_TOP_IDLE:I = 0x0

.field private static JUMP_SCROLL_TO_TOP_INITIATED:I = 0x0

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field private static final MOTION_EVENT_ACTION_PEN_DOWN:I = 0xd3

.field private static final MOTION_EVENT_ACTION_PEN_MOVE:I = 0xd5

.field private static final MOTION_EVENT_ACTION_PEN_UP:I = 0xd4

.field private static final MSG_HOVERSCROLL_MOVE:I = 0x1

.field private static final MSG_HOVERSCROLL_MOVE_FASTER:I = 0x2

.field private static final MSG_HOVERSCROLL_MOVE_TO_END:I = 0x3

.field private static final MSG_QC_HIDE:I = 0x0

.field static final OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field private static final QC_BOTTOM:I = 0x4

.field private static final QC_LEFT:I = 0x1

.field private static final QC_RIGHT:I = 0x3

.field private static final QC_STATE_NONE:I = 0x0

.field private static final QC_STATE_PRESSED:I = 0x2

.field private static final QC_STATE_SHOWN:I = 0x1

.field private static final QC_TOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SeslAbsListView"

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_OVERFLING:I = 0x6

.field static final TOUCH_MODE_OVERSCROLL:I = 0x5

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1

.field private static final VIBE_COMMON_A:I

.field static final sLinearInterpolator:Landroid/view/animation/Interpolator;

.field private static sScrollAmount:I


# instance fields
.field private final ACTION_AUTOSCROLL_DOWN:I

.field private final ACTION_AUTOSCROLL_OFF:I

.field private final ACTION_AUTOSCROLL_ON:I

.field private final ACTION_AUTOSCROLL_SPEED_DOWN:I

.field private final ACTION_AUTOSCROLL_SPEED_UP:I

.field private final ACTION_AUTOSCROLL_TOP:I

.field private final ACTION_AUTOSCROLL_UP:I

.field private final SWITCH_CONTROL_FLING:I

.field private final SWITCH_CONTROL_SCROLL_DURATION_GAP:I

.field private final SWITCH_CONTROL_SCROLL_MAX_DURATION:I

.field private final SWITCH_CONTROL_SCROLL_MIN_DURATION:I

.field private mAccessibilityDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$ListItemAccessibilityDelegate;

.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field mAdapterHasStableIds:Z

.field private mAlwaysDisableHoverHighlight:Z

.field private final mAutoHide:Ljava/lang/Runnable;

.field private mAutoscrollDuration:I

.field private mCacheColorHint:I

.field mCachingActive:Z

.field mCachingStarted:Z

.field private mCanGoFuther:Z

.field mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedItemCount:I

.field mChnagedAdapter:Z

.field mChoiceActionMode:Landroid/view/ActionMode;

.field mChoiceMode:I

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mCloseChildByBottom:Landroid/view/View;

.field private mCloseChildByTop:Landroid/view/View;

.field private mCloseChildPositionByBottom:I

.field private mCloseChildPositionByTop:I

.field private mContext:Landroid/content/Context;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field public mCurrentFocusPosition:I

.field private mCurrentKeyCode:I

.field private mCustomMultiChoiceMode:Z

.field private mDVFSLockAcquired:Z

.field mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDeltamoveX:I

.field private mDeltamoveY:I

.field private mDensityScale:F

.field private mDirection:I

.field private mDistanceFromCloseChildBottom:I

.field private mDistanceFromCloseChildTop:I

.field private mDistanceFromTrackedChildTop:I

.field private mDragBlockBottom:I

.field private mDragBlockImage:Landroid/graphics/drawable/Drawable;

.field private mDragBlockLeft:I

.field private mDragBlockRect:Landroid/graphics/Rect;

.field private mDragBlockRight:I

.field private mDragBlockTop:I

.field private mDragEndX:I

.field private mDragEndY:I

.field private mDragScrollWorkingZonePx:I

.field private mDragSelectedItemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDragSelectedItemSize:I

.field private mDragSelectedViewPosition:I

.field private mDragStartX:I

.field private mDragStartY:I

.field mDrawSelectorOnTop:Z

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mEnableGoToTop:Z

.field private mExtraPaddingInBottomHoverArea:I

.field private mExtraPaddingInTopHoverArea:I

.field private mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

.field mFastScrollAlwaysVisible:Z

.field mFastScrollEnabled:Z

.field private mFastScrollStyle:I

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field private mFirstPressedPoint:I

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

.field private mFlingStrictSpan:Ljava/lang/Object;

.field private mFluidScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

.field mFluidScrollEnabled:Z

.field private mForceTranscriptScroll:Z

.field private mForcedClick:Z

.field private mGlobalLayoutListenerAddedFilter:Z

.field private final mGoToToFadeInRunnable:Ljava/lang/Runnable;

.field private final mGoToToFadeOutRunnable:Ljava/lang/Runnable;

.field private mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

.field private mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private mGoToTopImage:Landroid/graphics/drawable/Drawable;

.field private mGoToTopLastState:I

.field private mGoToTopRect:Landroid/graphics/Rect;

.field private mGoToTopSizeChnage:Z

.field private mGoToTopState:I

.field private mHapticOverScroll:Z

.field private mHasWindowFocusForMotion:Z

.field public mHoverAreaEnter:Z

.field private mHoverBottomAreaHeight:I

.field private mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

.field private mHoverRecognitionCurrentTime:J

.field private mHoverRecognitionDurationTime:J

.field private mHoverRecognitionStartTime:J

.field private mHoverScrollDelay:I

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:F

.field private mHoverScrollStartTime:J

.field private mHoverScrollStateForListener:I

.field private mHoverScrollTimeInterval:J

.field private mHoverTopAreaHeight:I

.field mHoveringEnabled:Z

.field mInitAbsListView:Z

.field private mIsChildViewEnabled:Z

.field private mIsCloseChildSetted:Z

.field private mIsCtrlkeyPressed:Z

.field private mIsDetaching:Z

.field private mIsDragBlockEnabled:Z

.field private mIsDragScrolled:Z

.field private mIsEnabledPaddingInHoverScroll:Z

.field private mIsFirstPenClick:Z

.field private mIsHoverOverscrolled:Z

.field private mIsHoveredByMouse:Z

.field private mIsMovedbeforeUP:Z

.field private mIsMultiFocusEnabled:Z

.field private mIsNeedPenSelectIconSet:Z

.field private mIsNeedPenSelection:Z

.field private mIsOnClickEnabled:Z

.field private mIsPenHovered:Z

.field private mIsPenPressed:Z

.field private mIsPenSelectPointerSetted:Z

.field private mIsQCBtnFadeInSet:Z

.field private mIsQCBtnFadeOutSet:Z

.field private mIsQCShown:Z

.field final mIsScrap:[Z

.field private mIsSendHoverScrollState:Z

.field private mIsShiftkeyPressed:Z

.field private mIsTextSelectionStarted:Z

.field private mIsfirstMoveEvent:Z

.field mJumpAtFirst:Z

.field private mJumpScrollToTopState:I

.field private mLastAccessibilityScrollEventFromIndex:I

.field private mLastAccessibilityScrollEventToIndex:I

.field private mLastHandledItemCount:I

.field private mLastPosition:I

.field private mLastPositionDistanceGuess:I

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field private mMotionEnable:Z

.field mMotionPosition:I

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;

.field private mMultiFocusImage:Landroid/graphics/drawable/Drawable;

.field public mMultiSelectionStart:Z

.field private mNeedsHoverScroll:Z

.field private mNestedYOffset:I

.field private mNewTextViewHoverState:Z

.field private mOldAdapterItemCount:I

.field private mOldHoverScrollDirection:I

.field private mOldKeyCode:I

.field private mOldTextViewHoverState:Z

.field private mOnFluidScrollEffectListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnFluidScrollEffectListener;

.field private mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnScrollListener;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field mOverscrollMax:I

.field private final mOwnerThread:Ljava/lang/Thread;

.field private mPenDragScrollTimeInterval:J

.field private mPendingCheckForDoublePenClick:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;

.field private mPendingCheckForKeyLongPress:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;

.field private mPendingSync:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;

.field private mPerformClick:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;

.field private mPointerCount:I

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

.field private mPressItemListArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousTextViewScroll:Z

.field private mPublicInputConnection:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$InputConnectionWrapper;

.field private mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

.field private mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

.field private final mQCBtnFadeInRunnable:Ljava/lang/Runnable;

.field private mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private final mQCBtnFadeOutRunnable:Ljava/lang/Runnable;

.field private mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mQCIconHideDelay:I

.field private mQCLocation:I

.field private mQCRect:Landroid/graphics/Rect;

.field private mQCScrollDirection:I

.field private mQCScrollFrom:I

.field private mQCScrollNext:I

.field private mQCScrollRunnable:Ljava/lang/Runnable;

.field private mQCScrollTo:I

.field private mQCScrollingCount:I

.field private mQCstate:I

.field final mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;

.field mResurrectToPosition:I

.field private mRootViewCheckForDialog:Landroid/view/View;

.field private final mScrollConsumed:[I

.field mScrollDown:Landroid/view/View;

.field private mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private final mScrollOffset:[I

.field private mScrollProfilingStarted:Z

.field private mScrollRemains:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollStrictSpan:Ljava/lang/Object;

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field private mSecondPressedPoint:I

.field mSelectedTop:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSelectorState:[I

.field private mShowFadeOutGTP:I

.field mShowGTPAtFirstTime:Z

.field private mSmoothScrollByMove:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SmoothScrollByMove;

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private final mTmpPoint:[F

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTouchdownX:I

.field private mTouchdownY:I

.field private mTrackedChild:Landroid/view/View;

.field private mTrackedChildPosition:I

.field private mTranscriptMode:I

.field private mVelocityScale:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWidthMeasureSpec:I

.field mWindowFocusChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslHapticFeedbackConstantsReflector;->getField_VIBE_COMMON_A()I

    move-result v0

    sput v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->VIBE_COMMON_A:I

    .line 887
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 999
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    .line 1000
    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    .line 1001
    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->JUMP_SCROLL_TO_TOP_FINISHING:I

    .line 6901
    const/16 v0, 0x1f4

    sput v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->sScrollAmount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1121
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1125
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 1129
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 1133
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 142
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionEnable:Z

    .line 148
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHasWindowFocusForMotion:Z

    .line 282
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceMode:I

    .line 315
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLayoutMode:I

    .line 335
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDrawSelectorOnTop:Z

    .line 345
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectorPosition:I

    .line 350
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 356
    new-instance v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;

    .line 361
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectionLeftPadding:I

    .line 366
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectionTopPadding:I

    .line 371
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectionRightPadding:I

    .line 376
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectionBottomPadding:I

    .line 381
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 386
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mWidthMeasureSpec:I

    .line 434
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    .line 465
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedTop:I

    .line 514
    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSmoothScrollbarEnabled:Z

    .line 534
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mResurrectToPosition:I

    .line 536
    iput-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 562
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLastTouchMode:I

    .line 565
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mScrollProfilingStarted:Z

    .line 568
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingProfilingStarted:Z

    .line 576
    iput-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mScrollStrictSpan:Ljava/lang/Object;

    .line 577
    iput-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingStrictSpan:Ljava/lang/Object;

    .line 594
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsFirstPenClick:Z

    .line 595
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsMovedbeforeUP:Z

    .line 604
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEnableGoToTop:Z

    .line 605
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopSizeChnage:Z

    .line 606
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCanGoFuther:Z

    .line 608
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopRect:Landroid/graphics/Rect;

    .line 609
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopState:I

    .line 610
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopLastState:I

    .line 611
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mShowFadeOutGTP:I

    .line 612
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mShowGTPAtFirstTime:Z

    .line 614
    iput-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mRootViewCheckForDialog:Landroid/view/View;

    .line 657
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLastScrollState:I

    .line 686
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mVelocityScale:F

    .line 688
    new-array v2, v6, [Z

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsScrap:[Z

    .line 690
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mScrollOffset:[I

    .line 691
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mScrollConsumed:[I

    .line 693
    const/4 v2, 0x2

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTmpPoint:[F

    .line 699
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mNestedYOffset:I

    .line 709
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mActivePointerId:I

    .line 715
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPointerCount:I

    .line 722
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHapticOverScroll:Z

    .line 770
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDirection:I

    .line 804
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverTopAreaHeight:I

    .line 806
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverBottomAreaHeight:I

    .line 816
    iput-wide v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverRecognitionDurationTime:J

    .line 818
    iput-wide v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverRecognitionCurrentTime:J

    .line 820
    iput-wide v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverRecognitionStartTime:J

    .line 822
    const-wide/16 v2, 0x12c

    iput-wide v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollTimeInterval:J

    .line 824
    const-wide/16 v2, 0x1f4

    iput-wide v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPenDragScrollTimeInterval:J

    .line 826
    iput-wide v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollStartTime:J

    .line 828
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollDirection:I

    .line 833
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsHoverOverscrolled:Z

    .line 838
    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollEnable:Z

    .line 844
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverAreaEnter:Z

    .line 846
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsSendHoverScrollState:Z

    .line 851
    const/high16 v2, 0x44480000    # 800.0f

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollSpeed:F

    .line 861
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollDelay:I

    .line 863
    const/16 v2, 0x1e

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCIconHideDelay:I

    .line 865
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mNeedsHoverScroll:Z

    .line 867
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollStateForListener:I

    .line 869
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    .line 872
    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoveringEnabled:Z

    .line 874
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mExtraPaddingInTopHoverArea:I

    .line 875
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mExtraPaddingInBottomHoverArea:I

    .line 877
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChnagedAdapter:Z

    .line 878
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mWindowFocusChanged:Z

    .line 879
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mInitAbsListView:Z

    .line 880
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mJumpAtFirst:Z

    .line 906
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCustomMultiChoiceMode:Z

    .line 911
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsCtrlkeyPressed:Z

    .line 912
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsShiftkeyPressed:Z

    .line 913
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsPenHovered:Z

    .line 914
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsPenPressed:Z

    .line 915
    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsfirstMoveEvent:Z

    .line 917
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsMultiFocusEnabled:Z

    .line 921
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPressedPoint:I

    .line 922
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSecondPressedPoint:I

    .line 923
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOldAdapterItemCount:I

    .line 924
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOldKeyCode:I

    .line 925
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCurrentKeyCode:I

    .line 926
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCurrentFocusPosition:I

    .line 929
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMultiSelectionStart:Z

    .line 930
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsTextSelectionStarted:Z

    .line 931
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsNeedPenSelection:Z

    .line 933
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragSelectedItemSize:I

    .line 934
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragSelectedViewPosition:I

    .line 935
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsPenSelectPointerSetted:Z

    .line 936
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsNeedPenSelectIconSet:Z

    .line 937
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOldTextViewHoverState:Z

    .line 938
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mNewTextViewHoverState:Z

    .line 939
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPreviousTextViewScroll:Z

    .line 942
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsDragBlockEnabled:Z

    .line 943
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragStartX:I

    .line 944
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragStartY:I

    .line 945
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragEndX:I

    .line 946
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragEndY:I

    .line 948
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockLeft:I

    .line 949
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockTop:I

    .line 950
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockRight:I

    .line 951
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockBottom:I

    .line 953
    iput-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTrackedChild:Landroid/view/View;

    .line 954
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTrackedChildPosition:I

    .line 955
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDistanceFromTrackedChildTop:I

    .line 957
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsCloseChildSetted:Z

    .line 958
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOldHoverScrollDirection:I

    .line 959
    iput-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCloseChildByTop:Landroid/view/View;

    .line 960
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCloseChildPositionByTop:I

    .line 961
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDistanceFromCloseChildTop:I

    .line 962
    iput-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCloseChildByBottom:Landroid/view/View;

    .line 963
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCloseChildPositionByBottom:I

    .line 964
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDistanceFromCloseChildBottom:I

    .line 967
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockRect:Landroid/graphics/Rect;

    .line 969
    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsOnClickEnabled:Z

    .line 973
    const/16 v2, 0xfa0

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->SWITCH_CONTROL_FLING:I

    .line 975
    const/16 v2, 0x50

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->SWITCH_CONTROL_SCROLL_MIN_DURATION:I

    .line 976
    const/16 v2, 0x230

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->SWITCH_CONTROL_SCROLL_MAX_DURATION:I

    .line 977
    const/16 v2, 0x50

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->SWITCH_CONTROL_SCROLL_DURATION_GAP:I

    .line 980
    const/high16 v2, 0x1000000

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->ACTION_AUTOSCROLL_UP:I

    .line 981
    const/high16 v2, 0x2000000

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->ACTION_AUTOSCROLL_DOWN:I

    .line 982
    const/high16 v2, 0x400000

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->ACTION_AUTOSCROLL_ON:I

    .line 983
    const/high16 v2, 0x800000

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->ACTION_AUTOSCROLL_OFF:I

    .line 984
    const/high16 v2, 0x10000000

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->ACTION_AUTOSCROLL_SPEED_UP:I

    .line 985
    const/high16 v2, 0x20000000

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->ACTION_AUTOSCROLL_SPEED_DOWN:I

    .line 986
    const/high16 v2, 0x4000000

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->ACTION_AUTOSCROLL_TOP:I

    .line 996
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragScrollWorkingZonePx:I

    .line 997
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsDragScrolled:Z

    .line 1002
    sget v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mJumpScrollToTopState:I

    .line 1004
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsHoveredByMouse:Z

    .line 1005
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAlwaysDisableHoverHighlight:Z

    .line 1074
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDVFSLockAcquired:Z

    .line 3842
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mForcedClick:Z

    .line 6899
    iput-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSmoothScrollByMove:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SmoothScrollByMove;

    .line 6900
    iput-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mScrollRemains:Ljava/util/LinkedList;

    .line 9548
    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsQCBtnFadeInSet:Z

    .line 9549
    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsQCBtnFadeOutSet:Z

    .line 9556
    new-instance v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$10;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$10;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCBtnFadeInRunnable:Ljava/lang/Runnable;

    .line 9562
    new-instance v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$11;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$11;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCBtnFadeOutRunnable:Ljava/lang/Runnable;

    .line 9568
    new-instance v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$12;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$12;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToToFadeOutRunnable:Ljava/lang/Runnable;

    .line 9573
    new-instance v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$13;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$13;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToToFadeInRunnable:Ljava/lang/Runnable;

    .line 9578
    new-instance v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$14;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$14;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAutoHide:Ljava/lang/Runnable;

    .line 9585
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCLocation:I

    .line 9586
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCstate:I

    .line 9587
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsQCShown:Z

    .line 9592
    iput v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCScrollingCount:I

    .line 9946
    new-instance v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$18;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$18;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    .line 1134
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mContext:Landroid/content/Context;

    .line 1135
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->initAbsListView()V

    .line 1137
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 1139
    sget-object v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslAbsListView:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1142
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslAbsListView_android_listSelector:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1143
    .local v1, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 1144
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1147
    :cond_0
    sget v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslAbsListView_android_drawSelectorOnTop:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDrawSelectorOnTop:Z

    .line 1149
    sget v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslAbsListView_android_stackFromBottom:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setStackFromBottom(Z)V

    .line 1151
    sget v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslAbsListView_android_scrollingCache:I

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setScrollingCacheEnabled(Z)V

    .line 1153
    sget v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslAbsListView_android_textFilterEnabled:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setTextFilterEnabled(Z)V

    .line 1155
    sget v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslAbsListView_android_transcriptMode:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setTranscriptMode(I)V

    .line 1157
    sget v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslAbsListView_android_cacheColorHint:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setCacheColorHint(I)V

    .line 1159
    sget v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslAbsListView_android_smoothScrollbar:I

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 1161
    sget v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslAbsListView_android_choiceMode:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setChoiceMode(I)V

    .line 1164
    sget v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslAbsListView_android_fastScrollEnabled:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setFastScrollEnabled(Z)V

    .line 1166
    sget v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslAbsListView_android_fastScrollStyle:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setFastScrollStyle(I)V

    .line 1168
    sget v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslAbsListView_android_fastScrollAlwaysVisible:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 1170
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1171
    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    .prologue
    .line 2554
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_0

    .line 2555
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2554
    :goto_0
    return v0

    .line 2555
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsShiftkeyPressed:Z

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
    .param p1, "x1"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mShowFadeOutGTP:I

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsCtrlkeyPressed:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->addToPressItemListArray(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPressedPoint:I

    return v0
.end method

.method static synthetic access$1302(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
    .param p1, "x1"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPressedPoint:I

    return p1
.end method

.method static synthetic access$1400(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)[F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTmpPoint:[F

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForLongPress;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingCheckForLongPress:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForLongPress;)Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForLongPress;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
    .param p1, "x1"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForLongPress;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingCheckForLongPress:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsFirstPenClick:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsFirstPenClick:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragSelectedItemSize:I

    return v0
.end method

.method static synthetic access$1802(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
    .param p1, "x1"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragSelectedItemSize:I

    return p1
.end method

.method static synthetic access$1900(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragSelectedItemArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setFastScrollerEnabledUiThread(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsOnClickEnabled:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->notifyMultiSelectedStopInternal(II)V

    return-void
.end method

.method static synthetic access$2502(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsDetaching:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mActivePointerId:I

    return v0
.end method

.method static synthetic access$2800(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Landroid/view/VelocityTracker;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMaximumVelocity:I

    return v0
.end method

.method static synthetic access$3100(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic access$3200(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Landroid/widget/EdgeEffect;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Landroid/widget/EdgeEffect;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->clearScrollingCache()V

    return-void
.end method

.method static synthetic access$3600(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;IIIIIIIIZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .prologue
    .line 130
    invoke-virtual/range {p0 .. p9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mJumpScrollToTopState:I

    return v0
.end method

.method static synthetic access$3702(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
    .param p1, "x1"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mJumpScrollToTopState:I

    return p1
.end method

.method static synthetic access$3800()I
    .locals 1

    .prologue
    .line 130
    sget v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->JUMP_SCROLL_TO_TOP_FINISHING:I

    return v0
.end method

.method static synthetic access$3900()I
    .locals 1

    .prologue
    .line 130
    sget v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    return v0
.end method

.method static synthetic access$4000(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postOnJumpScrollToFinished()V

    return-void
.end method

.method static synthetic access$4100(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;IIIIIIIIZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .prologue
    .line 130
    invoke-virtual/range {p0 .. p9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mScrollRemains:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$4600(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$4700(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4800(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFluidScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCustomMultiChoiceMode:Z

    return v0
.end method

.method static synthetic access$5300(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$5400(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->playQCBtnFadeIn()V

    return-void
.end method

.method static synthetic access$5600(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->playQCBtnFadeOut()V

    return-void
.end method

.method static synthetic access$5700(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->playGotoToFadeOut()V

    return-void
.end method

.method static synthetic access$5800(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->playGotoToFadeIn()V

    return-void
.end method

.method static synthetic access$5900(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$6002(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsQCShown:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCScrollTo:I

    return v0
.end method

.method static synthetic access$6200(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCScrollNext:I

    return v0
.end method

.method static synthetic access$6202(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
    .param p1, "x1"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCScrollNext:I

    return p1
.end method

.method static synthetic access$6300(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCScrollFrom:I

    return v0
.end method

.method static synthetic access$6400(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCScrollingCount:I

    return v0
.end method

.method static synthetic access$6408(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)I
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCScrollingCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCScrollingCount:I

    return v0
.end method

.method static synthetic access$6500(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Landroid/view/animation/DecelerateInterpolator;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCScrollDirection:I

    return v0
.end method

.method static synthetic access$6700(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setFluidScrollerEnabledUiThread(Z)V

    return-void
.end method

.method static synthetic access$6900(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$7000(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isSupportGotoTop()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7100(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCanGoFuther:Z

    return v0
.end method

.method static synthetic access$7102(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCanGoFuther:Z

    return p1
.end method

.method static synthetic access$7200(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canScrollUp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mForcedClick:Z

    return v0
.end method

.method private addToPressItemListArray(II)V
    .locals 4
    .param p1, "firstPoint"    # I
    .param p2, "secondPoint"    # I

    .prologue
    .line 9459
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsMultiFocusEnabled:Z

    if-nez v2, :cond_0

    .line 9501
    :goto_0
    return-void

    .line 9463
    :cond_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    .line 9464
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9465
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9500
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->invalidate()V

    goto :goto_0

    .line 9467
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9470
    :cond_3
    if-ge p1, p2, :cond_5

    .line 9471
    sub-int v2, p2, p1

    add-int/lit8 v0, v2, 0x1

    .line 9472
    .local v0, "checkCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_1

    .line 9473
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 9474
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9478
    :goto_3
    add-int/lit8 p1, p1, 0x1

    .line 9472
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 9476
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 9480
    .end local v0    # "checkCount":I
    .end local v1    # "i":I
    :cond_5
    if-le p1, p2, :cond_7

    .line 9481
    sub-int v2, p1, p2

    add-int/lit8 v0, v2, 0x1

    .line 9482
    .restart local v0    # "checkCount":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v0, :cond_1

    .line 9483
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 9484
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9488
    :goto_5
    add-int/lit8 p1, p1, -0x1

    .line 9482
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 9486
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 9491
    .end local v0    # "checkCount":I
    .end local v1    # "i":I
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 9492
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9494
    :cond_8
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private autoScrollWithDuration(I)V
    .locals 9
    .param p1, "duration"    # I

    .prologue
    .line 2163
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 2164
    .local v2, "firstPosition":I
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2165
    .local v1, "first":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getLastVisiblePosition()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2166
    .local v4, "last":Landroid/view/View;
    const/4 v3, 0x0

    .line 2167
    .local v3, "height":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getCount()I

    move-result v0

    .line 2168
    .local v0, "count":I
    const-string v6, "SeslAbsListView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "autoScrollWithDuration:CASE first is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", count is"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    if-eqz v1, :cond_0

    .line 2170
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2172
    :cond_0
    if-eqz v4, :cond_1

    .line 2173
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v3, v6

    .line 2175
    :cond_1
    const-string v6, "SeslAbsListView"

    const-string v7, "autoScrollWithDuration:CASE height > 0 && getAdapter() != null && mCount > 0 "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    sub-int v6, v0, v2

    mul-int v5, p1, v6

    .line 2177
    .local v5, "tempdur":I
    const-string v6, "SeslAbsListView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "autoScrollWithDuration(), duration = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    add-int/lit8 v6, v0, -0x1

    mul-int v7, v2, v3

    div-int/lit8 v7, v7, 0x2

    mul-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v6, v7, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->smoothScrollToPositionFromTop(III)V

    .line 2179
    return-void
.end method

.method private canScrollDown()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2875
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v2

    .line 2878
    .local v2, "count":I
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    if-ge v5, v6, :cond_1

    move v0, v3

    .line 2881
    .local v0, "canScrollDown":Z
    :goto_0
    if-nez v0, :cond_0

    if-lez v2, :cond_0

    .line 2882
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2883
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getBottom()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_2

    move v0, v3

    .line 2886
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    return v0

    .end local v0    # "canScrollDown":Z
    :cond_1
    move v0, v4

    .line 2878
    goto :goto_0

    .restart local v0    # "canScrollDown":Z
    .restart local v1    # "child":Landroid/view/View;
    :cond_2
    move v0, v4

    .line 2883
    goto :goto_1
.end method

.method private canScrollUp()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2860
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    if-lez v4, :cond_1

    move v0, v2

    .line 2863
    .local v0, "canScrollUp":Z
    :goto_0
    if-nez v0, :cond_0

    .line 2864
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 2865
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2866
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_2

    move v0, v2

    .line 2870
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    return v0

    .end local v0    # "canScrollUp":Z
    :cond_1
    move v0, v3

    .line 2860
    goto :goto_0

    .restart local v0    # "canScrollUp":Z
    .restart local v1    # "child":Landroid/view/View;
    :cond_2
    move v0, v3

    .line 2866
    goto :goto_1
.end method

.method private clearScrollingCache()V
    .locals 1

    .prologue
    .line 7053
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7054
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 7055
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$9;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 7071
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 7073
    :cond_1
    return-void
.end method

.method private contentFits()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1750
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v0

    .line 1751
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 1758
    :cond_0
    :goto_0
    return v1

    .line 1754
    :cond_1
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    if-eq v0, v3, :cond_2

    move v1, v2

    .line 1755
    goto :goto_0

    .line 1758
    :cond_2
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v3, v4, :cond_3

    add-int/lit8 v3, v0, -0x1

    .line 1759
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 7045
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7046
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 7047
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 7048
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCachingActive:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCachingStarted:Z

    .line 7050
    :cond_0
    return-void
.end method

.method private createTextFilter(Z)V
    .locals 4
    .param p1, "animateEntrance"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 8106
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 8107
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 8108
    .local v0, "p":Landroid/widget/PopupWindow;
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 8109
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 8110
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 8111
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 8112
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 8113
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 8114
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8115
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 8116
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8117
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 8119
    .end local v0    # "p":Landroid/widget/PopupWindow;
    :cond_0
    return-void
.end method

.method private dismissPopup()V
    .locals 1

    .prologue
    .line 7725
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 7726
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 7728
    :cond_0
    return-void
.end method

.method private doScrollToBottomEnd()V
    .locals 1

    .prologue
    .line 9933
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCScrollDirection:I

    .line 9934
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCScrollFrom:I

    .line 9935
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCScrollTo:I

    .line 9936
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCScrollNext:I

    .line 9937
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCScrollingCount:I

    .line 9939
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-nez v0, :cond_0

    .line 9940
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 9943
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 9944
    return-void
.end method

.method private doScrollToTopEnd()V
    .locals 1

    .prologue
    .line 9919
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCScrollDirection:I

    .line 9920
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCScrollFrom:I

    .line 9921
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCScrollTo:I

    .line 9922
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCScrollNext:I

    .line 9923
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCScrollingCount:I

    .line 9925
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-nez v0, :cond_0

    .line 9926
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 9929
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 9930
    return-void
.end method

.method private drawGoToTop(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 9716
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getScrollY()I

    move-result v1

    .line 9717
    .local v1, "scrollY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 9719
    .local v0, "restoreCount":I
    const/4 v2, 0x0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9721
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canScrollUp()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopState:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 9722
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 9723
    const-string v2, "SeslAbsListView"

    const-string v3, " remove GoToTop EdgeTop is running"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9724
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setupGoToTop(I)V

    .line 9727
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 9728
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 9730
    return-void
.end method

.method private drawQuickController(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 9840
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCstate:I

    if-eq v2, v4, :cond_0

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCstate:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 9841
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getScrollY()I

    move-result v1

    .line 9842
    .local v1, "scrollY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 9843
    .local v0, "restoreCount":I
    int-to-float v2, v1

    invoke-virtual {p1, v6, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9845
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCstate:I

    if-ne v2, v4, :cond_3

    .line 9846
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsQCBtnFadeInSet:Z

    if-eqz v2, :cond_1

    .line 9847
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 9848
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCBtnFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 9849
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsQCBtnFadeInSet:Z

    .line 9851
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 9856
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 9858
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsQCShown:Z

    .line 9859
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsQCBtnFadeOutSet:Z

    .line 9872
    .end local v0    # "restoreCount":I
    .end local v1    # "scrollY":I
    :cond_2
    :goto_1
    return-void

    .line 9853
    .restart local v0    # "restoreCount":I
    .restart local v1    # "scrollY":I
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 9860
    .end local v0    # "restoreCount":I
    .end local v1    # "scrollY":I
    :cond_4
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsQCShown:Z

    if-eqz v2, :cond_2

    .line 9861
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getScrollY()I

    move-result v1

    .line 9862
    .restart local v1    # "scrollY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 9863
    .restart local v0    # "restoreCount":I
    int-to-float v2, v1

    invoke-virtual {p1, v6, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9864
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsQCBtnFadeOutSet:Z

    if-eqz v2, :cond_5

    .line 9865
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCBtnFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 9866
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsQCBtnFadeOutSet:Z

    .line 9868
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 9869
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 9870
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsQCBtnFadeInSet:Z

    goto :goto_1
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3414
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3415
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3416
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3417
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3421
    .end local v2    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsMultiFocusEnabled:Z

    if-eqz v4, :cond_2

    .line 3422
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 3423
    .local v3, "tempSelectorRect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPressItemListArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3424
    .local v1, "selectedPosition":I
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    sub-int v4, v1, v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3426
    .local v0, "selectedChild":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 3427
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v3, v4, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 3428
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3429
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 3434
    .end local v0    # "selectedChild":Landroid/view/View;
    .end local v1    # "selectedPosition":I
    .end local v3    # "tempSelectorRect":Landroid/graphics/Rect;
    :cond_2
    return-void
.end method

.method private finishGlows()V
    .locals 1

    .prologue
    .line 8343
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 8344
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 8345
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 8347
    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8
    .param p0, "source"    # Landroid/graphics/Rect;
    .param p1, "dest"    # Landroid/graphics/Rect;
    .param p2, "direction"    # I

    .prologue
    .line 7771
    sparse-switch p2, :sswitch_data_0

    .line 7804
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 7773
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 7774
    .local v4, "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 7775
    .local v5, "sY":I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 7776
    .local v0, "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 7808
    .local v1, "dY":I
    :goto_0
    sub-int v2, v0, v4

    .line 7809
    .local v2, "deltaX":I
    sub-int v3, v1, v5

    .line 7810
    .local v3, "deltaY":I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 7779
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v2    # "deltaX":I
    .end local v3    # "deltaY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_1
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 7780
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 7781
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 7782
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 7783
    .restart local v1    # "dY":I
    goto :goto_0

    .line 7785
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 7786
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 7787
    .restart local v5    # "sY":I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 7788
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 7789
    .restart local v1    # "dY":I
    goto :goto_0

    .line 7791
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_3
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 7792
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 7793
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 7794
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 7795
    .restart local v1    # "dY":I
    goto :goto_0

    .line 7798
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_4
    iget v6, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 7799
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 7800
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 7801
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 7802
    .restart local v1    # "dY":I
    goto :goto_0

    .line 7771
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private getDrawableStateForSelector()[I
    .locals 6

    .prologue
    .line 3576
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    .line 3578
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getDrawableState()[I

    move-result-object v3

    .line 3606
    :cond_0
    :goto_0
    return-object v3

    .line 3584
    :cond_1
    sget-object v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 3590
    .local v1, "enabledState":I
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 3592
    .local v3, "state":[I
    const/4 v0, -0x1

    .line 3593
    .local v0, "enabledPos":I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 3594
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 3595
    move v0, v2

    .line 3601
    :cond_2
    if-ltz v0, :cond_0

    .line 3602
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 3593
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method private getTextFilterInput()Landroid/widget/EditText;
    .locals 3

    .prologue
    .line 8122
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-nez v1, :cond_0

    .line 8123
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 8124
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/samsung/android/support/sesl/R$layout;->sesl_typing_filter:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 8129
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 8131
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 8132
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 8134
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTextFilter:Landroid/widget/EditText;

    return-object v1
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 9207
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v4

    .line 9211
    .local v4, "childCount":I
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 9415
    :cond_0
    :goto_0
    return-void

    .line 9213
    :pswitch_0
    const/4 v9, 0x0

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCstate:I

    .line 9214
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 9217
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverRecognitionCurrentTime:J

    .line 9218
    iget-wide v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverRecognitionCurrentTime:J

    iget-wide v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverRecognitionStartTime:J

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    iput-wide v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverRecognitionDurationTime:J

    .line 9220
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsPenHovered:Z

    if-eqz v9, :cond_1

    iget-wide v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverRecognitionCurrentTime:J

    iget-wide v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollStartTime:J

    sub-long/2addr v10, v12

    iget-wide v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollTimeInterval:J

    cmp-long v9, v10, v12

    if-ltz v9, :cond_0

    :cond_1
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsPenPressed:Z

    if-eqz v9, :cond_2

    iget-wide v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverRecognitionCurrentTime:J

    iget-wide v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollStartTime:J

    sub-long/2addr v10, v12

    iget-wide v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPenDragScrollTimeInterval:J

    cmp-long v9, v10, v12

    if-ltz v9, :cond_0

    .line 9227
    :cond_2
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsPenHovered:Z

    if-eqz v9, :cond_4

    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsSendHoverScrollState:Z

    if-nez v9, :cond_4

    .line 9228
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnScrollListener;

    if-eqz v9, :cond_3

    .line 9229
    const/4 v9, 0x1

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollStateForListener:I

    .line 9230
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnScrollListener;

    const/4 v10, 0x1

    invoke-interface {v9, p0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;I)V

    .line 9232
    :cond_3
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsSendHoverScrollState:Z

    .line 9236
    :cond_4
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    add-int/2addr v9, v4

    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    if-ge v9, v10, :cond_f

    const/4 v1, 0x1

    .line 9238
    .local v1, "canScrollDown":Z
    :goto_1
    if-nez v1, :cond_6

    if-lez v4, :cond_6

    .line 9239
    add-int/lit8 v9, v4, -0x1

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 9240
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getBottom()I

    move-result v10

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    if-gt v9, v10, :cond_5

    .line 9241
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v10

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    if-le v9, v10, :cond_10

    :cond_5
    const/4 v1, 0x1

    .line 9245
    .end local v3    # "child":Landroid/view/View;
    :cond_6
    :goto_2
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    if-lez v9, :cond_11

    const/4 v2, 0x1

    .line 9247
    .local v2, "canScrollUp":Z
    :goto_3
    if-nez v2, :cond_7

    .line 9248
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_7

    .line 9249
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 9250
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    if-ge v9, v10, :cond_12

    const/4 v2, 0x1

    .line 9254
    .end local v3    # "child":Landroid/view/View;
    :cond_7
    :goto_4
    const/4 v9, 0x1

    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollSpeed:F

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mContext:Landroid/content/Context;

    .line 9255
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    .line 9254
    invoke-static {v9, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-int v6, v9

    .line 9257
    .local v6, "hoverScrollSpeed":I
    iget-wide v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v12, 0x2

    cmp-long v9, v10, v12

    if-lez v9, :cond_13

    iget-wide v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v12, 0x4

    cmp-long v9, v10, v12

    if-gez v9, :cond_13

    .line 9258
    int-to-double v10, v6

    const-wide v12, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v10, v12

    double-to-int v9, v10

    add-int/2addr v6, v9

    .line 9266
    :cond_8
    :goto_5
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollDirection:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_15

    .line 9267
    mul-int/lit8 v7, v6, -0x1

    .line 9268
    .local v7, "offset":I
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTrackedChild:Landroid/view/View;

    if-nez v9, :cond_9

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCloseChildByBottom:Landroid/view/View;

    if-nez v9, :cond_a

    :cond_9
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOldHoverScrollDirection:I

    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollDirection:I

    if-eq v9, v10, :cond_b

    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsCloseChildSetted:Z

    if-eqz v9, :cond_b

    .line 9269
    :cond_a
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCloseChildByBottom:Landroid/view/View;

    iput-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTrackedChild:Landroid/view/View;

    .line 9270
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDistanceFromCloseChildBottom:I

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDistanceFromTrackedChildTop:I

    .line 9271
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCloseChildPositionByBottom:I

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTrackedChildPosition:I

    .line 9272
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollDirection:I

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOldHoverScrollDirection:I

    .line 9273
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsCloseChildSetted:Z

    .line 9286
    :cond_b
    :goto_6
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 9290
    if-gez v7, :cond_c

    if-nez v2, :cond_d

    :cond_c
    if-lez v7, :cond_18

    if-eqz v1, :cond_18

    .line 9291
    :cond_d
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    if-nez v9, :cond_e

    .line 9292
    new-instance v9, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    invoke-direct {v9, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    iput-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    .line 9294
    :cond_e
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    const/4 v10, 0x1

    invoke-virtual {v9, v7, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->start(IZ)V

    .line 9295
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->reportScrollStateChange(I)V

    .line 9297
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    const/4 v10, 0x1

    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollDelay:I

    int-to-long v12, v11

    invoke-virtual {v9, v10, v12, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 9236
    .end local v1    # "canScrollDown":Z
    .end local v2    # "canScrollUp":Z
    .end local v6    # "hoverScrollSpeed":I
    .end local v7    # "offset":I
    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 9241
    .restart local v1    # "canScrollDown":Z
    .restart local v3    # "child":Landroid/view/View;
    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 9245
    .end local v3    # "child":Landroid/view/View;
    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 9250
    .restart local v2    # "canScrollUp":Z
    .restart local v3    # "child":Landroid/view/View;
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 9259
    .end local v3    # "child":Landroid/view/View;
    .restart local v6    # "hoverScrollSpeed":I
    :cond_13
    iget-wide v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v12, 0x4

    cmp-long v9, v10, v12

    if-ltz v9, :cond_14

    iget-wide v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v12, 0x5

    cmp-long v9, v10, v12

    if-gez v9, :cond_14

    .line 9260
    int-to-double v10, v6

    const-wide v12, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v10, v12

    double-to-int v9, v10

    add-int/2addr v6, v9

    goto/16 :goto_5

    .line 9261
    :cond_14
    iget-wide v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v12, 0x5

    cmp-long v9, v10, v12

    if-ltz v9, :cond_8

    .line 9262
    int-to-double v10, v6

    const-wide v12, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v10, v12

    double-to-int v9, v10

    add-int/2addr v6, v9

    goto/16 :goto_5

    .line 9276
    :cond_15
    mul-int/lit8 v7, v6, 0x1

    .line 9277
    .restart local v7    # "offset":I
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTrackedChild:Landroid/view/View;

    if-nez v9, :cond_16

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCloseChildByTop:Landroid/view/View;

    if-nez v9, :cond_17

    :cond_16
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOldHoverScrollDirection:I

    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollDirection:I

    if-eq v9, v10, :cond_b

    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsCloseChildSetted:Z

    if-eqz v9, :cond_b

    .line 9278
    :cond_17
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCloseChildByTop:Landroid/view/View;

    iput-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTrackedChild:Landroid/view/View;

    .line 9279
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDistanceFromCloseChildTop:I

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDistanceFromTrackedChildTop:I

    .line 9280
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCloseChildPositionByTop:I

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTrackedChildPosition:I

    .line 9281
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollDirection:I

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOldHoverScrollDirection:I

    .line 9282
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsCloseChildSetted:Z

    goto/16 :goto_6

    .line 9300
    :cond_18
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getOverScrollMode()I

    move-result v8

    .line 9301
    .local v8, "overscrollMode":I
    if-eqz v8, :cond_19

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1e

    .line 9302
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->contentFits()Z

    move-result v9

    if-nez v9, :cond_1e

    :cond_19
    const/4 v0, 0x1

    .line 9304
    .local v0, "canOverscroll":Z
    :goto_7
    if-eqz v0, :cond_1d

    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsHoverOverscrolled:Z

    if-nez v9, :cond_1d

    .line 9305
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollDirection:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1f

    .line 9306
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 9307
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 9308
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-nez v9, :cond_1a

    .line 9309
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 9321
    :cond_1a
    :goto_8
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v9, :cond_1c

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-eqz v9, :cond_1b

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-nez v9, :cond_1c

    .line 9322
    :cond_1b
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->invalidate()V

    .line 9325
    :cond_1c
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsHoverOverscrolled:Z

    .line 9328
    :cond_1d
    if-nez v0, :cond_0

    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsHoverOverscrolled:Z

    if-nez v9, :cond_0

    .line 9329
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    .line 9302
    .end local v0    # "canOverscroll":Z
    :cond_1e
    const/4 v0, 0x0

    goto :goto_7

    .line 9311
    .restart local v0    # "canOverscroll":Z
    :cond_1f
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollDirection:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1a

    .line 9312
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 9313
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 9314
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setupGoToTop(I)V

    .line 9315
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->autoHide(I)V

    .line 9316
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-nez v9, :cond_1a

    .line 9317
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_8

    .line 9335
    .end local v0    # "canOverscroll":Z
    .end local v1    # "canScrollDown":Z
    .end local v2    # "canScrollUp":Z
    .end local v6    # "hoverScrollSpeed":I
    .end local v7    # "offset":I
    .end local v8    # "overscrollMode":I
    :pswitch_2
    add-int/lit8 v9, v4, -0x1

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 9340
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    add-int/2addr v9, v4

    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    if-ge v9, v10, :cond_26

    const/4 v1, 0x1

    .line 9342
    .restart local v1    # "canScrollDown":Z
    :goto_9
    if-nez v1, :cond_21

    if-lez v4, :cond_21

    .line 9343
    add-int/lit8 v9, v4, -0x1

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 9344
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getBottom()I

    move-result v10

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    if-gt v9, v10, :cond_20

    .line 9345
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v10

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    if-le v9, v10, :cond_27

    :cond_20
    const/4 v1, 0x1

    .line 9349
    .end local v3    # "child":Landroid/view/View;
    :cond_21
    :goto_a
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    if-lez v9, :cond_28

    const/4 v2, 0x1

    .line 9351
    .restart local v2    # "canScrollUp":Z
    :goto_b
    if-nez v2, :cond_22

    .line 9352
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_22

    .line 9353
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 9354
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    if-ge v9, v10, :cond_29

    const/4 v2, 0x1

    .line 9358
    .end local v3    # "child":Landroid/view/View;
    :cond_22
    :goto_c
    const/4 v9, 0x1

    const v10, 0x453b8000    # 3000.0f

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mContext:Landroid/content/Context;

    .line 9359
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    .line 9358
    invoke-static {v9, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-int v6, v9

    .line 9361
    .restart local v6    # "hoverScrollSpeed":I
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCLocation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2a

    neg-int v5, v6

    .line 9362
    .local v5, "distanceToMove":I
    :goto_d
    if-gez v5, :cond_23

    if-nez v2, :cond_24

    :cond_23
    if-lez v5, :cond_2b

    if-eqz v1, :cond_2b

    .line 9363
    :cond_24
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    if-nez v9, :cond_25

    .line 9364
    new-instance v9, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    invoke-direct {v9, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    iput-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    .line 9366
    :cond_25
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    const/4 v10, 0x1

    invoke-virtual {v9, v5, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->start(IZ)V

    .line 9367
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->reportScrollStateChange(I)V

    .line 9369
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    const/4 v10, 0x2

    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollDelay:I

    int-to-long v12, v11

    invoke-virtual {v9, v10, v12, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 9340
    .end local v1    # "canScrollDown":Z
    .end local v2    # "canScrollUp":Z
    .end local v5    # "distanceToMove":I
    .end local v6    # "hoverScrollSpeed":I
    :cond_26
    const/4 v1, 0x0

    goto/16 :goto_9

    .line 9345
    .restart local v1    # "canScrollDown":Z
    .restart local v3    # "child":Landroid/view/View;
    :cond_27
    const/4 v1, 0x0

    goto :goto_a

    .line 9349
    .end local v3    # "child":Landroid/view/View;
    :cond_28
    const/4 v2, 0x0

    goto :goto_b

    .line 9354
    .restart local v2    # "canScrollUp":Z
    .restart local v3    # "child":Landroid/view/View;
    :cond_29
    const/4 v2, 0x0

    goto :goto_c

    .end local v3    # "child":Landroid/view/View;
    .restart local v6    # "hoverScrollSpeed":I
    :cond_2a
    move v5, v6

    .line 9361
    goto :goto_d

    .line 9372
    .restart local v5    # "distanceToMove":I
    :cond_2b
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getOverScrollMode()I

    move-result v8

    .line 9373
    .restart local v8    # "overscrollMode":I
    if-eqz v8, :cond_2c

    const/4 v9, 0x1

    if-ne v8, v9, :cond_31

    .line 9374
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->contentFits()Z

    move-result v9

    if-nez v9, :cond_31

    :cond_2c
    const/4 v0, 0x1

    .line 9376
    .restart local v0    # "canOverscroll":Z
    :goto_e
    if-eqz v0, :cond_30

    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsHoverOverscrolled:Z

    if-nez v9, :cond_30

    .line 9377
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCLocation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_32

    .line 9378
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 9379
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 9380
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-nez v9, :cond_2d

    .line 9381
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 9391
    :cond_2d
    :goto_f
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v9, :cond_2f

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-eqz v9, :cond_2e

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-nez v9, :cond_2f

    .line 9392
    :cond_2e
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->invalidate()V

    .line 9395
    :cond_2f
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsHoverOverscrolled:Z

    .line 9398
    :cond_30
    if-nez v0, :cond_0

    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsHoverOverscrolled:Z

    if-nez v9, :cond_0

    .line 9399
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    .line 9374
    .end local v0    # "canOverscroll":Z
    :cond_31
    const/4 v0, 0x0

    goto :goto_e

    .line 9383
    .restart local v0    # "canOverscroll":Z
    :cond_32
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCLocation:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_2d

    .line 9384
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 9385
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 9386
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-nez v9, :cond_2d

    .line 9387
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_f

    .line 9405
    .end local v0    # "canOverscroll":Z
    .end local v1    # "canScrollDown":Z
    .end local v2    # "canScrollUp":Z
    .end local v5    # "distanceToMove":I
    .end local v6    # "hoverScrollSpeed":I
    .end local v8    # "overscrollMode":I
    :pswitch_3
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCLocation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_33

    .line 9406
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->doScrollToTopEnd()V

    goto/16 :goto_0

    .line 9407
    :cond_33
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCLocation:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_0

    .line 9408
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->doScrollToBottomEnd()V

    goto/16 :goto_0

    .line 9211
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initAbsListView()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 1175
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mInitAbsListView:Z

    .line 1176
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setClickable(Z)V

    .line 1177
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setFocusableInTouchMode(Z)V

    .line 1178
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setWillNotDraw(Z)V

    .line 1179
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 1180
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setScrollingCacheEnabled(Z)V

    .line 1182
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 1183
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1184
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchSlop:I

    .line 1185
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMinimumVelocity:I

    .line 1186
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMaximumVelocity:I

    .line 1187
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOverscrollDistance:I

    .line 1188
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOverflingDistance:I

    .line 1190
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDensityScale:F

    .line 1194
    .end local v0    # "configuration":Landroid/view/ViewConfiguration;
    :cond_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 1195
    .local v2, "value":Landroid/util/TypedValue;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_2

    .line 1196
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/sesl/R$attr;->seslListMultiSelectBackground:I

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    .line 1198
    .local v1, "resolved":Z
    if-eqz v1, :cond_1

    .line 1199
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mContext:Landroid/content/Context;

    .line 1200
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    .line 1203
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/sesl/R$attr;->seslDragBlockImage:I

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    .line 1205
    if-eqz v1, :cond_2

    .line 1206
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mContext:Landroid/content/Context;

    .line 1207
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockImage:Landroid/graphics/drawable/Drawable;

    .line 1211
    .end local v1    # "resolved":Z
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/support/sesl/R$drawable;->sesl_list_go_to_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    .line 1212
    return-void
.end method

.method private initGoToTop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9602
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopRect:Landroid/graphics/Rect;

    .line 9603
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopState:I

    if-eqz v0, :cond_0

    .line 9604
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9606
    :cond_0
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopState:I

    .line 9607
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopLastState:I

    .line 9608
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mShowGTPAtFirstTime:Z

    .line 9609
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mShowFadeOutGTP:I

    .line 9610
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9611
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToToFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9612
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9614
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 6265
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 6266
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6270
    :goto_0
    return-void

    .line 6268
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 6273
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 6274
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6276
    :cond_0
    return-void
.end method

.method private invalidateBottomGlow()V
    .locals 6

    .prologue
    .line 4564
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    if-nez v4, :cond_0

    .line 4572
    :goto_0
    return-void

    .line 4567
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getClipToPadding()Z

    move-result v1

    .line 4568
    .local v1, "clipToPadding":Z
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 4569
    .local v0, "bottom":I
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingLeft()I

    move-result v2

    .line 4570
    .local v2, "left":I
    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingRight()I

    move-result v5

    sub-int v3, v4, v5

    .line 4571
    .local v3, "right":I
    :goto_3
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {p0, v2, v4, v3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->invalidate(IIII)V

    goto :goto_0

    .line 4568
    .end local v0    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v0

    goto :goto_1

    .line 4569
    .restart local v0    # "bottom":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 4570
    .restart local v2    # "left":I
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getWidth()I

    move-result v3

    goto :goto_3
.end method

.method private invalidateTopGlow()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 4553
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v4, :cond_0

    .line 4561
    :goto_0
    return-void

    .line 4556
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getClipToPadding()Z

    move-result v0

    .line 4557
    .local v0, "clipToPadding":Z
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingTop()I

    move-result v3

    .line 4558
    .local v3, "top":I
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingLeft()I

    move-result v1

    .line 4559
    .local v1, "left":I
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 4560
    .local v2, "right":I
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v1, v3, v2, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->invalidate(IIII)V

    goto :goto_0

    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v3    # "top":I
    :cond_2
    move v3, v1

    .line 4557
    goto :goto_1

    .line 4559
    .restart local v1    # "left":I
    .restart local v3    # "top":I
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getWidth()I

    move-result v2

    goto :goto_2
.end method

.method private isInDialog()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 10586
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mRootViewCheckForDialog:Landroid/view/View;

    if-nez v3, :cond_0

    .line 10587
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getRootView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mRootViewCheckForDialog:Landroid/view/View;

    .line 10588
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mRootViewCheckForDialog:Landroid/view/View;

    if-nez v3, :cond_1

    .line 10599
    :cond_0
    :goto_0
    return v1

    .line 10591
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mRootViewCheckForDialog:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 10592
    .local v0, "context":Landroid/content/Context;
    instance-of v3, v0, Landroid/app/Activity;

    if-eqz v3, :cond_2

    check-cast v0, Landroid/app/Activity;

    .line 10593
    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v3, v2, :cond_0

    :cond_2
    move v1, v2

    .line 10596
    goto :goto_0
.end method

.method private isOwnerThread()Z
    .locals 2

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOwnerThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isQCSupported()Z
    .locals 1

    .prologue
    .line 9598
    const/4 v0, 0x0

    return v0
.end method

.method private isSupportGotoTop()Z
    .locals 1

    .prologue
    .line 5112
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isTalkBackIsRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEnableGoToTop:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTalkBackIsRunning()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 5100
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mContext:Landroid/content/Context;

    const-string v3, "accessibility"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5101
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "enabled_accessibility_services"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5103
    .local v0, "enabledServices":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "(?i).*TalkBackService.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 5105
    .end local v0    # "enabledServices":Ljava/lang/String;
    :goto_0
    return v1

    .restart local v0    # "enabledServices":Ljava/lang/String;
    :cond_0
    move v1, v2

    .line 5103
    goto :goto_0

    .end local v0    # "enabledServices":Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 5105
    goto :goto_0
.end method

.method private notifyMultiSelectState(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1528
    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsShiftkeyPressed:Z

    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsCtrlkeyPressed:Z

    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsPenPressed:Z

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-super/range {v1 .. v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->notifyMultiSelectedState(Landroid/view/View;IJZZZ)Z

    move-result v0

    return v0
.end method

.method private notifyMultiSelectedStopInternal(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 4308
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->notifyMultiSelectedStop(II)V

    .line 4309
    return-void
.end method

.method private onHoverDrawableState(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6049
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 6050
    .local v0, "action":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    .line 6053
    .local v1, "toolType":I
    packed-switch v0, :pswitch_data_0

    .line 6066
    :cond_0
    :goto_0
    :pswitch_0
    if-eq v1, v2, :cond_3

    .line 6067
    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsHoveredByMouse:Z

    .line 6090
    :cond_1
    :goto_2
    return-void

    .line 6056
    :pswitch_1
    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 6057
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsPenHovered:Z

    goto :goto_0

    .line 6061
    :pswitch_2
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsPenHovered:Z

    goto :goto_0

    :cond_2
    move v2, v3

    .line 6067
    goto :goto_1

    .line 6070
    :cond_3
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsHoveredByMouse:Z

    .line 6073
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAlwaysDisableHoverHighlight:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverAreaEnter:Z

    if-nez v2, :cond_1

    .line 6078
    const/16 v2, 0x9

    if-ne v0, v2, :cond_4

    .line 6079
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsPenHovered:Z

    if-nez v2, :cond_1

    .line 6080
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2

    .line 6085
    :cond_4
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsPenHovered:Z

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isInDialog()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6086
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 6087
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2

    .line 6053
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 6401
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v2, v4, 0x8

    .line 6403
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 6404
    .local v1, "pointerId":I
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mActivePointerId:I

    if-ne v1, v4, :cond_0

    .line 6408
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 6409
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionX:I

    .line 6410
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionY:I

    .line 6411
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionCorrection:I

    .line 6412
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mActivePointerId:I

    .line 6418
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionY:I

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLastY:I

    .line 6420
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    :cond_1
    move v0, v3

    .line 6408
    goto :goto_0
.end method

.method private onTouchCancel()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 5956
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    packed-switch v1, :pswitch_data_0

    .line 5969
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    .line 5970
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setPressed(Z)V

    .line 5971
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionPosition:I

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5972
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 5973
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 5975
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->clearScrollingCache()V

    .line 5976
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingCheckForLongPress:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForLongPress;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5977
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->recycleVelocityTracker()V

    .line 5980
    .end local v0    # "motionView":Landroid/view/View;
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    .line 5981
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 5982
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 5984
    :cond_1
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mActivePointerId:I

    .line 5985
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPointerCount:I

    .line 5986
    return-void

    .line 5958
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    if-nez v1, :cond_2

    .line 5959
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    .line 5961
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->startSpringback()V

    goto :goto_0

    .line 5956
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onTouchDown(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    .line 5670
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mActivePointerId:I

    .line 5671
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPointerCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPointerCount:I

    .line 5673
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_2

    .line 5675
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->endFling()V

    .line 5676
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    if-eqz v5, :cond_0

    .line 5677
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;->stop()V

    .line 5679
    :cond_0
    const/4 v5, 0x5

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    .line 5680
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionX:I

    .line 5681
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionY:I

    .line 5682
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionY:I

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLastY:I

    .line 5683
    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionCorrection:I

    .line 5684
    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDirection:I

    .line 5728
    :goto_0
    invoke-static {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->performButtonActionOnTouchDown(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    .line 5729
    .local v1, "performButtonActionOnTouchDown":Z
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    if-nez v5, :cond_1

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionPosition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    if-eqz v1, :cond_1

    .line 5731
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingCheckForTap:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5733
    :cond_1
    return-void

    .line 5686
    .end local v1    # "performButtonActionOnTouchDown":Z
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 5687
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 5688
    .local v4, "y":I
    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->pointToPosition(II)I

    move-result v0

    .line 5690
    .local v0, "motionPosition":I
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDataChanged:Z

    if-nez v5, :cond_3

    .line 5691
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    .line 5693
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->createScrollingCache()V

    .line 5694
    const/4 v5, 0x3

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    .line 5695
    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionCorrection:I

    .line 5696
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->findMotionRow(I)I

    move-result v0

    .line 5697
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->flywheelTouch()V

    .line 5715
    :cond_3
    :goto_1
    if-ltz v0, :cond_4

    .line 5717
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    sub-int v5, v0, v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5718
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionViewOriginalTop:I

    .line 5721
    .end local v2    # "v":Landroid/view/View;
    :cond_4
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionX:I

    .line 5722
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionY:I

    .line 5723
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionPosition:I

    .line 5724
    const/high16 v5, -0x80000000

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLastY:I

    goto :goto_0

    .line 5698
    :cond_5
    if-ltz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v5

    check-cast v5, Landroid/widget/ListAdapter;

    invoke-interface {v5, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5702
    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    .line 5705
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingCheckForTap:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;

    if-nez v5, :cond_6

    .line 5706
    new-instance v5, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$1;)V

    iput-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingCheckForTap:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;

    .line 5709
    :cond_6
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingCheckForTap:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, v5, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;->x:F

    .line 5710
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingCheckForTap:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, v5, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;->y:F

    .line 5711
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingCheckForTap:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 5736
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 5737
    .local v2, "pointerIndex":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    .line 5738
    const/4 v2, 0x0

    .line 5739
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mActivePointerId:I

    .line 5742
    :cond_0
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDataChanged:Z

    if-eqz v5, :cond_1

    .line 5745
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->layoutChildren()V

    .line 5748
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v4, v5

    .line 5750
    .local v4, "y":I
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    packed-switch v5, :pswitch_data_0

    .line 5786
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 5756
    :pswitch_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v5, v4, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 5761
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionPosition:I

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5762
    .local v0, "motionView":Landroid/view/View;
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 5763
    .local v3, "x":F
    int-to-float v5, v4

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchSlop:I

    int-to-float v6, v6

    invoke-direct {p0, v3, v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->pointInView(FFF)Z

    move-result v5

    if-nez v5, :cond_5

    .line 5764
    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setPressed(Z)V

    .line 5765
    if-eqz v0, :cond_3

    .line 5766
    invoke-virtual {v0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 5768
    :cond_3
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingCheckForTap:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;

    :goto_1
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5770
    const/4 v5, 0x2

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    .line 5771
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->updateSelectorState()V

    goto :goto_0

    .line 5768
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingCheckForLongPress:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForLongPress;

    goto :goto_1

    .line 5772
    :cond_5
    if-eqz v0, :cond_2

    .line 5774
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTmpPoint:[F

    .line 5775
    .local v1, "point":[F
    aput v3, v1, v7

    .line 5776
    int-to-float v5, v4

    aput v5, v1, v8

    .line 5777
    invoke-static {p0, v1, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->transformPointToViewLocal(Landroid/view/ViewGroup;[FLandroid/view/View;)V

    .line 5778
    aget v5, v1, v7

    aget v6, v1, v8

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->drawableHotspotChanged(FF)V

    goto :goto_0

    .line 5783
    .end local v0    # "motionView":Landroid/view/View;
    .end local v1    # "point":[F
    .end local v3    # "x":F
    :pswitch_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v5, v4, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    goto :goto_0

    .line 5750
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onTouchUp(Landroid/view/MotionEvent;)V
    .locals 22
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 5789
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 5932
    :cond_0
    :goto_0
    :pswitch_0
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setPressed(Z)V

    .line 5934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 5935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 5936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 5940
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->invalidate()V

    .line 5941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingCheckForLongPress:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForLongPress;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5942
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->recycleVelocityTracker()V

    .line 5944
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mActivePointerId:I

    .line 5945
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPointerCount:I

    .line 5953
    :cond_2
    :goto_1
    return-void

    .line 5793
    :pswitch_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionPosition:I

    .line 5794
    .local v14, "motionPosition":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    move/from16 v18, v0

    sub-int v18, v14, v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5795
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_e

    .line 5796
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 5797
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 5800
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    .line 5801
    .local v17, "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v18, v17, v18

    if-lez v18, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getWidth()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v18, v17, v18

    if-gez v18, :cond_9

    const/4 v11, 0x1

    .line 5802
    .local v11, "inList":Z
    :goto_2
    if-eqz v11, :cond_e

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v18

    if-nez v18, :cond_e

    .line 5803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPerformClick:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;

    move-object/from16 v18, v0

    if-nez v18, :cond_4

    .line 5804
    new-instance v18, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$1;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPerformClick:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;

    .line 5807
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPerformClick:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;

    .line 5808
    .local v15, "performClick":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;
    iput v14, v15, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;->mClickMotionPosition:I

    .line 5809
    invoke-virtual {v15}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 5811
    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mResurrectToPosition:I

    .line 5813
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    move/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 5814
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    move/from16 v18, v0

    if-nez v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingCheckForTap:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;

    move-object/from16 v18, v0

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5816
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLayoutMode:I

    .line 5817
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDataChanged:Z

    move/from16 v18, v0

    if-nez v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 5818
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    .line 5819
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setSelectedPositionInt(I)V

    .line 5820
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->layoutChildren()V

    .line 5821
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 5822
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionPosition:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 5823
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setPressed(Z)V

    .line 5824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    .line 5825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 5826
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_6

    instance-of v0, v8, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 5827
    check-cast v8, Landroid/graphics/drawable/TransitionDrawable;

    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 5829
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 5831
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 5832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5834
    :cond_8
    new-instance v18, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$7;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$7;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 5846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    .line 5847
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    .line 5846
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 5801
    .end local v11    # "inList":Z
    .end local v15    # "performClick":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 5814
    .restart local v11    # "inList":Z
    .restart local v15    # "performClick":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingCheckForLongPress:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForLongPress;

    move-object/from16 v18, v0

    goto/16 :goto_3

    .line 5849
    :cond_b
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    .line 5850
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->updateSelectorState()V

    .line 5851
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mForcedClick:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 5852
    invoke-virtual {v15}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;->run()V

    goto/16 :goto_1

    .line 5856
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mForcedClick:Z

    move/from16 v18, v0

    if-nez v18, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDataChanged:Z

    move/from16 v18, v0

    if-nez v18, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 5857
    invoke-virtual {v15}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;->run()V

    .line 5861
    .end local v11    # "inList":Z
    .end local v15    # "performClick":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;
    .end local v17    # "x":F
    :cond_e
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    .line 5862
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->updateSelectorState()V

    goto/16 :goto_0

    .line 5865
    .end local v4    # "child":Landroid/view/View;
    .end local v14    # "motionPosition":I
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v5

    .line 5866
    .local v5, "childCount":I
    if-lez v5, :cond_16

    .line 5867
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v9

    .line 5868
    .local v9, "firstChildTop":I
    add-int/lit8 v18, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getBottom()I

    move-result v13

    .line 5869
    .local v13, "lastChildBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 5870
    .local v7, "contentTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v6, v18, v19

    .line 5871
    .local v6, "contentBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    move/from16 v18, v0

    if-nez v18, :cond_f

    if-lt v9, v7, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    move/from16 v18, v0

    add-int v18, v18, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_f

    .line 5873
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v18

    sub-int v18, v18, v6

    move/from16 v0, v18

    if-gt v13, v0, :cond_f

    .line 5874
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    .line 5875
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 5877
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    .line 5878
    .local v16, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v18, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMaximumVelocity:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 5880
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mActivePointerId:I

    move/from16 v18, v0

    .line 5881
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mVelocityScale:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v12, v0

    .line 5886
    .local v12, "initialVelocity":I
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMinimumVelocity:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_13

    const/4 v10, 0x1

    .line 5887
    .local v10, "flingVelocity":Z
    :goto_4
    if-eqz v10, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    move/from16 v18, v0

    if-nez v18, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOverscrollDistance:I

    move/from16 v18, v0

    sub-int v18, v7, v18

    move/from16 v0, v18

    if-eq v9, v0, :cond_14

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    move/from16 v18, v0

    add-int v18, v18, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOverscrollDistance:I

    move/from16 v18, v0

    add-int v18, v18, v6

    move/from16 v0, v18

    if-eq v13, v0, :cond_14

    .line 5892
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    move-object/from16 v18, v0

    if-nez v18, :cond_12

    .line 5893
    new-instance v18, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    .line 5895
    :cond_12
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->reportScrollStateChange(I)V

    .line 5896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    move-object/from16 v18, v0

    neg-int v0, v12

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_0

    .line 5886
    .end local v10    # "flingVelocity":Z
    :cond_13
    const/4 v10, 0x0

    goto :goto_4

    .line 5898
    .restart local v10    # "flingVelocity":Z
    :cond_14
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    .line 5899
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->reportScrollStateChange(I)V

    .line 5900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_15

    .line 5901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->endFling()V

    .line 5903
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 5904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;->stop()V

    goto/16 :goto_0

    .line 5909
    .end local v6    # "contentBottom":I
    .end local v7    # "contentTop":I
    .end local v9    # "firstChildTop":I
    .end local v10    # "flingVelocity":Z
    .end local v12    # "initialVelocity":I
    .end local v13    # "lastChildBottom":I
    .end local v16    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_16
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    .line 5910
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 5915
    .end local v5    # "childCount":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    move-object/from16 v18, v0

    if-nez v18, :cond_17

    .line 5916
    new-instance v18, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    .line 5918
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    .line 5919
    .restart local v16    # "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v18, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMaximumVelocity:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 5920
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mActivePointerId:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v12, v0

    .line 5922
    .restart local v12    # "initialVelocity":I
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->reportScrollStateChange(I)V

    .line 5923
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMinimumVelocity:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_18

    .line 5924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    move-object/from16 v18, v0

    neg-int v0, v12

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_0

    .line 5926
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_0

    .line 5789
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private performStylusButtonPressAction(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 3951
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v5, :cond_0

    .line 3952
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionPosition:I

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3953
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3954
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionPosition:I

    .line 3955
    .local v1, "longPressPosition":I
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionPosition:I

    invoke-interface {v5, v6}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 3956
    .local v2, "longPressId":J
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3957
    const/4 v5, -0x1

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    .line 3958
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setPressed(Z)V

    .line 3959
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 3960
    const/4 v4, 0x1

    .line 3964
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "longPressPosition":I
    .end local v2    # "longPressId":J
    :cond_0
    return v4
.end method

.method private playGotoToFadeIn()V
    .locals 2

    .prologue
    .line 9908
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9916
    :goto_0
    return-void

    .line 9911
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9912
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 9914
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 9915
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 9914
    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private playGotoToFadeOut()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 9897
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9905
    :goto_0
    return-void

    .line 9900
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9901
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 9903
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 9904
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private playQCBtnFadeIn()V
    .locals 2

    .prologue
    .line 9878
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9883
    :goto_0
    return-void

    .line 9881
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 9882
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 9881
    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private playQCBtnFadeOut()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 9886
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9891
    :goto_0
    return-void

    .line 9889
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 9890
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private pointInView(FFF)Z
    .locals 2
    .param p1, "localX"    # F
    .param p2, "localY"    # F
    .param p3, "slop"    # F

    .prologue
    .line 10580
    neg-float v0, p3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    neg-float v0, p3

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    .line 10581
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 10582
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 10580
    :goto_0
    return v0

    .line 10582
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private positionPopup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 7744
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 7745
    .local v1, "screenHeight":I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 7746
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getLocationOnScreen([I)V

    .line 7749
    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDensityScale:F

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 7750
    .local v0, "bottomGap":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 7751
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    aget v5, v2, v7

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 7756
    :goto_0
    return-void

    .line 7754
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v2, v7

    invoke-virtual {v3, v4, v0, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private positionSelector(ILandroid/view/View;ZFF)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "manageHotspot"    # Z
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    .line 3217
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectorPosition:I

    if-eq p1, v4, :cond_7

    const/4 v1, 0x1

    .line 3218
    .local v1, "positionChanged":Z
    :goto_0
    const/4 v4, -0x1

    if-eq p1, v4, :cond_0

    .line 3219
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectorPosition:I

    .line 3222
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3223
    .local v3, "selectorRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 3224
    instance-of v4, p2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SelectionBoundsAdjuster;

    if-eqz v4, :cond_1

    move-object v4, p2

    .line 3225
    check-cast v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SelectionBoundsAdjuster;

    invoke-interface {v4, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 3229
    :cond_1
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectionLeftPadding:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 3230
    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectionTopPadding:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 3231
    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectionRightPadding:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 3232
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectionBottomPadding:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 3233
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {p2}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->semGetExtraPaddingBottomForPreference(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 3236
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3237
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_5

    .line 3239
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->shouldShowSelector()Z

    move-result v4

    if-nez v4, :cond_2

    .line 3242
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 3243
    sget-object v4, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3245
    :cond_2
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3246
    if-eqz v1, :cond_4

    .line 3247
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 3248
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 3250
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->updateSelectorState()V

    .line 3252
    :cond_4
    if-eqz p3, :cond_5

    .line 3253
    invoke-virtual {v2, p4, p5}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 3256
    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsChildViewEnabled:Z

    .line 3257
    .local v0, "isChildViewEnabled":Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eq v4, v0, :cond_6

    .line 3258
    if-nez v0, :cond_8

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsChildViewEnabled:Z

    .line 3259
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getSelectedItemPosition()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    .line 3260
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->refreshDrawableState()V

    .line 3263
    :cond_6
    return-void

    .line 3217
    .end local v0    # "isChildViewEnabled":Z
    .end local v1    # "positionChanged":Z
    .end local v2    # "selector":Landroid/graphics/drawable/Drawable;
    .end local v3    # "selectorRect":Landroid/graphics/Rect;
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 3258
    .restart local v0    # "isChildViewEnabled":Z
    .restart local v1    # "positionChanged":Z
    .restart local v2    # "selector":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "selectorRect":Landroid/graphics/Rect;
    :cond_8
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private postOnJumpScrollToFinished()V
    .locals 1

    .prologue
    .line 6000
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$8;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6005
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 6279
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 6280
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 6281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6283
    :cond_0
    return-void
.end method

.method private releaseAllBoosters()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1077
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_0

    .line 1078
    invoke-static {v1}, Lcom/samsung/android/support/sesl/core/os/SeslDVFSHelperReflector;->onScrollEvent(Z)V

    .line 1079
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDVFSLockAcquired:Z

    .line 1081
    :cond_0
    return-void
.end method

.method private scrollIfNeeded(IILandroid/view/MotionEvent;)V
    .locals 36
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4360
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionY:I

    sub-int v33, p2, v3

    .line 4361
    .local v33, "rawDeltaY":I
    const/16 v35, 0x0

    .line 4362
    .local v35, "scrollOffsetCorrection":I
    const/16 v34, 0x0

    .line 4363
    .local v34, "scrollConsumedCorrection":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLastY:I

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_0

    .line 4364
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionCorrection:I

    sub-int v33, v33, v3

    .line 4366
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLastY:I

    const/high16 v5, -0x80000000

    if-eq v3, v5, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLastY:I

    sub-int v3, v3, p2

    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mScrollConsumed:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mScrollOffset:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4368
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mScrollConsumed:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    add-int v33, v33, v3

    .line 4369
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mScrollOffset:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    neg-int v0, v3

    move/from16 v35, v0

    .line 4370
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mScrollConsumed:[I

    const/4 v4, 0x1

    aget v34, v3, v4

    .line 4371
    if-eqz p3, :cond_1

    .line 4372
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4373
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mNestedYOffset:I

    .line 4376
    :cond_1
    move/from16 v20, v33

    .line 4377
    .local v20, "deltaY":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLastY:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLastY:I

    sub-int v3, p2, v3

    add-int v21, v3, v34

    .line 4379
    .local v21, "incrementalDeltaY":I
    :goto_1
    const/16 v22, 0x0

    .line 4381
    .local v22, "lastYCorrection":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_12

    .line 4389
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLastY:I

    move/from16 v0, p2

    if-eq v0, v3, :cond_7

    .line 4394
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getFlagDisallowIntercept()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4395
    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchSlop:I

    if-le v3, v4, :cond_2

    .line 4396
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v32

    .line 4397
    .local v32, "parent":Landroid/view/ViewParent;
    if-eqz v32, :cond_2

    .line 4398
    const/4 v3, 0x1

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4403
    .end local v32    # "parent":Landroid/view/ViewParent;
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionPosition:I

    if-ltz v3, :cond_a

    .line 4404
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    sub-int v23, v3, v4

    .line 4411
    .local v23, "motionIndex":I
    :goto_2
    const/16 v26, 0x0

    .line 4412
    .local v26, "motionViewPrevTop":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 4413
    .local v25, "motionView":Landroid/view/View;
    if-eqz v25, :cond_3

    .line 4414
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v26

    .line 4418
    :cond_3
    const/16 v18, 0x0

    .line 4419
    .local v18, "atEdge":Z
    if-eqz v21, :cond_4

    .line 4420
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->trackMotionScroll(II)Z

    move-result v18

    .line 4424
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 4425
    if-eqz v25, :cond_6

    .line 4428
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v27

    .line 4429
    .local v27, "motionViewRealTop":I
    if-eqz v18, :cond_5

    .line 4432
    move/from16 v0, v21

    neg-int v3, v0

    sub-int v4, v27, v26

    sub-int v7, v3, v4

    .line 4434
    .local v7, "overscroll":I
    const/4 v4, 0x0

    sub-int v5, v7, v21

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mScrollOffset:[I

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->dispatchNestedScroll(IIII[I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 4436
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mScrollOffset:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-int v22, v22, v3

    .line 4437
    if-eqz p3, :cond_5

    .line 4438
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4439
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mNestedYOffset:I

    .line 4476
    .end local v7    # "overscroll":I
    :cond_5
    :goto_3
    add-int v3, p2, v22

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionY:I

    .line 4478
    .end local v27    # "motionViewRealTop":I
    :cond_6
    add-int v3, p2, v22

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLastY:I

    .line 4550
    .end local v18    # "atEdge":Z
    .end local v23    # "motionIndex":I
    .end local v25    # "motionView":Landroid/view/View;
    .end local v26    # "motionViewPrevTop":I
    :cond_7
    :goto_4
    return-void

    .line 4366
    .end local v20    # "deltaY":I
    .end local v21    # "incrementalDeltaY":I
    .end local v22    # "lastYCorrection":I
    :cond_8
    move/from16 v0, v33

    neg-int v3, v0

    goto/16 :goto_0

    .restart local v20    # "deltaY":I
    :cond_9
    move/from16 v21, v20

    .line 4377
    goto/16 :goto_1

    .line 4408
    .restart local v21    # "incrementalDeltaY":I
    .restart local v22    # "lastYCorrection":I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v3

    div-int/lit8 v23, v3, 0x2

    .restart local v23    # "motionIndex":I
    goto/16 :goto_2

    .line 4442
    .restart local v7    # "overscroll":I
    .restart local v18    # "atEdge":Z
    .restart local v25    # "motionView":Landroid/view/View;
    .restart local v26    # "motionViewPrevTop":I
    .restart local v27    # "motionViewRealTop":I
    :cond_b
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 4443
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getScrollY()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOverscrollDistance:I

    const/4 v14, 0x1

    move-object/from16 v5, p0

    .line 4442
    invoke-virtual/range {v5 .. v14}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v19

    .line 4445
    .local v19, "atOverscrollEdge":Z
    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_c

    .line 4447
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 4450
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getOverScrollMode()I

    move-result v31

    .line 4451
    .local v31, "overscrollMode":I
    if-eqz v31, :cond_d

    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_5

    .line 4453
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_5

    .line 4454
    :cond_d
    if-nez v19, :cond_e

    .line 4455
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDirection:I

    .line 4456
    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    .line 4458
    :cond_e
    if-lez v21, :cond_10

    .line 4459
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    neg-int v4, v7

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move/from16 v0, p1

    int-to-float v5, v0

    .line 4460
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 4459
    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 4461
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_f

    .line 4462
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4464
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->invalidateTopGlow()V

    goto/16 :goto_3

    .line 4465
    :cond_10
    if-gez v21, :cond_5

    .line 4466
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v4, v7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v0, p1

    int-to-float v6, v0

    .line 4467
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    .line 4466
    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 4468
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_11

    .line 4469
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4471
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->invalidateBottomGlow()V

    goto/16 :goto_3

    .line 4480
    .end local v7    # "overscroll":I
    .end local v18    # "atEdge":Z
    .end local v19    # "atOverscrollEdge":Z
    .end local v23    # "motionIndex":I
    .end local v25    # "motionView":Landroid/view/View;
    .end local v26    # "motionViewPrevTop":I
    .end local v27    # "motionViewRealTop":I
    .end local v31    # "overscrollMode":I
    :cond_12
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_7

    .line 4481
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLastY:I

    move/from16 v0, p2

    if-eq v0, v3, :cond_7

    .line 4482
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getScrollY()I

    move-result v30

    .line 4483
    .local v30, "oldScroll":I
    sub-int v29, v30, v21

    .line 4484
    .local v29, "newScroll":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLastY:I

    move/from16 v0, p2

    if-le v0, v3, :cond_1b

    const/16 v28, 0x1

    .line 4486
    .local v28, "newDirection":I
    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDirection:I

    if-nez v3, :cond_13

    .line 4487
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDirection:I

    .line 4490
    :cond_13
    move/from16 v0, v21

    neg-int v10, v0

    .line 4491
    .local v10, "overScrollDistance":I
    if-gez v29, :cond_14

    if-gez v30, :cond_15

    :cond_14
    if-lez v29, :cond_1c

    if-gtz v30, :cond_1c

    .line 4492
    :cond_15
    move/from16 v0, v30

    neg-int v10, v0

    .line 4493
    add-int v21, v21, v10

    .line 4498
    :goto_6
    if-eqz v10, :cond_18

    .line 4499
    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getScrollY()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOverscrollDistance:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v17}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->overScrollBy(IIIIIIIIZ)Z

    .line 4501
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getOverScrollMode()I

    move-result v31

    .line 4502
    .restart local v31    # "overscrollMode":I
    if-eqz v31, :cond_16

    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_18

    .line 4504
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_18

    .line 4505
    :cond_16
    if-lez v33, :cond_1d

    .line 4506
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v4, v10

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move/from16 v0, p1

    int-to-float v5, v0

    .line 4507
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 4506
    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 4508
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_17

    .line 4509
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4511
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->invalidateTopGlow()V

    .line 4523
    .end local v31    # "overscrollMode":I
    :cond_18
    :goto_7
    if-eqz v21, :cond_1a

    .line 4525
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getScrollY()I

    move-result v3

    if-eqz v3, :cond_19

    .line 4526
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setScrollY(I)V

    .line 4527
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isHardwareAccelerated()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_19

    .line 4528
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 4532
    :cond_19
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->trackMotionScroll(II)Z

    .line 4534
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    .line 4538
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->findClosestMotionRow(I)I

    move-result v24

    .line 4540
    .local v24, "motionPosition":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionCorrection:I

    .line 4541
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    sub-int v3, v24, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 4542
    .restart local v25    # "motionView":Landroid/view/View;
    if-eqz v25, :cond_1f

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v3

    :goto_8
    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionViewOriginalTop:I

    .line 4543
    add-int v3, p2, v35

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionY:I

    .line 4544
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionPosition:I

    .line 4546
    .end local v24    # "motionPosition":I
    .end local v25    # "motionView":Landroid/view/View;
    :cond_1a
    add-int v3, p2, v22

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLastY:I

    .line 4547
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDirection:I

    goto/16 :goto_4

    .line 4484
    .end local v10    # "overScrollDistance":I
    .end local v28    # "newDirection":I
    :cond_1b
    const/16 v28, -0x1

    goto/16 :goto_5

    .line 4495
    .restart local v10    # "overScrollDistance":I
    .restart local v28    # "newDirection":I
    :cond_1c
    const/16 v21, 0x0

    goto/16 :goto_6

    .line 4512
    .restart local v31    # "overscrollMode":I
    :cond_1d
    if-gez v33, :cond_18

    .line 4513
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v4, v10

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v0, p1

    int-to-float v6, v0

    .line 4514
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    .line 4513
    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 4515
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 4516
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4518
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->invalidateBottomGlow()V

    goto/16 :goto_7

    .line 4542
    .end local v31    # "overscrollMode":I
    .restart local v24    # "motionPosition":I
    .restart local v25    # "motionView":Landroid/view/View;
    :cond_1f
    const/4 v3, 0x0

    goto :goto_8
.end method

.method private setFastScrollerAlwaysVisibleUiThread(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 1859
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    if-eqz v0, :cond_0

    .line 1860
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->setAlwaysShow(Z)V

    .line 1862
    :cond_0
    return-void
.end method

.method private setFastScrollerEnabledUiThread(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1795
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    if-eqz v0, :cond_2

    .line 1796
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->setEnabled(Z)V

    .line 1802
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->resolvePadding(Landroid/view/ViewGroup;)V

    .line 1804
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    if-eqz v0, :cond_1

    .line 1805
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->updateLayout()V

    .line 1807
    :cond_1
    return-void

    .line 1797
    :cond_2
    if-eqz p1, :cond_0

    .line 1798
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScrollStyle:I

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;I)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    .line 1799
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setFluidScrollStyle(I)V
    .locals 1
    .param p1, "styleResId"    # I

    .prologue
    .line 10049
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFluidScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    if-nez v0, :cond_0

    .line 10050
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScrollStyle:I

    .line 10054
    :goto_0
    return-void

    .line 10052
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFluidScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->setStyle(I)V

    goto :goto_0
.end method

.method private setFluidScrollerEnabledUiThread(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 10027
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFluidScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    if-eqz v0, :cond_2

    .line 10028
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFluidScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->setEnabled(Z)V

    .line 10035
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->resolvePadding(Landroid/view/ViewGroup;)V

    .line 10037
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFluidScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    if-eqz v0, :cond_1

    .line 10038
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFluidScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->updateLayout()V

    .line 10040
    :cond_1
    return-void

    .line 10029
    :cond_2
    if-eqz p1, :cond_0

    .line 10030
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScrollStyle:I

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;I)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFluidScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    .line 10031
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFluidScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setItemViewLayoutParams(Landroid/view/View;I)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 3050
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 3052
    .local v1, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_2

    .line 3053
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;

    .line 3060
    .local v0, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapterHasStableIds:Z

    if-eqz v2, :cond_0

    .line 3061
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->itemId:J

    .line 3063
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->viewType:I

    .line 3064
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->isEnabled:Z

    .line 3065
    if-eq v0, v1, :cond_1

    .line 3066
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3068
    :cond_1
    return-void

    .line 3054
    .end local v0    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3055
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;

    .restart local v0    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    goto :goto_0

    .end local v0    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    :cond_3
    move-object v0, v1

    .line 3057
    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;

    .restart local v0    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    goto :goto_0
.end method

.method private setupQuickController(I)V
    .locals 17
    .param p1, "where"    # I

    .prologue
    .line 9733
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getWidth()I

    move-result v11

    .line 9734
    .local v11, "w":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v6

    .line 9735
    .local v6, "h":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingLeft()I

    move-result v12

    sub-int v12, v11, v12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingRight()I

    move-result v13

    sub-int v4, v12, v13

    .line 9736
    .local v4, "contentW":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingLeft()I

    move-result v12

    div-int/lit8 v13, v4, 0x2

    add-int v3, v12, v13

    .line 9738
    .local v3, "centerX":I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCLocation:I

    .line 9742
    const/4 v12, 0x2

    new-array v7, v12, [I

    fill-array-data v7, :array_0

    .line 9743
    .local v7, "locOnScr":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getLocationOnScreen([I)V

    .line 9744
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 9747
    .local v5, "dm":Landroid/util/DisplayMetrics;
    const/4 v12, 0x0

    aget v12, v7, v12

    if-gez v12, :cond_0

    .line 9748
    const/4 v12, 0x0

    aget v12, v7, v12

    neg-int v8, v12

    .line 9749
    .local v8, "overlappedW":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingLeft()I

    move-result v12

    if-le v8, v12, :cond_0

    .line 9750
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingLeft()I

    move-result v12

    sub-int v12, v8, v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v3, v12

    .line 9755
    .end local v8    # "overlappedW":I
    :cond_0
    const/4 v12, 0x0

    aget v12, v7, v12

    add-int/2addr v12, v11

    iget v13, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v12, v13, :cond_1

    .line 9756
    const/4 v12, 0x0

    aget v12, v7, v12

    add-int/2addr v12, v11

    iget v13, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v8, v12, v13

    .line 9757
    .restart local v8    # "overlappedW":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingRight()I

    move-result v12

    if-le v8, v12, :cond_1

    .line 9758
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingRight()I

    move-result v12

    sub-int v12, v8, v12

    div-int/lit8 v12, v12, 0x2

    sub-int/2addr v3, v12

    .line 9764
    .end local v8    # "overlappedW":I
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    if-eqz v12, :cond_2

    .line 9765
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v12, Landroid/graphics/Rect;->top:I

    .line 9766
    .local v10, "paddingTop":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v12, Landroid/graphics/Rect;->bottom:I

    .line 9772
    .local v9, "paddingBottom":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/samsung/android/support/sesl/R$dimen;->sesl_quick_controller_size:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 9773
    .local v2, "buttonSize":I
    packed-switch p1, :pswitch_data_0

    .line 9791
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 9792
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 9794
    const/4 v12, 0x2

    new-array v12, v12, [I

    fill-array-data v12, :array_1

    invoke-static {v12}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 9795
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v14, 0x96

    invoke-virtual {v12, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9797
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v13, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$15;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$15;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9808
    const/4 v12, 0x2

    new-array v12, v12, [I

    fill-array-data v12, :array_2

    invoke-static {v12}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 9809
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v14, 0x96

    invoke-virtual {v12, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9811
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v13, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$16;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$16;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9822
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v13, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$17;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$17;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    invoke-virtual {v12, v13}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9837
    return-void

    .line 9768
    .end local v2    # "buttonSize":I
    .end local v9    # "paddingBottom":I
    .end local v10    # "paddingTop":I
    :cond_2
    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mExtraPaddingInTopHoverArea:I

    .line 9769
    .restart local v10    # "paddingTop":I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mExtraPaddingInBottomHoverArea:I

    .restart local v9    # "paddingBottom":I
    goto/16 :goto_0

    .line 9775
    .restart local v2    # "buttonSize":I
    :pswitch_0
    new-instance v12, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v16}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_1

    .line 9778
    :pswitch_1
    new-instance v12, Landroid/graphics/Rect;

    div-int/lit8 v13, v2, 0x2

    sub-int v13, v3, v13

    div-int/lit8 v14, v2, 0x2

    add-int/2addr v14, v3

    add-int v15, v2, v10

    invoke-direct {v12, v13, v10, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_1

    .line 9781
    :pswitch_2
    new-instance v12, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v16}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_1

    .line 9784
    :pswitch_3
    new-instance v12, Landroid/graphics/Rect;

    div-int/lit8 v13, v2, 0x2

    sub-int v13, v3, v13

    sub-int v14, v6, v2

    sub-int/2addr v14, v9

    div-int/lit8 v15, v2, 0x2

    add-int/2addr v15, v3

    sub-int v16, v6, v9

    invoke-direct/range {v12 .. v16}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_1

    .line 9742
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 9773
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 9794
    :array_1
    .array-data 4
        0x0
        0xff
    .end array-data

    .line 9808
    :array_2
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method private showPointerIcon(Landroid/view/MotionEvent;I)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "iconId"    # I

    .prologue
    .line 9418
    const/4 v0, -0x1

    invoke-static {p1, p2, v0}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->setHoveringSpenIcon(Landroid/view/MotionEvent;II)V

    .line 9419
    const/4 v0, 0x1

    return v0
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 7735
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 7736
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->createTextFilter(Z)V

    .line 7737
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->positionPopup()V

    .line 7739
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->checkFocus()V

    .line 7741
    :cond_0
    return-void
.end method

.method private startScrollIfNeeded(IILandroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 4314
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionY:I

    sub-int v1, p2, v7

    .line 4315
    .local v1, "deltaY":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 4316
    .local v2, "distance":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getScrollY()I

    move-result v7

    if-eqz v7, :cond_2

    move v5, v8

    .line 4317
    .local v5, "overscroll":Z
    :goto_0
    if-nez v5, :cond_0

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchSlop:I

    if-le v2, v7, :cond_7

    .line 4318
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getNestedScrollAxes()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_7

    .line 4319
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->createScrollingCache()V

    .line 4320
    if-eqz v5, :cond_3

    .line 4321
    const/4 v7, 0x5

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    .line 4322
    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionCorrection:I

    .line 4327
    :goto_1
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingCheckForLongPress:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForLongPress;

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4328
    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setPressed(Z)V

    .line 4329
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionPosition:I

    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    sub-int/2addr v7, v10

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4330
    .local v4, "motionView":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 4331
    invoke-virtual {v4, v9}, Landroid/view/View;->setPressed(Z)V

    .line 4334
    :cond_1
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPointerCount:I

    if-le v7, v8, :cond_5

    .line 4340
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v0

    .line 4341
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_5

    .line 4342
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setPressed(Z)V

    .line 4341
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0    # "childCount":I
    .end local v3    # "i":I
    .end local v4    # "motionView":Landroid/view/View;
    .end local v5    # "overscroll":Z
    :cond_2
    move v5, v9

    .line 4316
    goto :goto_0

    .line 4324
    .restart local v5    # "overscroll":Z
    :cond_3
    const/4 v7, 0x3

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    .line 4325
    if-lez v1, :cond_4

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchSlop:I

    :goto_3
    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionCorrection:I

    goto :goto_1

    :cond_4
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchSlop:I

    neg-int v7, v7

    goto :goto_3

    .line 4345
    .restart local v4    # "motionView":Landroid/view/View;
    :cond_5
    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->reportScrollStateChange(I)V

    .line 4348
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 4349
    .local v6, "parent":Landroid/view/ViewParent;
    if-eqz v6, :cond_6

    .line 4350
    invoke-interface {v6, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4352
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    move v7, v8

    .line 4356
    .end local v4    # "motionView":Landroid/view/View;
    .end local v6    # "parent":Landroid/view/ViewParent;
    :goto_4
    return v7

    :cond_7
    move v7, v9

    goto :goto_4
.end method

.method private updateOnScreenCheckedViews()V
    .locals 8

    .prologue
    .line 1538
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    .line 1539
    .local v2, "firstPos":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v1

    .line 1540
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_1

    const/4 v5, 0x1

    .line 1542
    .local v5, "useActivated":Z
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 1543
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1544
    .local v0, "child":Landroid/view/View;
    add-int v4, v2, v3

    .line 1546
    .local v4, "position":I
    instance-of v6, v0, Landroid/widget/Checkable;

    if-eqz v6, :cond_2

    .line 1547
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "child":Landroid/view/View;
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1542
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1540
    .end local v3    # "i":I
    .end local v4    # "position":I
    .end local v5    # "useActivated":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1548
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    .restart local v4    # "position":I
    .restart local v5    # "useActivated":Z
    :cond_2
    if-eqz v5, :cond_0

    .line 1549
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2

    .line 1552
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "position":I
    :cond_3
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 2282
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2284
    return-void
.end method


# virtual methods
.method public addExtraPaddingInBottomHoverArea(I)V
    .locals 3
    .param p1, "extraSpace"    # I

    .prologue
    .line 4650
    const/4 v0, 0x1

    int-to-float v1, p1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mContext:Landroid/content/Context;

    .line 4652
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 4650
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mExtraPaddingInBottomHoverArea:I

    .line 4653
    return-void
.end method

.method public addExtraPaddingInTopHoverArea(I)V
    .locals 3
    .param p1, "extraSpace"    # I

    .prologue
    .line 4640
    const/4 v0, 0x1

    int-to-float v1, p1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mContext:Landroid/content/Context;

    .line 4642
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 4640
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mExtraPaddingInTopHoverArea:I

    .line 4643
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
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
    .line 6427
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v2

    .line 6428
    .local v2, "count":I
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    .line 6429
    .local v3, "firstPosition":I
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 6431
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 6442
    :cond_0
    return-void

    .line 6435
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 6436
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6437
    .local v1, "child":Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6438
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6440
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 6435
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 8220
    return-void
.end method

.method public autoHide(I)V
    .locals 4
    .param p1, "when"    # I

    .prologue
    const-wide/16 v2, 0x9c4

    .line 1727
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEnableGoToTop:Z

    if-nez v0, :cond_1

    .line 1743
    :cond_0
    :goto_0
    return-void

    .line 1731
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1733
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isFluidScrollEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1734
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1735
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1739
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1740
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1731
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 8179
    return-void
.end method

.method public canScrollList(I)Z
    .locals 10
    .param p1, "direction"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7095
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v0

    .line 7096
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 7108
    :cond_0
    :goto_0
    return v6

    .line 7100
    :cond_1
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    .line 7101
    .local v1, "firstPosition":I
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 7102
    .local v5, "listPadding":Landroid/graphics/Rect;
    if-lez p1, :cond_3

    .line 7103
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 7104
    .local v3, "lastBottom":I
    add-int v4, v1, v0

    .line 7105
    .local v4, "lastPosition":I
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    if-lt v4, v8, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v3, v8, :cond_0

    :cond_2
    move v6, v7

    goto :goto_0

    .line 7107
    .end local v3    # "lastBottom":I
    .end local v4    # "lastPosition":I
    :cond_3
    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v2

    .line 7108
    .local v2, "firstTop":I
    if-gtz v1, :cond_4

    iget v8, v5, Landroid/graphics/Rect;->top:I

    if-ge v2, v8, :cond_0

    :cond_4
    move v6, v7

    goto :goto_0
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 8097
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 8248
    instance-of v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1363
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1365
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 1366
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1368
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedItemCount:I

    .line 1369
    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    .prologue
    .line 8141
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 8142
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFiltered:Z

    .line 8144
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8145
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->dismissPopup()V

    .line 8148
    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 2641
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v1

    .line 2642
    .local v1, "count":I
    if-lez v1, :cond_3

    .line 2643
    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    .line 2644
    mul-int/lit8 v2, v1, 0x64

    .line 2646
    .local v2, "extent":I
    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2647
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2648
    .local v4, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2649
    .local v3, "height":I
    if-lez v3, :cond_0

    .line 2650
    mul-int/lit8 v6, v4, 0x64

    div-int/2addr v6, v3

    add-int/2addr v2, v6

    .line 2653
    :cond_0
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2654
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2655
    .local v0, "bottom":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2656
    if-lez v3, :cond_1

    .line 2657
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v3

    sub-int/2addr v2, v6

    .line 2665
    .end local v0    # "bottom":I
    .end local v2    # "extent":I
    .end local v3    # "height":I
    .end local v4    # "top":I
    .end local v5    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    return v2

    .line 2662
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v6

    .line 2665
    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 2670
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    .line 2671
    .local v2, "firstPosition":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v0

    .line 2672
    .local v0, "childCount":I
    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    .line 2673
    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    .line 2674
    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2675
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 2676
    .local v5, "top":I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2677
    .local v3, "height":I
    if-lez v3, :cond_0

    .line 2678
    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v5, 0x64

    div-int/2addr v9, v3

    sub-int/2addr v8, v9

    .line 2679
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getScrollY()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    .line 2678
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2694
    .end local v3    # "height":I
    .end local v5    # "top":I
    .end local v6    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return v7

    .line 2683
    :cond_1
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    .line 2684
    .local v1, "count":I
    if-nez v2, :cond_2

    .line 2685
    const/4 v4, 0x0

    .line 2691
    .local v4, "index":I
    :goto_1
    int-to-float v7, v2

    int-to-float v8, v0

    int-to-float v9, v4

    int-to-float v10, v1

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    goto :goto_0

    .line 2686
    .end local v4    # "index":I
    :cond_2
    add-int v7, v2, v0

    if-ne v7, v1, :cond_3

    .line 2687
    move v4, v1

    .restart local v4    # "index":I
    goto :goto_1

    .line 2689
    .end local v4    # "index":I
    :cond_3
    div-int/lit8 v7, v0, 0x2

    add-int v4, v2, v7

    .restart local v4    # "index":I
    goto :goto_1
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    .prologue
    .line 2700
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_1

    .line 2701
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2702
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getScrollY()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2704
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2709
    :cond_0
    :goto_0
    return v0

    .line 2707
    .end local v0    # "result":I
    :cond_1
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method confirmCheckedPositionsById()V
    .locals 18

    .prologue
    .line 7511
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 7513
    const/4 v2, 0x0

    .line 7514
    .local v2, "checkedCountChanged":Z
    const/4 v9, 0x0

    .local v9, "checkedIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v9, v3, :cond_4

    .line 7515
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 7516
    .local v6, "id":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 7518
    .local v5, "lastPos":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    .line 7519
    .local v12, "lastPosId":J
    cmp-long v3, v6, v12

    if-eqz v3, :cond_3

    .line 7521
    const/4 v3, 0x0

    add-int/lit8 v4, v5, -0x14

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 7522
    .local v17, "start":I
    add-int/lit8 v3, v5, 0x14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 7523
    .local v10, "end":I
    const/4 v11, 0x0

    .line 7524
    .local v11, "found":Z
    move/from16 v16, v17

    .local v16, "searchPos":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v10, :cond_0

    .line 7525
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v14

    .line 7526
    .local v14, "searchId":J
    cmp-long v3, v6, v14

    if-nez v3, :cond_2

    .line 7527
    const/4 v11, 0x1

    .line 7528
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 7529
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 7534
    .end local v14    # "searchId":J
    :cond_0
    if-nez v11, :cond_1

    .line 7535
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v6, v7}, Landroid/util/LongSparseArray;->delete(J)V

    .line 7536
    add-int/lit8 v9, v9, -0x1

    .line 7537
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedItemCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedItemCount:I

    .line 7538
    const/4 v2, 0x1

    .line 7539
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMultiChoiceModeCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;

    if-eqz v3, :cond_1

    .line 7540
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMultiChoiceModeCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 7514
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 7524
    .restart local v10    # "end":I
    .restart local v11    # "found":Z
    .restart local v14    # "searchId":J
    .restart local v16    # "searchPos":I
    .restart local v17    # "start":I
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 7545
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v14    # "searchId":J
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 7549
    .end local v5    # "lastPos":I
    .end local v6    # "id":J
    .end local v12    # "lastPosId":J
    :cond_4
    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_5

    .line 7550
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidate()V

    .line 7552
    :cond_5
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 3802
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method createPositionScroller()Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;
    .locals 1

    .prologue
    .line 6804
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PositionScroller;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    return-object v0
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/DragEvent;

    .prologue
    .line 4976
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v3

    .line 4977
    .local v3, "cd":Landroid/content/ClipDescription;
    if-eqz v3, :cond_0

    const-string v9, "cropUri"

    invoke-virtual {v3}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 4978
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v9

    .line 5093
    :goto_0
    return v9

    .line 4982
    :cond_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 4983
    .local v0, "action":I
    const/4 v9, 0x1

    if-ne v0, v9, :cond_3

    .line 4984
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragScrollWorkingZonePx:I

    if-gtz v9, :cond_2

    .line 4985
    const/4 v9, 0x1

    const/high16 v10, 0x41c80000    # 25.0f

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mContext:Landroid/content/Context;

    .line 4987
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    .line 4985
    invoke-static {v9, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragScrollWorkingZonePx:I

    .line 4989
    :cond_2
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 4990
    const/4 v9, 0x1

    goto :goto_0

    .line 4993
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v5

    .line 4996
    .local v5, "childCount":I
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    add-int/2addr v9, v5

    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    if-ge v9, v10, :cond_d

    const/4 v1, 0x1

    .line 4998
    .local v1, "canScrollDown":Z
    :goto_1
    if-nez v1, :cond_5

    if-lez v5, :cond_5

    .line 4999
    add-int/lit8 v9, v5, -0x1

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5000
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getBottom()I

    move-result v10

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    if-gt v9, v10, :cond_4

    .line 5001
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v10

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    if-le v9, v10, :cond_e

    :cond_4
    const/4 v1, 0x1

    .line 5005
    .end local v4    # "child":Landroid/view/View;
    :cond_5
    :goto_2
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    if-lez v9, :cond_f

    const/4 v2, 0x1

    .line 5007
    .local v2, "canScrollUp":Z
    :goto_3
    if-nez v2, :cond_6

    if-lez v5, :cond_6

    .line 5008
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5009
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    if-ge v9, v10, :cond_10

    const/4 v2, 0x1

    .line 5013
    .end local v4    # "child":Landroid/view/View;
    :cond_6
    :goto_4
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 5014
    .local v7, "x":I
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 5015
    .local v8, "y":I
    if-eqz v5, :cond_11

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v6

    .line 5016
    .local v6, "contentBottom":I
    :goto_5
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragScrollWorkingZonePx:I

    if-le v8, v9, :cond_7

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragScrollWorkingZonePx:I

    sub-int v9, v6, v9

    if-lt v8, v9, :cond_8

    :cond_7
    if-lez v7, :cond_8

    .line 5017
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getRight()I

    move-result v9

    if-gt v7, v9, :cond_8

    if-nez v2, :cond_12

    if-nez v1, :cond_12

    .line 5018
    :cond_8
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 5019
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5022
    :cond_9
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsHoverOverscrolled:Z

    if-nez v9, :cond_a

    iget-wide v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollStartTime:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-eqz v9, :cond_b

    .line 5023
    :cond_a
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsHoverOverscrolled:Z

    .line 5026
    :cond_b
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverRecognitionStartTime:J

    .line 5027
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollStartTime:J

    .line 5028
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverAreaEnter:Z

    .line 5031
    const/4 v9, 0x2

    if-ne v0, v9, :cond_c

    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsDragScrolled:Z

    if-eqz v9, :cond_c

    .line 5032
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsDragScrolled:Z

    .line 5035
    :cond_c
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v9

    goto/16 :goto_0

    .line 4996
    .end local v1    # "canScrollDown":Z
    .end local v2    # "canScrollUp":Z
    .end local v6    # "contentBottom":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 5001
    .restart local v1    # "canScrollDown":Z
    .restart local v4    # "child":Landroid/view/View;
    :cond_e
    const/4 v1, 0x0

    goto :goto_2

    .line 5005
    .end local v4    # "child":Landroid/view/View;
    :cond_f
    const/4 v2, 0x0

    goto :goto_3

    .line 5009
    .restart local v2    # "canScrollUp":Z
    .restart local v4    # "child":Landroid/view/View;
    :cond_10
    const/4 v2, 0x0

    goto :goto_4

    .line 5015
    .end local v4    # "child":Landroid/view/View;
    .restart local v7    # "x":I
    .restart local v8    # "y":I
    :cond_11
    const/4 v6, 0x0

    goto :goto_5

    .line 5039
    .restart local v6    # "contentBottom":I
    :cond_12
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    if-nez v9, :cond_13

    .line 5040
    new-instance v9, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    invoke-direct {v9, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    iput-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    .line 5043
    :cond_13
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverAreaEnter:Z

    if-nez v9, :cond_14

    .line 5044
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollStartTime:J

    .line 5047
    :cond_14
    packed-switch v0, :pswitch_data_0

    .line 5093
    :cond_15
    :goto_6
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v9

    goto/16 :goto_0

    .line 5050
    :pswitch_0
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverAreaEnter:Z

    .line 5052
    if-ltz v8, :cond_16

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragScrollWorkingZonePx:I

    if-gt v8, v9, :cond_16

    .line 5054
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v9

    if-nez v9, :cond_15

    .line 5055
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsDragScrolled:Z

    .line 5056
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverRecognitionStartTime:J

    .line 5057
    const/4 v9, 0x2

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollDirection:I

    .line 5058
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_6

    .line 5060
    :cond_16
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragScrollWorkingZonePx:I

    sub-int v9, v6, v9

    if-lt v8, v9, :cond_15

    if-gt v8, v6, :cond_15

    .line 5062
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v9

    if-nez v9, :cond_15

    .line 5063
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsDragScrolled:Z

    .line 5064
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverRecognitionStartTime:J

    .line 5065
    const/4 v9, 0x1

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollDirection:I

    .line 5066
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_6

    .line 5072
    :pswitch_1
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsDragScrolled:Z

    if-eqz v9, :cond_17

    .line 5073
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsDragScrolled:Z

    .line 5079
    :cond_17
    :pswitch_2
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 5080
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5082
    :cond_18
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsDragScrolled:Z

    .line 5084
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverRecognitionStartTime:J

    .line 5085
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollStartTime:J

    .line 5086
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsHoverOverscrolled:Z

    .line 5087
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverAreaEnter:Z

    goto :goto_6

    .line 5047
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 3267
    const/4 v4, 0x0

    .line 3268
    .local v4, "saveCount":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getFlagClipToPadding()Z

    move-result v0

    .line 3269
    .local v0, "clipToPadding":Z
    if-eqz v0, :cond_0

    .line 3270
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3271
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getScrollX()I

    move-result v5

    .line 3272
    .local v5, "scrollX":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getScrollY()I

    move-result v6

    .line 3273
    .local v6, "scrollY":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingLeft()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingTop()I

    move-result v9

    add-int/2addr v9, v6

    .line 3274
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getRight()I

    move-result v10

    add-int/2addr v10, v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getLeft()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    .line 3275
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getBottom()I

    move-result v11

    add-int/2addr v11, v6

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getTop()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingBottom()I

    move-result v12

    sub-int/2addr v11, v12

    .line 3273
    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 3276
    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setFlagClipToPadding(Z)V

    .line 3279
    .end local v5    # "scrollX":I
    .end local v6    # "scrollY":I
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDrawSelectorOnTop:Z

    .line 3280
    .local v1, "drawSelectorOnTop":Z
    if-nez v1, :cond_1

    .line 3281
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 3284
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3286
    if-eqz v1, :cond_2

    .line 3287
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 3290
    :cond_2
    if-eqz v0, :cond_3

    .line 3291
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3292
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setFlagClipToPadding(Z)V

    .line 3295
    :cond_3
    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsDragBlockEnabled:Z

    if-eqz v8, :cond_4

    .line 3296
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockLeft:I

    if-nez v8, :cond_5

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockTop:I

    if-nez v8, :cond_5

    .line 3316
    :cond_4
    :goto_0
    return-void

    .line 3300
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 3301
    .local v2, "firstChildPosition":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getLastVisiblePosition()I

    move-result v3

    .line 3303
    .local v3, "lastChildPosition":I
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTrackedChildPosition:I

    if-lt v8, v2, :cond_7

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTrackedChildPosition:I

    if-gt v8, v3, :cond_7

    .line 3304
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTrackedChildPosition:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTrackedChild:Landroid/view/View;

    .line 3305
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTrackedChild:Landroid/view/View;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTrackedChild:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v7

    .line 3306
    .local v7, "trackChildTop":I
    :cond_6
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDistanceFromTrackedChildTop:I

    add-int/2addr v8, v7

    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragStartY:I

    .line 3309
    .end local v7    # "trackChildTop":I
    :cond_7
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragStartY:I

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragEndY:I

    if-ge v8, v9, :cond_8

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragStartY:I

    :goto_1
    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockTop:I

    .line 3310
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragEndY:I

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragStartY:I

    if-le v8, v9, :cond_9

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragEndY:I

    :goto_2
    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockBottom:I

    .line 3312
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockRect:Landroid/graphics/Rect;

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockLeft:I

    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockTop:I

    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockRight:I

    iget v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockBottom:I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 3313
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockImage:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3314
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 3309
    :cond_8
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragEndY:I

    goto :goto_1

    .line 3310
    :cond_9
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragStartY:I

    goto :goto_2
.end method

.method public dispatchDrawableHotspotChanged(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 4151
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4658
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoveringEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 4659
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->onHoverDrawableState(Landroid/view/MotionEvent;)V

    .line 4664
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v6

    .line 4665
    .local v6, "buttonState":I
    invoke-static {}, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewReflector;->isTextViewHovered()Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mNewTextViewHoverState:Z

    .line 4666
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mNewTextViewHoverState:Z

    move/from16 v21, v0

    if-nez v21, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOldTextViewHoverState:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsDragBlockEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    const/16 v21, 0x20

    move/from16 v0, v21

    if-eq v6, v0, :cond_0

    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v6, v0, :cond_3

    :cond_0
    const/16 v21, 0x1

    :goto_1
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsNeedPenSelectIconSet:Z

    .line 4668
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mNewTextViewHoverState:Z

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOldTextViewHoverState:Z

    .line 4671
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 4672
    .local v5, "action":I
    packed-switch v5, :pswitch_data_0

    .line 4732
    :cond_1
    :goto_2
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mNeedsHoverScroll:Z

    move/from16 v21, v0

    if-nez v21, :cond_e

    .line 4733
    invoke-super/range {p0 .. p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    .line 4967
    :goto_3
    return v21

    .line 4661
    .end local v5    # "action":I
    .end local v6    # "buttonState":I
    :cond_2
    const-string v21, "SeslAbsListView"

    const-string v22, "dispatchHoverEvent() skip onHoverDrawableState on processing touchEvent"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4666
    .restart local v6    # "buttonState":I
    :cond_3
    const/16 v21, 0x0

    goto :goto_1

    .line 4674
    .restart local v5    # "action":I
    :pswitch_1
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mNeedsHoverScroll:Z

    .line 4677
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollEnable:Z

    move/from16 v21, v0

    if-nez v21, :cond_4

    .line 4678
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mNeedsHoverScroll:Z

    .line 4682
    :cond_4
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v18

    .line 4683
    .local v18, "toolType":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mNeedsHoverScroll:Z

    move/from16 v21, v0

    if-eqz v21, :cond_8

    const/16 v21, 0x2

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 4684
    invoke-static {}, Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector;->getField_SEM_PEN_HOVERING()Ljava/lang/String;

    move-result-object v4

    .line 4685
    .local v4, "PEN_HOVERING":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    const/16 v16, 0x1

    .line 4686
    .local v16, "isHoveringOn":Z
    :goto_4
    const/4 v15, 0x0

    .line 4688
    .local v15, "isCarModeOn":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "car_mode_on"

    invoke-static/range {v21 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    const/4 v15, 0x1

    .line 4693
    :goto_5
    if-eqz v16, :cond_5

    if-eqz v15, :cond_6

    .line 4694
    :cond_5
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mNeedsHoverScroll:Z

    .line 4697
    :cond_6
    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsDragBlockEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsPenSelectPointerSetted:Z

    move/from16 v21, v0

    if-nez v21, :cond_8

    const/16 v21, 0x2

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    const/16 v21, 0x20

    move/from16 v0, v21

    if-eq v6, v0, :cond_7

    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v6, v0, :cond_8

    .line 4700
    :cond_7
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->getField_HOVERING_PENSELECT_POINTER_01()I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 4701
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsPenSelectPointerSetted:Z

    .line 4706
    .end local v4    # "PEN_HOVERING":Ljava/lang/String;
    .end local v15    # "isCarModeOn":Z
    .end local v16    # "isHoveringOn":Z
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mNeedsHoverScroll:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    const/16 v21, 0x3

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 4707
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mNeedsHoverScroll:Z

    goto/16 :goto_2

    .line 4685
    .restart local v4    # "PEN_HOVERING":Ljava/lang/String;
    :cond_9
    const/16 v16, 0x0

    goto :goto_4

    .line 4688
    .restart local v15    # "isCarModeOn":Z
    .restart local v16    # "isHoveringOn":Z
    :cond_a
    const/4 v15, 0x0

    goto :goto_5

    .line 4689
    :catch_0
    move-exception v13

    .line 4690
    .local v13, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v13}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_5

    .line 4711
    .end local v4    # "PEN_HOVERING":Ljava/lang/String;
    .end local v13    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v15    # "isCarModeOn":Z
    .end local v16    # "isHoveringOn":Z
    .end local v18    # "toolType":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsDragBlockEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsPenSelectPointerSetted:Z

    move/from16 v21, v0

    if-nez v21, :cond_b

    const/16 v21, 0x0

    .line 4712
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    const/16 v21, 0x20

    move/from16 v0, v21

    if-eq v6, v0, :cond_c

    const/16 v21, 0x2

    move/from16 v0, v21

    if-eq v6, v0, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsNeedPenSelectIconSet:Z

    move/from16 v21, v0

    if-eqz v21, :cond_d

    .line 4714
    :cond_c
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->getField_HOVERING_PENSELECT_POINTER_01()I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 4715
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_2

    .line 4716
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsDragBlockEnabled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsPenSelectPointerSetted:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    const/16 v21, 0x20

    move/from16 v0, v21

    if-eq v6, v0, :cond_1

    const/16 v21, 0x2

    move/from16 v0, v21

    if-eq v6, v0, :cond_1

    .line 4718
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->getField_HOVERING_SPENICON_DEFAULT()I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 4719
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_2

    .line 4723
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsPenSelectPointerSetted:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 4724
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->getField_HOVERING_SPENICON_DEFAULT()I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 4725
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_2

    .line 4739
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v21, v0

    if-nez v21, :cond_f

    .line 4740
    new-instance v21, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    .line 4743
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverTopAreaHeight:I

    move/from16 v21, v0

    if-lez v21, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverBottomAreaHeight:I

    move/from16 v21, v0

    if-gtz v21, :cond_11

    .line 4744
    :cond_10
    const/16 v21, 0x1

    const/high16 v22, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    .line 4746
    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v23

    .line 4744
    invoke-static/range {v21 .. v23}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v21

    const/high16 v22, 0x3f000000    # 0.5f

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverTopAreaHeight:I

    .line 4748
    const/16 v21, 0x1

    const/high16 v22, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    .line 4750
    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v23

    .line 4748
    invoke-static/range {v21 .. v23}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v21

    const/high16 v22, 0x3f000000    # 0.5f

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverBottomAreaHeight:I

    .line 4755
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    move/from16 v21, v0

    if-eqz v21, :cond_24

    .line 4756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v11, v0, Landroid/graphics/Rect;->top:I

    .line 4757
    .local v11, "contentTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v10, v21, v22

    .line 4764
    .local v10, "contentBottom":I
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v12

    .line 4765
    .local v12, "count":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    move/from16 v21, v0

    add-int v21, v21, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_25

    const/4 v7, 0x1

    .line 4767
    .local v7, "canScrollDown":Z
    :goto_7
    if-nez v7, :cond_13

    if-lez v12, :cond_13

    .line 4768
    add-int/lit8 v21, v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 4769
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getBottom()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_12

    .line 4770
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_26

    :cond_12
    const/4 v7, 0x1

    .line 4774
    .end local v9    # "child":Landroid/view/View;
    :cond_13
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    move/from16 v21, v0

    if-lez v21, :cond_27

    const/4 v8, 0x1

    .line 4776
    .local v8, "canScrollUp":Z
    :goto_9
    if-nez v8, :cond_14

    .line 4777
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v21

    if-lez v21, :cond_14

    .line 4778
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 4779
    .restart local v9    # "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_28

    const/4 v8, 0x1

    .line 4783
    .end local v9    # "child":Landroid/view/View;
    :cond_14
    :goto_a
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_29

    const/16 v17, 0x1

    .line 4784
    .local v17, "isPossibleTooltype":Z
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v19, v0

    .line 4785
    .local v19, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v20, v0

    .line 4786
    .local v20, "y":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverTopAreaHeight:I

    move/from16 v21, v0

    add-int v21, v21, v11

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverBottomAreaHeight:I

    move/from16 v21, v0

    sub-int v21, v10, v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_1a

    :cond_15
    if-lez v19, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getRight()I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v21

    if-gt v0, v1, :cond_1a

    if-nez v8, :cond_16

    if-eqz v7, :cond_1a

    :cond_16
    move/from16 v0, v20

    if-lt v0, v11, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverTopAreaHeight:I

    move/from16 v21, v0

    add-int v21, v21, v11

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_17

    if-nez v8, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsHoverOverscrolled:Z

    move/from16 v21, v0

    if-nez v21, :cond_1a

    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverBottomAreaHeight:I

    move/from16 v21, v0

    sub-int v21, v10, v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_18

    move/from16 v0, v20

    if-gt v0, v10, :cond_18

    if-nez v7, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsHoverOverscrolled:Z

    move/from16 v21, v0

    if-nez v21, :cond_1a

    :cond_18
    if-eqz v17, :cond_19

    .line 4790
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v21

    const/16 v22, 0x20

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1a

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1a

    :cond_19
    if-eqz v17, :cond_1a

    .line 4791
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isLockScreenMode()Z

    move-result v21

    if-nez v21, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEnableGoToTop:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopState:I

    move/from16 v21, v0

    if-eqz v21, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v21

    if-eqz v21, :cond_2a

    .line 4793
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v21

    if-eqz v21, :cond_1b

    .line 4794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 4795
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->getField_HOVERING_SPENICON_DEFAULT()I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 4798
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v21

    if-eqz v21, :cond_1c

    .line 4799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 4802
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverTopAreaHeight:I

    move/from16 v21, v0

    add-int v21, v21, v11

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverBottomAreaHeight:I

    move/from16 v21, v0

    sub-int v21, v10, v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_1e

    :cond_1d
    if-lez v19, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getRight()I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_1f

    .line 4803
    :cond_1e
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsHoverOverscrolled:Z

    .line 4806
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverAreaEnter:Z

    move/from16 v21, v0

    if-nez v21, :cond_20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollStartTime:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-eqz v21, :cond_21

    .line 4807
    :cond_20
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->getField_HOVERING_SPENICON_DEFAULT()I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 4810
    :cond_21
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverRecognitionStartTime:J

    .line 4811
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollStartTime:J

    .line 4812
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverAreaEnter:Z

    .line 4813
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsSendHoverScrollState:Z

    .line 4815
    const/16 v21, 0xa

    move/from16 v0, v21

    if-ne v5, v0, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollStateForListener:I

    move/from16 v21, v0

    if-eqz v21, :cond_22

    .line 4816
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollStateForListener:I

    .line 4817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnScrollListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    move/from16 v21, v0

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_22

    .line 4818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnScrollListener;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;I)V

    .line 4823
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCstate:I

    move/from16 v21, v0

    if-eqz v21, :cond_23

    .line 4824
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCstate:I

    .line 4825
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postInvalidateOnAnimation()V

    .line 4828
    :cond_23
    invoke-super/range {p0 .. p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    goto/16 :goto_3

    .line 4759
    .end local v7    # "canScrollDown":Z
    .end local v8    # "canScrollUp":Z
    .end local v10    # "contentBottom":I
    .end local v11    # "contentTop":I
    .end local v12    # "count":I
    .end local v17    # "isPossibleTooltype":Z
    .end local v19    # "x":I
    .end local v20    # "y":I
    :cond_24
    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mExtraPaddingInTopHoverArea:I

    .line 4760
    .restart local v11    # "contentTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mExtraPaddingInBottomHoverArea:I

    move/from16 v22, v0

    sub-int v10, v21, v22

    .restart local v10    # "contentBottom":I
    goto/16 :goto_6

    .line 4765
    .restart local v12    # "count":I
    :cond_25
    const/4 v7, 0x0

    goto/16 :goto_7

    .line 4770
    .restart local v7    # "canScrollDown":Z
    .restart local v9    # "child":Landroid/view/View;
    :cond_26
    const/4 v7, 0x0

    goto/16 :goto_8

    .line 4774
    .end local v9    # "child":Landroid/view/View;
    :cond_27
    const/4 v8, 0x0

    goto/16 :goto_9

    .line 4779
    .restart local v8    # "canScrollUp":Z
    .restart local v9    # "child":Landroid/view/View;
    :cond_28
    const/4 v8, 0x0

    goto/16 :goto_a

    .line 4783
    .end local v9    # "child":Landroid/view/View;
    :cond_29
    const/16 v17, 0x0

    goto/16 :goto_b

    .line 4831
    .restart local v17    # "isPossibleTooltype":Z
    .restart local v19    # "x":I
    .restart local v20    # "y":I
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverAreaEnter:Z

    move/from16 v21, v0

    if-nez v21, :cond_2b

    .line 4832
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollStartTime:J

    .line 4835
    :cond_2b
    packed-switch v5, :pswitch_data_1

    .line 4967
    :cond_2c
    :goto_c
    :pswitch_4
    const/16 v21, 0x1

    goto/16 :goto_3

    .line 4837
    :pswitch_5
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverAreaEnter:Z

    .line 4839
    move/from16 v0, v20

    if-lt v0, v11, :cond_2d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverTopAreaHeight:I

    move/from16 v21, v0

    add-int v21, v21, v11

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_2d

    .line 4841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v21

    if-nez v21, :cond_2c

    .line 4842
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverRecognitionStartTime:J

    .line 4843
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->getField_HOVERING_PENSELECT_POINTER_01()I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 4845
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollDirection:I

    .line 4846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 4849
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isQCSupported()Z

    move-result v21

    if-eqz v21, :cond_2c

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canScrollUp()Z

    move-result v21

    if-eqz v21, :cond_2c

    const/16 v21, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canScrollVertically(I)Z

    move-result v21

    if-eqz v21, :cond_2c

    .line 4850
    const/16 v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setupQuickController(I)V

    .line 4851
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCstate:I

    goto :goto_c

    .line 4854
    :cond_2d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverBottomAreaHeight:I

    move/from16 v21, v0

    sub-int v21, v10, v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_2c

    move/from16 v0, v20

    if-gt v0, v10, :cond_2c

    .line 4856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v21

    if-nez v21, :cond_2c

    .line 4857
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverRecognitionStartTime:J

    .line 4858
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->getField_HOVERING_SCROLLICON_POINTER_05()I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 4860
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollDirection:I

    .line 4861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 4864
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isQCSupported()Z

    move-result v21

    if-eqz v21, :cond_2c

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canScrollDown()Z

    move-result v21

    if-eqz v21, :cond_2c

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canScrollVertically(I)Z

    move-result v21

    if-eqz v21, :cond_2c

    .line 4865
    const/16 v21, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setupQuickController(I)V

    .line 4866
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCstate:I

    goto/16 :goto_c

    .line 4873
    :pswitch_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverAreaEnter:Z

    move/from16 v21, v0

    if-nez v21, :cond_2e

    .line 4874
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverAreaEnter:Z

    .line 4875
    const/16 v21, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 4876
    invoke-super/range {p0 .. p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    goto/16 :goto_3

    .line 4879
    :cond_2e
    move/from16 v0, v20

    if-lt v0, v11, :cond_31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverTopAreaHeight:I

    move/from16 v21, v0

    add-int v21, v21, v11

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_31

    .line 4881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v21

    if-nez v21, :cond_2c

    .line 4882
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverRecognitionStartTime:J

    .line 4885
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsHoverOverscrolled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollDirection:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_30

    .line 4886
    :cond_2f
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->getField_HOVERING_SCROLLICON_POINTER_01()I

    move-result v14

    .line 4887
    .local v14, "iconId":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 4890
    .end local v14    # "iconId":I
    :cond_30
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollDirection:I

    .line 4891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 4894
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isQCSupported()Z

    move-result v21

    if-eqz v21, :cond_2c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCstate:I

    move/from16 v21, v0

    if-nez v21, :cond_2c

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canScrollUp()Z

    move-result v21

    if-eqz v21, :cond_2c

    const/16 v21, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canScrollVertically(I)Z

    move-result v21

    if-eqz v21, :cond_2c

    .line 4895
    const/16 v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setupQuickController(I)V

    .line 4896
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCstate:I

    goto/16 :goto_c

    .line 4899
    :cond_31
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverBottomAreaHeight:I

    move/from16 v21, v0

    sub-int v21, v10, v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_34

    move/from16 v0, v20

    if-gt v0, v10, :cond_34

    .line 4901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v21

    if-nez v21, :cond_2c

    .line 4902
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverRecognitionStartTime:J

    .line 4905
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsHoverOverscrolled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollDirection:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_33

    .line 4907
    :cond_32
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->getField_HOVERING_SCROLLICON_POINTER_05()I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 4910
    :cond_33
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollDirection:I

    .line 4911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 4914
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isQCSupported()Z

    move-result v21

    if-eqz v21, :cond_2c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCstate:I

    move/from16 v21, v0

    if-nez v21, :cond_2c

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canScrollDown()Z

    move-result v21

    if-eqz v21, :cond_2c

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canScrollVertically(I)Z

    move-result v21

    if-eqz v21, :cond_2c

    .line 4915
    const/16 v21, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setupQuickController(I)V

    .line 4916
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCstate:I

    goto/16 :goto_c

    .line 4921
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v21

    if-eqz v21, :cond_35

    .line 4922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 4925
    :cond_35
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->getField_HOVERING_SPENICON_DEFAULT()I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 4927
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverRecognitionStartTime:J

    .line 4928
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollStartTime:J

    .line 4929
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsHoverOverscrolled:Z

    .line 4930
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverAreaEnter:Z

    .line 4931
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsSendHoverScrollState:Z

    goto/16 :goto_c

    .line 4937
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v21

    if-eqz v21, :cond_36

    .line 4938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 4941
    :cond_36
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->getField_HOVERING_SPENICON_DEFAULT()I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 4943
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverRecognitionStartTime:J

    .line 4944
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollStartTime:J

    .line 4945
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsHoverOverscrolled:Z

    .line 4946
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverAreaEnter:Z

    .line 4947
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsSendHoverScrollState:Z

    .line 4950
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCstate:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_37

    .line 4954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCIconHideDelay:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 4957
    :cond_37
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollStateForListener:I

    move/from16 v21, v0

    if-eqz v21, :cond_38

    .line 4958
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollStateForListener:I

    .line 4959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnScrollListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    move/from16 v21, v0

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_38

    .line 4960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnScrollListener;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;I)V

    .line 4963
    :cond_38
    invoke-super/range {p0 .. p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    goto/16 :goto_3

    .line 4672
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 4835
    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 4145
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 5121
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v22, v0

    .line 5122
    .local v22, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v23, v0

    .line 5123
    .local v23, "y":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 5125
    .local v6, "action":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    if-nez v24, :cond_0

    .line 5126
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragSelectedItemArray:Ljava/util/ArrayList;

    .line 5130
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    if-nez v24, :cond_1

    .line 5131
    new-instance v24, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    .line 5134
    :cond_1
    const/16 v24, 0xd3

    move/from16 v0, v24

    if-ne v6, v0, :cond_2

    .line 5135
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsNeedPenSelection:Z

    .line 5136
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchdownX:I

    .line 5137
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchdownY:I

    .line 5138
    const/16 v18, 0x0

    .line 5141
    .local v18, "isCarModeOn":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "car_mode_on"

    invoke-static/range {v24 .. v25}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    const/16 v18, 0x1

    .line 5146
    :goto_0
    if-eqz v18, :cond_2

    .line 5147
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsNeedPenSelection:Z

    .line 5151
    .end local v18    # "isCarModeOn":Z
    :cond_2
    invoke-static {}, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewReflector;->isTextViewHovered()Z

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsTextSelectionStarted:Z

    .line 5152
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsTextSelectionStarted:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3

    .line 5153
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsNeedPenSelection:Z

    .line 5156
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverTopAreaHeight:I

    move/from16 v24, v0

    if-lez v24, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverBottomAreaHeight:I

    move/from16 v24, v0

    if-gtz v24, :cond_5

    .line 5157
    :cond_4
    const/16 v24, 0x1

    const/high16 v25, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    .line 5159
    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v26

    .line 5157
    invoke-static/range {v24 .. v26}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v24

    const/high16 v25, 0x3f000000    # 0.5f

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverTopAreaHeight:I

    .line 5161
    const/16 v24, 0x1

    const/high16 v25, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    .line 5163
    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v26

    .line 5161
    invoke-static/range {v24 .. v26}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v24

    const/high16 v25, 0x3f000000    # 0.5f

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverBottomAreaHeight:I

    .line 5168
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    move/from16 v24, v0

    if-eqz v24, :cond_8

    .line 5169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v14, v0, Landroid/graphics/Rect;->top:I

    .line 5170
    .local v14, "contentTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    sub-int v13, v24, v25

    .line 5176
    .local v13, "contentBottom":I
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    move/from16 v24, v0

    if-eqz v24, :cond_9

    move/from16 v0, v23

    if-lt v0, v14, :cond_6

    move/from16 v0, v23

    if-le v0, v13, :cond_9

    .line 5177
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v24

    const/16 v25, 0xd4

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_9

    .line 5178
    const/16 v24, 0x1

    .line 5556
    :goto_2
    return v24

    .line 5141
    .end local v13    # "contentBottom":I
    .end local v14    # "contentTop":I
    .restart local v18    # "isCarModeOn":Z
    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 5142
    :catch_0
    move-exception v16

    .line 5143
    .local v16, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual/range {v16 .. v16}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 5172
    .end local v16    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v18    # "isCarModeOn":Z
    :cond_8
    const/4 v14, 0x0

    .line 5173
    .restart local v14    # "contentTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v13

    .restart local v13    # "contentBottom":I
    goto :goto_1

    .line 5181
    :cond_9
    sparse-switch v6, :sswitch_data_0

    .line 5556
    :cond_a
    :goto_3
    :sswitch_0
    invoke-super/range {p0 .. p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v24

    goto :goto_2

    .line 5183
    :sswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mWindowFocusChanged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_b

    .line 5184
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mWindowFocusChanged:Z

    .line 5188
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isSupportGotoTop()Z

    move-result v24

    if-eqz v24, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopState:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 5189
    const-string v24, "SeslAbsListView"

    const-string v25, " GTP Pressed"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5190
    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setupGoToTop(I)V

    .line 5191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 5192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    fill-array-data v25, :array_0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 5193
    const/16 v24, 0x1

    goto/16 :goto_2

    .line 5197
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCstate:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    .line 5198
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsQCShown:Z

    move/from16 v24, v0

    if-eqz v24, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v24

    if-eqz v24, :cond_f

    .line 5199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 5200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5202
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 5203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5207
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 5209
    const/16 v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCstate:I

    .line 5210
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postInvalidateOnAnimation()V

    .line 5211
    const/16 v24, 0x1

    goto/16 :goto_2

    .line 5214
    :cond_f
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCstate:I

    goto/16 :goto_3

    .line 5223
    :sswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCstate:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_10

    .line 5225
    const/16 v24, 0x1

    goto/16 :goto_2

    .line 5227
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isSupportGotoTop()Z

    move-result v24

    if-eqz v24, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopState:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    .line 5228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v24

    if-nez v24, :cond_11

    .line 5229
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopState:I

    .line 5230
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->autoHide(I)V

    .line 5231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    sget-object v25, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 5233
    :cond_11
    const/16 v24, 0x1

    goto/16 :goto_2

    .line 5238
    :sswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchdownX:I

    move/from16 v24, v0

    sub-int v24, v22, v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDeltamoveX:I

    .line 5239
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchdownY:I

    move/from16 v24, v0

    sub-int v24, v23, v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDeltamoveY:I

    .line 5241
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDeltamoveX:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDeltamoveX:I

    move/from16 v25, v0

    mul-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDeltamoveY:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDeltamoveY:I

    move/from16 v26, v0

    mul-int v25, v25, v26

    add-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchSlop:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchSlop:I

    move/from16 v26, v0

    mul-int v25, v25, v26

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_12

    .line 5242
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsMovedbeforeUP:Z

    .line 5245
    :cond_12
    invoke-static {}, Lcom/samsung/android/support/sesl/core/text/SeslMultiSelectionReflector;->isNeedToScroll()Z

    move-result v19

    .line 5246
    .local v19, "needToScroll":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsNeedPenSelection:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2e

    .line 5247
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v15

    .line 5249
    .local v15, "count":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsfirstMoveEvent:Z

    move/from16 v24, v0

    if-eqz v24, :cond_17

    .line 5250
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragStartX:I

    .line 5251
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragStartY:I

    .line 5252
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-super {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->notifyMultiSelectedStart(II)V

    .line 5253
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsPenPressed:Z

    .line 5255
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->pointToPosition(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTrackedChildPosition:I

    .line 5257
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTrackedChildPosition:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_26

    .line 5258
    add-int/lit8 v17, v15, -0x1

    .local v17, "i":I
    :goto_4
    if-ltz v17, :cond_13

    .line 5259
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5260
    .local v7, "child":Landroid/view/View;
    if-eqz v7, :cond_23

    .line 5261
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v12

    .line 5262
    .local v12, "childTop":I
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 5265
    .local v8, "childBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragStartY:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v0, v12, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragStartY:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-gt v0, v8, :cond_22

    .line 5266
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTrackedChild:Landroid/view/View;

    .line 5267
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getFirstVisiblePosition()I

    move-result v24

    add-int v24, v24, v17

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTrackedChildPosition:I

    .line 5288
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childBottom":I
    .end local v12    # "childTop":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTrackedChild:Landroid/view/View;

    move-object/from16 v24, v0

    if-nez v24, :cond_15

    .line 5289
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCloseChildPositionByTop:I

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getFirstVisiblePosition()I

    move-result v25

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCloseChildByTop:Landroid/view/View;

    .line 5290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCloseChildByTop:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_14

    .line 5291
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragStartY:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCloseChildByTop:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v25

    sub-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDistanceFromCloseChildTop:I

    .line 5294
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCloseChildPositionByBottom:I

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getFirstVisiblePosition()I

    move-result v25

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCloseChildByBottom:Landroid/view/View;

    .line 5295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCloseChildByBottom:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_15

    .line 5296
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragStartY:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCloseChildByBottom:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v25

    sub-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDistanceFromCloseChildBottom:I

    .line 5303
    .end local v17    # "i":I
    :cond_15
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTrackedChild:Landroid/view/View;

    move-object/from16 v24, v0

    if-eqz v24, :cond_16

    .line 5304
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragStartY:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTrackedChild:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v25

    sub-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDistanceFromTrackedChildTop:I

    .line 5306
    :cond_16
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsfirstMoveEvent:Z

    .line 5309
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragStartX:I

    move/from16 v24, v0

    if-nez v24, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragStartY:I

    move/from16 v24, v0

    if-nez v24, :cond_18

    .line 5310
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragStartX:I

    .line 5311
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragStartY:I

    .line 5312
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-super {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->notifyMultiSelectedStart(II)V

    .line 5313
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsPenPressed:Z

    .line 5316
    :cond_18
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragEndX:I

    .line 5317
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragEndY:I

    .line 5319
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragEndY:I

    move/from16 v24, v0

    if-gez v24, :cond_27

    .line 5320
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragEndY:I

    .line 5325
    :cond_19
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->pointToPosition(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragSelectedViewPosition:I

    .line 5327
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragStartX:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragEndX:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragStartX:I

    move/from16 v24, v0

    :goto_7
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockLeft:I

    .line 5328
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragStartY:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragEndY:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragStartY:I

    move/from16 v24, v0

    :goto_8
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockTop:I

    .line 5329
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragEndX:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragStartX:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_2a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragEndX:I

    move/from16 v24, v0

    :goto_9
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockRight:I

    .line 5330
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragEndY:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragStartY:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_2b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragEndY:I

    move/from16 v24, v0

    :goto_a
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockBottom:I

    .line 5332
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_b
    move/from16 v0, v17

    if-ge v0, v15, :cond_2d

    .line 5333
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5334
    .restart local v7    # "child":Landroid/view/View;
    if-eqz v7, :cond_21

    .line 5335
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 5336
    .local v10, "childLeft":I
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v12

    .line 5337
    .restart local v12    # "childTop":I
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v11

    .line 5338
    .local v11, "childRight":I
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 5340
    .restart local v8    # "childBottom":I
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v24

    if-nez v24, :cond_21

    .line 5341
    add-int/lit8 v24, v10, 0x1

    add-int/lit8 v25, v12, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->pointToPosition(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragSelectedViewPosition:I

    .line 5342
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockLeft:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v0, v10, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockTop:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v0, v12, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockRight:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v0, v11, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockBottom:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v0, v8, :cond_20

    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockLeft:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v0, v10, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockRight:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v0, v11, :cond_1d

    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockLeft:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v0, v10, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockRight:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-gt v0, v10, :cond_1d

    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockLeft:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v0, v11, :cond_2c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockRight:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v0, v11, :cond_2c

    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockTop:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v0, v12, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockBottom:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v0, v8, :cond_20

    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockTop:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-gt v0, v12, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockBottom:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-gt v0, v12, :cond_20

    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockTop:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v0, v8, :cond_2c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockBottom:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v0, v8, :cond_2c

    .line 5345
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragSelectedViewPosition:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragSelectedViewPosition:I

    move/from16 v25, v0

    invoke-interface/range {v24 .. v25}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v24

    if-eqz v24, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragSelectedViewPosition:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_21

    .line 5346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragSelectedViewPosition:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5347
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragSelectedViewPosition:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->addToPressItemListArray(II)V

    .line 5348
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragSelectedViewPosition:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragSelectedViewPosition:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getItemIdAtPosition(I)J

    move-result-wide v26

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->notifyMultiSelectState(Landroid/view/View;IJ)Z

    .line 5332
    .end local v8    # "childBottom":I
    .end local v10    # "childLeft":I
    .end local v11    # "childRight":I
    .end local v12    # "childTop":I
    :cond_21
    :goto_c
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_b

    .line 5272
    .restart local v8    # "childBottom":I
    .restart local v12    # "childTop":I
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragStartY:I

    move/from16 v24, v0

    sub-int v24, v24, v12

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v21

    .line 5273
    .local v21, "newDistanceFromTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragStartY:I

    move/from16 v24, v0

    sub-int v24, v24, v8

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v20

    .line 5274
    .local v20, "newDistanceFromBottom":I
    add-int/lit8 v24, v15, -0x1

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_24

    .line 5275
    add-int/lit8 v24, v15, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getFirstVisiblePosition()I

    move-result v25

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCloseChildPositionByTop:I

    .line 5276
    add-int/lit8 v24, v15, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getFirstVisiblePosition()I

    move-result v25

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCloseChildPositionByBottom:I

    .line 5258
    .end local v8    # "childBottom":I
    .end local v12    # "childTop":I
    .end local v20    # "newDistanceFromBottom":I
    .end local v21    # "newDistanceFromTop":I
    :cond_23
    :goto_d
    add-int/lit8 v17, v17, -0x1

    goto/16 :goto_4

    .line 5278
    .restart local v8    # "childBottom":I
    .restart local v12    # "childTop":I
    .restart local v20    # "newDistanceFromBottom":I
    .restart local v21    # "newDistanceFromTop":I
    :cond_24
    if-gtz v21, :cond_25

    .line 5279
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getFirstVisiblePosition()I

    move-result v24

    add-int v24, v24, v17

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCloseChildPositionByTop:I

    .line 5281
    :cond_25
    if-gtz v20, :cond_23

    .line 5282
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getFirstVisiblePosition()I

    move-result v24

    add-int v24, v24, v17

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCloseChildPositionByBottom:I

    goto :goto_d

    .line 5300
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childBottom":I
    .end local v12    # "childTop":I
    .end local v17    # "i":I
    .end local v20    # "newDistanceFromBottom":I
    .end local v21    # "newDistanceFromTop":I
    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTrackedChildPosition:I

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getFirstVisiblePosition()I

    move-result v25

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTrackedChild:Landroid/view/View;

    goto/16 :goto_5

    .line 5321
    :cond_27
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragEndY:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v0, v13, :cond_19

    .line 5322
    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragEndY:I

    goto/16 :goto_6

    .line 5327
    :cond_28
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragEndX:I

    move/from16 v24, v0

    goto/16 :goto_7

    .line 5328
    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragEndY:I

    move/from16 v24, v0

    goto/16 :goto_8

    .line 5329
    :cond_2a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragStartX:I

    move/from16 v24, v0

    goto/16 :goto_9

    .line 5330
    :cond_2b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragStartY:I

    move/from16 v24, v0

    goto/16 :goto_a

    .line 5351
    .restart local v7    # "child":Landroid/view/View;
    .restart local v8    # "childBottom":I
    .restart local v10    # "childLeft":I
    .restart local v11    # "childRight":I
    .restart local v12    # "childTop":I
    .restart local v17    # "i":I
    :cond_2c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragSelectedViewPosition:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragSelectedViewPosition:I

    move/from16 v25, v0

    invoke-interface/range {v24 .. v25}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v24

    if-eqz v24, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragSelectedViewPosition:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_21

    .line 5352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragSelectedViewPosition:I

    move/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5353
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragSelectedViewPosition:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->addToPressItemListArray(II)V

    .line 5354
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragSelectedViewPosition:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragSelectedViewPosition:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getItemIdAtPosition(I)J

    move-result-wide v26

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->notifyMultiSelectState(Landroid/view/View;IJ)Z

    goto/16 :goto_c

    .line 5360
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childBottom":I
    .end local v10    # "childLeft":I
    .end local v11    # "childRight":I
    .end local v12    # "childTop":I
    :cond_2d
    const/16 v19, 0x1

    .line 5362
    .end local v15    # "count":I
    .end local v17    # "i":I
    :cond_2e
    if-eqz v19, :cond_37

    .line 5363
    add-int/lit8 v24, v14, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverTopAreaHeight:I

    move/from16 v24, v0

    add-int v24, v24, v14

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_32

    .line 5364
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverAreaEnter:Z

    move/from16 v24, v0

    if-nez v24, :cond_2f

    .line 5365
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverAreaEnter:Z

    .line 5366
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollStartTime:J

    .line 5368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnScrollListener;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2f

    .line 5369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnScrollListener;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;I)V

    .line 5374
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v24

    if-nez v24, :cond_30

    .line 5375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverRecognitionStartTime:J

    .line 5376
    const/16 v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollDirection:I

    .line 5377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 5411
    :cond_30
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsDragBlockEnabled:Z

    move/from16 v24, v0

    if-eqz v24, :cond_31

    .line 5412
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->invalidate()V

    .line 5420
    :cond_31
    :goto_f
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPreviousTextViewScroll:Z

    goto/16 :goto_3

    .line 5379
    :cond_32
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverBottomAreaHeight:I

    move/from16 v24, v0

    sub-int v24, v13, v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_34

    move/from16 v0, v23

    if-gt v0, v13, :cond_34

    .line 5380
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverAreaEnter:Z

    move/from16 v24, v0

    if-nez v24, :cond_33

    .line 5381
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverAreaEnter:Z

    .line 5382
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollStartTime:J

    .line 5384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnScrollListener;

    move-object/from16 v24, v0

    if-eqz v24, :cond_33

    .line 5385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnScrollListener;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;I)V

    .line 5389
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v24

    if-nez v24, :cond_30

    .line 5390
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverRecognitionStartTime:J

    .line 5391
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollDirection:I

    .line 5392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    .line 5395
    :cond_34
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverAreaEnter:Z

    move/from16 v24, v0

    if-eqz v24, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnScrollListener;

    move-object/from16 v24, v0

    if-eqz v24, :cond_35

    .line 5396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnScrollListener;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;I)V

    .line 5399
    :cond_35
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollStartTime:J

    .line 5400
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverRecognitionStartTime:J

    .line 5401
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverAreaEnter:Z

    .line 5404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v24

    if-eqz v24, :cond_36

    .line 5405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5408
    :cond_36
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsHoverOverscrolled:Z

    goto/16 :goto_e

    .line 5414
    :cond_37
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPreviousTextViewScroll:Z

    move/from16 v24, v0

    if-eqz v24, :cond_31

    .line 5416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v24

    if-eqz v24, :cond_31

    .line 5417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->removeMessages(I)V

    goto/16 :goto_f

    .line 5423
    .end local v19    # "needToScroll":Z
    :sswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isSupportGotoTop()Z

    move-result v24

    if-eqz v24, :cond_39

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopState:I

    move/from16 v24, v0

    if-eqz v24, :cond_39

    .line 5424
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopState:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_38

    .line 5425
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopState:I

    .line 5427
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    sget-object v25, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 5432
    :cond_39
    :sswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCstate:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3c

    .line 5434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v24

    if-eqz v24, :cond_3a

    .line 5435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5438
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v24

    if-eqz v24, :cond_3b

    .line 5439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5442
    :cond_3b
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsHoverOverscrolled:Z

    .line 5445
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCstate:I

    .line 5446
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postInvalidateOnAnimation()V

    .line 5447
    const/16 v24, 0x1

    goto/16 :goto_2

    .line 5452
    :cond_3c
    :sswitch_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsTextSelectionStarted:Z

    move/from16 v24, v0

    if-nez v24, :cond_40

    .line 5453
    const/16 v24, 0xd4

    move/from16 v0, v24

    if-ne v6, v0, :cond_3d

    .line 5454
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsFirstPenClick:Z

    move/from16 v24, v0

    if-nez v24, :cond_43

    const/16 v24, 0x1

    :goto_10
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsFirstPenClick:Z

    .line 5456
    :cond_3d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverAreaEnter:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnScrollListener;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3e

    .line 5457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnScrollListener;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;I)V

    .line 5460
    :cond_3e
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverRecognitionStartTime:J

    .line 5461
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollStartTime:J

    .line 5462
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverAreaEnter:Z

    .line 5464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragSelectedItemSize:I

    .line 5466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingCheckForDoublePenClick:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;

    move-object/from16 v24, v0

    if-nez v24, :cond_3f

    .line 5467
    new-instance v24, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$1;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingCheckForDoublePenClick:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;

    .line 5470
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingCheckForDoublePenClick:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;

    move-object/from16 v24, v0

    move/from16 v0, v22

    move-object/from16 v1, v24

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;->x:I

    .line 5471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingCheckForDoublePenClick:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;

    move-object/from16 v24, v0

    move/from16 v0, v23

    move-object/from16 v1, v24

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;->y:I

    .line 5473
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsFirstPenClick:Z

    move/from16 v24, v0

    if-eqz v24, :cond_45

    .line 5474
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsMovedbeforeUP:Z

    move/from16 v24, v0

    if-eqz v24, :cond_44

    .line 5475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingCheckForDoublePenClick:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 5486
    :cond_40
    :goto_11
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isSupportGotoTop()Z

    move-result v24

    if-eqz v24, :cond_46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopState:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_46

    .line 5487
    const-string v24, "SeslAbsListView"

    const-string v25, " GTP pressed and up"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5489
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canScrollUp()Z

    move-result v24

    if-eqz v24, :cond_42

    .line 5490
    const-string v24, "SeslAbsListView"

    const-string v25, "Can scroll top"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5491
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v9

    .line 5493
    .local v9, "childCount":I
    if-lez v9, :cond_41

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getFirstVisiblePosition()I

    move-result v24

    move/from16 v0, v24

    if-ge v9, v0, :cond_41

    .line 5494
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setSelection(I)V

    .line 5497
    :cond_41
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCanGoFuther:Z

    .line 5498
    new-instance v24, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$6;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$6;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 5505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getWidth()I

    move-result v25

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 5506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v24, v0

    const/high16 v25, 0x43fa0000    # 500.0f

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v25, v25, v26

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getWidth()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    invoke-virtual/range {v24 .. v26}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 5507
    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getWidth()I

    move-result v26

    const/16 v27, 0x1f4

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->invalidate(IIII)V

    .line 5510
    .end local v9    # "childCount":I
    :cond_42
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->autoHide(I)V

    .line 5511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    sget-object v25, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 5513
    const/16 v24, 0x1

    goto/16 :goto_2

    .line 5454
    :cond_43
    const/16 v24, 0x0

    goto/16 :goto_10

    .line 5477
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingCheckForDoublePenClick:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;

    move-object/from16 v24, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_11

    .line 5480
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingCheckForDoublePenClick:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    .line 5482
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragSelectedItemSize:I

    goto/16 :goto_11

    .line 5515
    :cond_46
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsPenPressed:Z

    .line 5516
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsfirstMoveEvent:Z

    .line 5517
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragSelectedViewPosition:I

    .line 5519
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragStartX:I

    .line 5520
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragStartY:I

    .line 5521
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragEndX:I

    .line 5522
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragEndY:I

    .line 5524
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockLeft:I

    .line 5525
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockTop:I

    .line 5526
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockRight:I

    .line 5527
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDragBlockBottom:I

    .line 5530
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTrackedChild:Landroid/view/View;

    .line 5531
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDistanceFromTrackedChildTop:I

    .line 5533
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsCloseChildSetted:Z

    .line 5534
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOldHoverScrollDirection:I

    .line 5535
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCloseChildByTop:Landroid/view/View;

    .line 5536
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCloseChildPositionByTop:I

    .line 5537
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDistanceFromCloseChildTop:I

    .line 5538
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCloseChildByBottom:Landroid/view/View;

    .line 5539
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCloseChildPositionByBottom:I

    .line 5540
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDistanceFromCloseChildBottom:I

    .line 5542
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsDragBlockEnabled:Z

    move/from16 v24, v0

    if-eqz v24, :cond_47

    .line 5543
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->invalidate()V

    .line 5547
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v24

    if-eqz v24, :cond_48

    .line 5548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5550
    :cond_48
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsMovedbeforeUP:Z

    goto/16 :goto_3

    .line 5181
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_5
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0xd3 -> :sswitch_0
        0xd4 -> :sswitch_6
        0xd5 -> :sswitch_3
    .end sparse-switch

    .line 5192
    :array_0
    .array-data 4
        0x10100a7
        0x101009e
        0x10100a1
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x0

    .line 6207
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 6208
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v10, :cond_4

    .line 6209
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getScrollY()I

    move-result v5

    .line 6210
    .local v5, "scrollY":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getClipToPadding()Z

    move-result v0

    .line 6216
    .local v0, "clipToPadding":Z
    if-eqz v0, :cond_6

    .line 6217
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingRight()I

    move-result v11

    sub-int v8, v10, v11

    .line 6218
    .local v8, "width":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingTop()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingBottom()I

    move-result v11

    sub-int v3, v10, v11

    .line 6219
    .local v3, "height":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingLeft()I

    move-result v6

    .line 6220
    .local v6, "translateX":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingTop()I

    move-result v7

    .line 6227
    .local v7, "translateY":I
    :goto_0
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v10}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v10

    if-nez v10, :cond_1

    .line 6228
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 6229
    .local v4, "restoreCount":I
    add-int v10, v6, v8

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 6230
    invoke-virtual {v11}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v11

    add-int/2addr v11, v7

    .line 6229
    invoke-virtual {p1, v6, v7, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 6231
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v10, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int v2, v10, v7

    .line 6232
    .local v2, "edgeY":I
    int-to-float v10, v6

    int-to-float v11, v2

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6233
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v10, v8, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 6234
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v10, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 6235
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->invalidateTopGlow()V

    .line 6237
    :cond_0
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 6239
    .end local v2    # "edgeY":I
    .end local v4    # "restoreCount":I
    :cond_1
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v10}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v10

    if-nez v10, :cond_4

    .line 6240
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 6241
    .restart local v4    # "restoreCount":I
    add-int v10, v7, v3

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v11}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v11

    sub-int/2addr v10, v11

    add-int v11, v6, v8

    add-int v12, v7, v3

    invoke-virtual {p1, v6, v10, v11, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 6243
    neg-int v10, v8

    add-int v1, v10, v6

    .line 6244
    .local v1, "edgeX":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v10

    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v11, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    if-eqz v0, :cond_2

    .line 6245
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingBottom()I

    move-result v9

    :cond_2
    sub-int v2, v10, v9

    .line 6246
    .restart local v2    # "edgeY":I
    int-to-float v9, v1

    int-to-float v10, v2

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6247
    const/high16 v9, 0x43340000    # 180.0f

    int-to-float v10, v8

    const/4 v11, 0x0

    invoke-virtual {p1, v9, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 6248
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9, v8, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 6249
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 6250
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->invalidateBottomGlow()V

    .line 6252
    :cond_3
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 6257
    .end local v0    # "clipToPadding":Z
    .end local v1    # "edgeX":I
    .end local v2    # "edgeY":I
    .end local v3    # "height":I
    .end local v4    # "restoreCount":I
    .end local v5    # "scrollY":I
    .end local v6    # "translateX":I
    .end local v7    # "translateY":I
    .end local v8    # "width":I
    :cond_4
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->drawQuickController(Landroid/graphics/Canvas;)V

    .line 6259
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEnableGoToTop:Z

    if-eqz v9, :cond_5

    .line 6260
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->drawGoToTop(Landroid/graphics/Canvas;)V

    .line 6262
    :cond_5
    return-void

    .line 6222
    .restart local v0    # "clipToPadding":Z
    .restart local v5    # "scrollY":I
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getWidth()I

    move-result v8

    .line 6223
    .restart local v8    # "width":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v3

    .line 6224
    .restart local v3    # "height":I
    const/4 v6, 0x0

    .line 6225
    .restart local v6    # "translateX":I
    const/4 v7, 0x0

    .restart local v7    # "translateY":I
    goto/16 :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 3570
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->drawableStateChanged()V

    .line 3571
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->updateSelectorState()V

    .line 3572
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

    .line 1664
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1665
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEnableGoToTop:Z

    .line 1667
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    move-object v0, p0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1668
    new-array v0, v8, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 1669
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1670
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v6, v4, v5, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1671
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1682
    new-array v0, v8, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 1683
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1684
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v6, v4, v5, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1685
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$2;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1696
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$3;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1720
    :cond_0
    return-void

    .line 1667
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1668
    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    .line 1682
    :array_1
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method abstract fillGap(Z)V
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 9169
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 9171
    return-void
.end method

.method findClosestMotionRow(I)I
    .locals 3
    .param p1, "y"    # I

    .prologue
    const/4 v2, -0x1

    .line 7364
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v0

    .line 7365
    .local v0, "childCount":I
    if-nez v0, :cond_1

    move v1, v2

    .line 7370
    :cond_0
    :goto_0
    return v1

    .line 7369
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->findMotionRow(I)I

    move-result v1

    .line 7370
    .local v1, "motionRow":I
    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x1

    goto :goto_0
.end method

.method abstract findMotionRow(I)I
.end method

.method public findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 8
    .param p1, "accessibilityId"    # I

    .prologue
    const/4 v6, 0x0

    .line 2183
    invoke-static {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->getAccessibilityViewId(Landroid/view/View;)I

    move-result v4

    .line 2184
    .local v4, "getAccessibilityViewId":I
    if-ne p1, v4, :cond_0

    .line 2203
    .end local p0    # "this":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
    :goto_0
    return-object p0

    .line 2188
    .restart local p0    # "this":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v7

    if-eqz v7, :cond_1

    move-object p0, v6

    .line 2189
    goto :goto_0

    .line 2192
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->getField_mChildrenCount(Landroid/view/ViewGroup;)I

    move-result v2

    .line 2193
    .local v2, "childrenCount":I
    invoke-static {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->getField_mChildren(Landroid/view/ViewGroup;)[Landroid/view/View;

    move-result-object v1

    .line 2195
    .local v1, "children":[Landroid/view/View;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v2, :cond_3

    .line 2196
    aget-object v0, v1, v5

    .line 2197
    .local v0, "child":Landroid/view/View;
    invoke-static {v0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->findViewByAccessibilityIdTraversal(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    .line 2198
    .local v3, "foundView":Landroid/view/View;
    if-eqz v3, :cond_2

    move-object p0, v3

    .line 2199
    goto :goto_0

    .line 2195
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "foundView":Landroid/view/View;
    :cond_3
    move-object p0, v6

    .line 2203
    goto :goto_0
.end method

.method public fling(I)V
    .locals 1
    .param p1, "velocityY"    # I

    .prologue
    .line 6153
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 6154
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    .line 6156
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->reportScrollStateChange(I)V

    .line 6157
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->start(I)V

    .line 6158
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 8232
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 8238
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 8243
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2026
    const-class v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "focusedView"    # Landroid/view/View;

    .prologue
    .line 2834
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2835
    .local v0, "viewParent":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    if-eq v0, p0, :cond_0

    move-object p1, v0

    .line 2836
    check-cast p1, Landroid/view/View;

    .line 2837
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 2840
    :cond_0
    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 2841
    const/4 p1, 0x0

    .line 2844
    .end local p1    # "focusedView":Landroid/view/View;
    :cond_1
    return-object p1
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 2731
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v1

    .line 2732
    .local v1, "count":I
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 2733
    .local v2, "fadeEdge":F
    if-nez v1, :cond_1

    .line 2743
    .end local v2    # "fadeEdge":F
    :cond_0
    :goto_0
    return v2

    .line 2736
    .restart local v2    # "fadeEdge":F
    :cond_1
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 2737
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    .line 2740
    :cond_2
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2741
    .local v0, "bottom":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v4

    .line 2742
    .local v4, "height":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 2743
    .local v3, "fadeLength":F
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingBottom()I

    move-result v5

    sub-int v5, v4, v5

    if-le v0, v5, :cond_0

    sub-int v5, v0, v4

    .line 2744
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v2, v5, v3

    goto :goto_0
.end method

.method protected getBottomPaddingOffset()I
    .locals 1

    .prologue
    .line 3356
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getFlagClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingBottom()I

    move-result v0

    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 8310
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 1279
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    .line 1343
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_2

    .line 1344
    :cond_0
    const/4 v4, 0x0

    new-array v3, v4, [J

    .line 1355
    :cond_1
    return-object v3

    .line 1347
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1348
    .local v2, "idStates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1349
    .local v0, "count":I
    new-array v3, v0, [J

    .line 1351
    .local v3, "ids":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1352
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 1351
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1311
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1312
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 1315
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 1328
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 1329
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1331
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 1560
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceMode:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 4003
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 2269
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2270
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 2273
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2274
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2279
    :goto_0
    return-void

    .line 2277
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 7306
    const/4 v0, 0x0

    return v0
.end method

.method protected getGroupFlags(Landroid/view/ViewGroup;)I
    .locals 1
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 10084
    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->getField_mGroupFlags(Landroid/view/ViewGroup;)I

    move-result v0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 7296
    const/4 v0, 0x0

    return v0
.end method

.method getHeightForPosition(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 9089
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getFirstVisiblePosition()I

    move-result v1

    .line 9090
    .local v1, "firstVisiblePosition":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v0

    .line 9091
    .local v0, "childCount":I
    sub-int v3, p1, v1

    .line 9092
    .local v3, "index":I
    if-ltz v3, :cond_0

    if-ge v3, v0, :cond_0

    .line 9094
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 9095
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 9102
    :goto_0
    return v2

    .line 9098
    .end local v4    # "view":Landroid/view/View;
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v4

    .line 9099
    .restart local v4    # "view":Landroid/view/View;
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mWidthMeasureSpec:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 9100
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 9101
    .local v2, "height":I
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;

    invoke-virtual {v5, v4, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method protected getItemCount()I
    .locals 2

    .prologue
    .line 6922
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 6923
    .local v0, "adapter":Landroid/widget/Adapter;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    goto :goto_0
.end method

.method protected getLeftPaddingOffset()I
    .locals 1

    .prologue
    .line 3331
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getFlagClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingLeft()I

    move-result v0

    neg-int v0, v0

    goto :goto_0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 2920
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 2932
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 2944
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 2908
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightPaddingOffset()I
    .locals 1

    .prologue
    .line 3348
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getFlagClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingRight()I

    move-result v0

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2892
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 2893
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedPosition:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2895
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getSelectionModeForAccessibility()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2052
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChoiceMode()I

    move-result v0

    .line 2053
    .local v0, "choiceMode":I
    packed-switch v0, :pswitch_data_0

    .line 2062
    :goto_0
    :pswitch_0
    return v1

    .line 2057
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 2060
    :pswitch_2
    const/4 v1, 0x2

    goto :goto_0

    .line 2053
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3483
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 8277
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2591
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2592
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2594
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 2714
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v0

    .line 2715
    .local v0, "count":I
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 2716
    .local v1, "fadeEdge":F
    if-nez v0, :cond_1

    .line 2725
    .end local v1    # "fadeEdge":F
    :cond_0
    :goto_0
    return v1

    .line 2719
    .restart local v1    # "fadeEdge":F
    :cond_1
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    if-lez v4, :cond_2

    .line 2720
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 2723
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2724
    .local v3, "top":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 2725
    .local v2, "fadeLength":F
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingTop()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingTop()I

    move-result v4

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_0
.end method

.method protected getTopPaddingOffset()I
    .locals 1

    .prologue
    .line 3340
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getFlagClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingTop()I

    move-result v0

    neg-int v0, v0

    goto :goto_0
.end method

.method public getTouchSlop()I
    .locals 1

    .prologue
    .line 1099
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchSlop:I

    return v0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 8272
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTranscriptMode:I

    return v0
.end method

.method public getVerticalScrollbarWidth()I
    .locals 2

    .prologue
    .line 1888
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1889
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1893
    :goto_0
    return v0

    .line 1890
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFluidScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFluidScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1891
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFluidScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 1893
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    goto :goto_0
.end method

.method protected handleDataChanged()V
    .locals 15

    .prologue
    const/4 v14, 0x5

    const/4 v13, -0x1

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 7556
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    .line 7557
    .local v1, "count":I
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLastHandledItemCount:I

    .line 7558
    .local v4, "lastHandledItemCount":I
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    iput v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLastHandledItemCount:I

    .line 7561
    iget-boolean v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsMultiFocusEnabled:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_0

    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOldAdapterItemCount:I

    if-eq v10, v11, :cond_0

    .line 7562
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPressItemListArray:Ljava/util/ArrayList;

    .line 7563
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->resetPressItemListArray()V

    .line 7564
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    iput v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOldAdapterItemCount:I

    .line 7567
    :cond_0
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceMode:I

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 7568
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->confirmCheckedPositionsById()V

    .line 7572
    :cond_1
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;

    invoke-virtual {v10}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->clearTransientStateViews()V

    .line 7574
    if-lez v1, :cond_f

    .line 7579
    iget-boolean v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mNeedSync:Z

    if-eqz v10, :cond_8

    .line 7581
    iput-boolean v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mNeedSync:Z

    .line 7582
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingSync:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;

    .line 7584
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTranscriptMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 7585
    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLayoutMode:I

    .line 7701
    :cond_2
    :goto_0
    return-void

    .line 7587
    :cond_3
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTranscriptMode:I

    if-ne v10, v9, :cond_7

    .line 7588
    iget-boolean v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mForceTranscriptScroll:Z

    if-eqz v10, :cond_4

    .line 7589
    iput-boolean v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mForceTranscriptScroll:Z

    .line 7590
    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLayoutMode:I

    goto :goto_0

    .line 7593
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v0

    .line 7594
    .local v0, "childCount":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingBottom()I

    move-result v11

    sub-int v5, v10, v11

    .line 7595
    .local v5, "listBottom":I
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7596
    .local v3, "lastChild":Landroid/view/View;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 7597
    .local v2, "lastBottom":I
    :goto_1
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    add-int/2addr v10, v0

    if-lt v10, v4, :cond_6

    if-gt v2, v5, :cond_6

    .line 7599
    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLayoutMode:I

    goto :goto_0

    .end local v2    # "lastBottom":I
    :cond_5
    move v2, v5

    .line 7596
    goto :goto_1

    .line 7604
    .restart local v2    # "lastBottom":I
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->awakenScrollBars()Z

    .line 7607
    .end local v0    # "childCount":I
    .end local v2    # "lastBottom":I
    .end local v3    # "lastChild":Landroid/view/View;
    .end local v5    # "listBottom":I
    :cond_7
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSyncMode:I

    packed-switch v10, :pswitch_data_0

    .line 7655
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isInTouchMode()Z

    move-result v10

    if-nez v10, :cond_e

    .line 7657
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getSelectedItemPosition()I

    move-result v6

    .line 7660
    .local v6, "newPos":I
    if-lt v6, v1, :cond_9

    .line 7661
    add-int/lit8 v6, v1, -0x1

    .line 7663
    :cond_9
    if-gez v6, :cond_a

    .line 7664
    const/4 v6, 0x0

    .line 7668
    :cond_a
    invoke-virtual {p0, v6, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 7670
    .local v7, "selectablePos":I
    if-ltz v7, :cond_d

    .line 7671
    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 7609
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isInTouchMode()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 7614
    iput v14, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLayoutMode:I

    .line 7615
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSyncPosition:I

    goto :goto_0

    .line 7621
    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->findSyncPosition()I

    move-result v6

    .line 7622
    .restart local v6    # "newPos":I
    if-ltz v6, :cond_8

    .line 7624
    invoke-virtual {p0, v6, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 7625
    .restart local v7    # "selectablePos":I
    if-ne v7, v6, :cond_8

    .line 7627
    iput v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSyncPosition:I

    .line 7629
    iget-wide v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSyncHeight:J

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_c

    .line 7632
    iput v14, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLayoutMode:I

    .line 7640
    :goto_2
    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 7636
    :cond_c
    const/4 v8, 0x2

    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLayoutMode:I

    goto :goto_2

    .line 7648
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_1
    iput v14, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLayoutMode:I

    .line 7649
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSyncPosition:I

    goto/16 :goto_0

    .line 7675
    .restart local v6    # "newPos":I
    .restart local v7    # "selectablePos":I
    :cond_d
    invoke-virtual {p0, v6, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 7676
    if-ltz v7, :cond_f

    .line 7677
    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 7684
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :cond_e
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mResurrectToPosition:I

    if-gez v10, :cond_2

    .line 7692
    :cond_f
    iget-boolean v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mStackFromBottom:Z

    if-eqz v10, :cond_10

    :goto_3
    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLayoutMode:I

    .line 7693
    iput v13, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedPosition:I

    .line 7694
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedRowId:J

    .line 7695
    iput v13, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mNextSelectedPosition:I

    .line 7696
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mNextSelectedRowId:J

    .line 7697
    iput-boolean v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mNeedSync:Z

    .line 7698
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingSync:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;

    .line 7699
    iput v13, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectorPosition:I

    .line 7700
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->checkSelectionChanged()V

    goto/16 :goto_0

    :cond_10
    move v8, v9

    .line 7692
    goto :goto_3

    .line 7607
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    .prologue
    .line 8154
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 7320
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedPosition:I

    if-eq v0, v2, :cond_2

    .line 7321
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 7322
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedPosition:I

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mResurrectToPosition:I

    .line 7324
    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mNextSelectedPosition:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1

    .line 7325
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mNextSelectedPosition:I

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mResurrectToPosition:I

    .line 7327
    :cond_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setSelectedPositionInt(I)V

    .line 7328
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setNextSelectedPositionInt(I)V

    .line 7329
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedTop:I

    .line 7330
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectorPosition:I

    .line 7332
    :cond_2
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 7377
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDataChanged:Z

    .line 7378
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->rememberSyncState()V

    .line 7379
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->requestLayout()V

    .line 7380
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->invalidate()V

    .line 7381
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1985
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    if-eqz v0, :cond_2

    .line 1986
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->onScroll(III)V

    .line 1990
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1991
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnScrollListener;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnScrollListener;->onScroll(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;III)V

    .line 1993
    :cond_1
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->onScrollChanged(IIII)V

    .line 1994
    return-void

    .line 1987
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFluidScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    if-eqz v0, :cond_0

    .line 1988
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFluidScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->onScroll(III)V

    goto :goto_0
.end method

.method public isConfirmKey(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 10616
    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFastScrollAlwaysVisible()Z
    .locals 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1879
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    if-nez v2, :cond_2

    .line 1880
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScrollEnabled:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScrollAlwaysVisible:Z

    if-eqz v2, :cond_1

    .line 1882
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1880
    goto :goto_0

    .line 1882
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->isAlwaysShowEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1904
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    if-nez v0, :cond_0

    .line 1905
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScrollEnabled:Z

    .line 1907
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->isEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public isFluidScrollEnabled()Z
    .locals 1

    .prologue
    .line 10063
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFluidScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFluidScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->isEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFluidScrollEnabled:Z

    goto :goto_0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 7815
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFiltered:Z

    return v0
.end method

.method public isInScrollingContainer()Z
    .locals 2

    .prologue
    .line 10604
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 10605
    .local v0, "p":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 10606
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10607
    const/4 v1, 0x1

    .line 10611
    :goto_1
    return v1

    .line 10609
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 10611
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isItemChecked(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1294
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1295
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1298
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLayoutRtl()Z
    .locals 1

    .prologue
    .line 10104
    invoke-static {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method isLockScreenMode()Z
    .locals 3

    .prologue
    .line 4613
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 4615
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    return v1
.end method

.method public isMultiFocusEnabled()Z
    .locals 1

    .prologue
    .line 9445
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsMultiFocusEnabled:Z

    return v0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 1

    .prologue
    .line 3323
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getFlagClipToPadding()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2217
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSetCustomMultiChoiceMode()Z
    .locals 1

    .prologue
    .line 1655
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCustomMultiChoiceMode:Z

    return v0
.end method

.method protected isShowingScrollbar()Z
    .locals 1

    .prologue
    .line 6911
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFluidScrollEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1968
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2294
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2264
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isUsingAdapterView()Z
    .locals 1

    .prologue
    .line 6934
    const/4 v0, 0x1

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 1934
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isFastScrollEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isFluidScrollEnabled()Z

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

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 3616
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->jumpDrawablesToCurrentState()V

    .line 3617
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 3618
    :cond_0
    return-void
.end method

.method keyPressed()V
    .locals 12

    .prologue
    const/4 v10, 0x1

    .line 3491
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isClickable()Z

    move-result v8

    if-nez v8, :cond_1

    .line 3537
    :cond_0
    :goto_0
    return-void

    .line 3495
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3496
    .local v3, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3497
    .local v4, "selectorRect":Landroid/graphics/Rect;
    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isFocused()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->touchModeDrawsInPressedState()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3498
    :cond_2
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 3500
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedPosition:I

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    sub-int/2addr v8, v9

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3502
    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_3

    .line 3503
    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    move-result v8

    if-nez v8, :cond_0

    .line 3504
    invoke-virtual {v5, v10}, Landroid/view/View;->setPressed(Z)V

    .line 3506
    :cond_3
    invoke-virtual {p0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setPressed(Z)V

    .line 3509
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3510
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v6

    .line 3511
    .local v6, "x":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    .line 3514
    .local v7, "y":F
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isLongClickable()Z

    move-result v2

    .line 3515
    .local v2, "longClickable":Z
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3516
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    instance-of v8, v1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v8, :cond_4

    .line 3517
    if-eqz v2, :cond_5

    .line 3518
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .line 3519
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v8

    .line 3518
    invoke-virtual {v1, v8}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 3525
    :cond_4
    :goto_1
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 3527
    if-eqz v2, :cond_0

    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDataChanged:Z

    if-nez v8, :cond_0

    .line 3528
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingCheckForKeyLongPress:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForKeyLongPress;

    if-nez v8, :cond_6

    .line 3529
    new-instance v8, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForKeyLongPress;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForKeyLongPress;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$1;)V

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingCheckForKeyLongPress:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForKeyLongPress;

    .line 3533
    :goto_2
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingCheckForKeyLongPress:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForKeyLongPress;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 3534
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingCheckForKeyLongPress:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {p0, v8, v10, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3521
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_5
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1

    .line 3531
    :cond_6
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingCheckForKeyLongPress:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForKeyLongPress;

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 2826
    return-void
.end method

.method public notifyKeyPressState(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1518
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsShiftkeyPressed:Z

    if-nez v0, :cond_0

    .line 1519
    const/4 v0, 0x0

    .line 1521
    :goto_0
    return v0

    :cond_0
    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsShiftkeyPressed:Z

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-super/range {v1 .. v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->notifyKeyPress(Landroid/view/View;IJZ)Z

    move-result v0

    goto :goto_0
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "isScrap"    # [Z

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2960
    aput-boolean v9, p2, v9

    .line 2961
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    .line 2965
    .local v5, "viewType":I
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;

    invoke-virtual {v7, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v3

    .line 2966
    .local v3, "transientView":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 2967
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;

    .line 2970
    .local v1, "params":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    iget v6, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->viewType:I

    if-ne v6, v5, :cond_0

    .line 2971
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2974
    .local v4, "updatedView":Landroid/view/View;
    if-eq v4, v3, :cond_0

    .line 2975
    invoke-direct {p0, v4, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 2976
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;

    invoke-virtual {v6, v4, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2980
    .end local v4    # "updatedView":Landroid/view/View;
    :cond_0
    aput-boolean v10, p2, v9

    .line 2983
    invoke-static {v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->dispatchFinishTemporaryDetach(Landroid/view/View;)V

    .line 3046
    .end local v1    # "params":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    .end local v3    # "transientView":Landroid/view/View;
    :goto_0
    return-object v3

    .line 2987
    .restart local v3    # "transientView":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    .line 2989
    .local v2, "scrapView":Landroid/view/View;
    const/4 v7, -0x2

    if-eq v5, v7, :cond_3

    .line 2990
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;

    invoke-virtual {v7, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v2

    .line 2995
    :goto_1
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2997
    .local v0, "child":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 2998
    if-eq v0, v2, :cond_4

    .line 3000
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;

    invoke-virtual {v7, v2, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3017
    :cond_2
    :goto_2
    if-nez v0, :cond_7

    .line 3018
    const-string v7, "SeslAbsListView"

    const-string v8, " try again to check child on obtainview"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p1, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3020
    if-nez v0, :cond_7

    .line 3021
    const-string v7, "SeslAbsListView"

    const-string v8, " child is null again"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3022
    const-string v7, "SeslAbsListView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " position = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3023
    const-string v7, "SeslAbsListView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mAdapter ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3024
    const-string v7, "SeslAbsListView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " getChildCount = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3025
    const-string v7, "SeslAbsListView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mAdapter.getCount = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v6

    .line 3026
    goto/16 :goto_0

    .line 2992
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    const-string v7, "SeslAbsListView"

    const-string/jumbo v8, "viewType is heaer or footer"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3002
    .restart local v0    # "child":Landroid/view/View;
    :cond_4
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    if-lt v7, v8, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->isTemporarilyDetached()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3003
    :cond_5
    aput-boolean v10, p2, v9

    .line 3006
    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->dispatchFinishTemporaryDetach(Landroid/view/View;)V

    goto/16 :goto_2

    .line 3011
    :cond_6
    aput-boolean v9, p2, v9

    goto/16 :goto_2

    .line 3030
    :cond_7
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCacheColorHint:I

    if-eqz v6, :cond_8

    .line 3031
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v6}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 3034
    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v6

    if-nez v6, :cond_9

    .line 3035
    invoke-virtual {v0, v10}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 3038
    :cond_9
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 3040
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAccessibilityDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$ListItemAccessibilityDelegate;

    if-nez v6, :cond_a

    .line 3041
    new-instance v6, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$ListItemAccessibilityDelegate;

    invoke-direct {v6, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$ListItemAccessibilityDelegate;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAccessibilityDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$ListItemAccessibilityDelegate;

    .line 3044
    :cond_a
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAccessibilityDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$ListItemAccessibilityDelegate;

    invoke-virtual {v0, v6}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    move-object v3, v0

    .line 3046
    goto/16 :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 3622
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->onAttachedToWindow()V

    .line 3624
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3625
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3626
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_0

    .line 3627
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3630
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;

    if-nez v1, :cond_1

    .line 3631
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;

    .line 3632
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3635
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDataChanged:Z

    .line 3636
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOldItemCount:I

    .line 3637
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    .line 3641
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3642
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    if-eqz v1, :cond_3

    .line 3643
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getVerticalScrollbarPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->setScrollbarPosition(I)V

    .line 3648
    :cond_2
    :goto_0
    return-void

    .line 3644
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFluidScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    if-eqz v1, :cond_2

    .line 3645
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFluidScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getVerticalScrollbarPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->setScrollbarPosition(I)V

    goto :goto_0
.end method

.method public onCancelPendingInputEvents()V
    .locals 1

    .prologue
    .line 3807
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->onCancelPendingInputEvents()V

    .line 3808
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPerformClick:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;

    if-eqz v0, :cond_0

    .line 3809
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPerformClick:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3811
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingCheckForTap:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;

    if-eqz v0, :cond_1

    .line 3812
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingCheckForTap:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3814
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingCheckForLongPress:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForLongPress;

    if-eqz v0, :cond_2

    .line 3815
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingCheckForLongPress:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForLongPress;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3817
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingCheckForKeyLongPress:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForKeyLongPress;

    if-eqz v0, :cond_3

    .line 3818
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingCheckForKeyLongPress:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForKeyLongPress;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3820
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingCheckForDoublePenClick:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;

    if-eqz v0, :cond_4

    .line 3821
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingCheckForDoublePenClick:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForDoublePenClick;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3823
    :cond_4
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 7920
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7921
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPublicInputConnection:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$InputConnectionWrapper;

    if-nez v0, :cond_0

    .line 7922
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 7923
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$InputConnectionWrapper;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$InputConnectionWrapper;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Landroid/view/inputmethod/EditorInfo;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPublicInputConnection:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$InputConnectionWrapper;

    .line 7925
    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 7926
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7927
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPublicInputConnection:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$InputConnectionWrapper;

    .line 7929
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 3652
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->onDetachedFromWindow()V

    .line 3654
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsDetaching:Z

    .line 3657
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->dismissPopup()V

    .line 3660
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->clear()V

    .line 3662
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3663
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3664
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 3665
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3666
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 3669
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 3670
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3671
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;

    .line 3674
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    if-eqz v1, :cond_2

    .line 3675
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3678
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    if-eqz v1, :cond_3

    .line 3679
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;->stop()V

    .line 3682
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_4

    .line 3683
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3686
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPerformClick:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;

    if-eqz v1, :cond_5

    .line 3687
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPerformClick:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$PerformClick;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3690
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    .line 3691
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3692
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3695
    :cond_6
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    if-eq v1, v4, :cond_7

    .line 3696
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    .line 3700
    :cond_7
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCstate:I

    if-eqz v1, :cond_8

    .line 3701
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCstate:I

    .line 3704
    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->releaseAllBoosters()V

    .line 3705
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsDetaching:Z

    .line 3706
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .param p1, "hint"    # I

    .prologue
    .line 7705
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->onDisplayHint(I)V

    .line 7706
    sparse-switch p1, :sswitch_data_0

    .line 7718
    :cond_0
    :goto_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPopupHidden:Z

    .line 7719
    return-void

    .line 7708
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7709
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->dismissPopup()V

    goto :goto_0

    .line 7713
    :sswitch_1
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7714
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->showPopup()V

    goto :goto_0

    .line 7718
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 7706
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onFilterComplete(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 8224
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 8225
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mResurrectToPosition:I

    .line 8226
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->resurrectSelection()Z

    .line 8228
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2599
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2600
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedPosition:I

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2601
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 2604
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDataChanged:Z

    .line 2605
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOldItemCount:I

    .line 2606
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    .line 2608
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->resurrectSelection()Z

    .line 2610
    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 6107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_0

    .line 6108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 6140
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :goto_1
    return v5

    .line 6110
    :pswitch_1
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 6111
    const/16 v6, 0x9

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    .line 6113
    .local v4, "vscroll":F
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 6114
    .local v2, "outValue":Landroid/util/TypedValue;
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x101004d

    invoke-virtual {v6, v7, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 6115
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v3

    .line 6117
    .local v3, "verticalScrollFactor":F
    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-eqz v6, :cond_0

    .line 6118
    mul-float v6, v4, v3

    float-to-int v1, v6

    .line 6119
    .local v1, "delta":I
    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->trackMotionScroll(II)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 6127
    .end local v1    # "delta":I
    .end local v2    # "outValue":Landroid/util/TypedValue;
    .end local v3    # "verticalScrollFactor":F
    .end local v4    # "vscroll":F
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v0

    .line 6128
    .local v0, "actionButton":I
    const/16 v6, 0x20

    if-eq v0, v6, :cond_1

    const/4 v6, 0x2

    if-ne v0, v6, :cond_0

    :cond_1
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    if-ne v6, v5, :cond_0

    .line 6131
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->performStylusButtonPressAction(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6132
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingCheckForLongPress:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForLongPress;

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6133
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingCheckForTap:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 6108
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 8159
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8161
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPopupHidden:Z

    if-nez v0, :cond_0

    .line 8162
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->showPopup()V

    .line 8171
    :cond_0
    :goto_0
    return-void

    .line 8166
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8167
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/16 v2, 0x17

    const/4 v1, 0x1

    .line 2032
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2033
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2034
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2035
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2036
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_0

    .line 2037
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2039
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2041
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canScrollDown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2042
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2043
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_2

    .line 2044
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2046
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2049
    :cond_3
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v3, 0x1

    .line 3155
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 3189
    :cond_0
    :goto_0
    return-void

    .line 3161
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 3162
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;

    if-eqz v2, :cond_3

    .line 3163
    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;

    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->isEnabled:Z

    .line 3168
    .local v0, "isItemEnabled":Z
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_4

    .line 3169
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    goto :goto_0

    .line 3165
    .end local v0    # "isItemEnabled":Z
    .restart local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "isItemEnabled":Z
    goto :goto_1

    .line 3173
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getSelectedItemPosition()I

    move-result v2

    if-ne p2, v2, :cond_6

    .line 3174
    invoke-virtual {p3, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 3175
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_SELECTION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 3180
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3181
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 3182
    invoke-virtual {p3, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 3185
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3186
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 3187
    invoke-virtual {p3, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    goto :goto_0

    .line 3177
    :cond_6
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SELECT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_2
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 6295
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6301
    :cond_0
    :goto_0
    return v0

    .line 6297
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFluidScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFluidScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6301
    :cond_2
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x4

    const/4 v10, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 6306
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 6309
    .local v0, "actionMasked":I
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    if-eqz v9, :cond_0

    .line 6310
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;->stop()V

    .line 6313
    :cond_0
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsDetaching:Z

    if-nez v9, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isAttachedToWindow()Z

    move-result v9

    if-nez v9, :cond_3

    :cond_1
    move v7, v8

    .line 6397
    :cond_2
    :goto_0
    return v7

    .line 6321
    :cond_3
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    invoke-virtual {v9, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 6323
    :cond_4
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFluidScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFluidScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    invoke-virtual {v9, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 6327
    :cond_5
    packed-switch v0, :pswitch_data_0

    :cond_6
    :goto_1
    :pswitch_0
    move v7, v8

    .line 6397
    goto :goto_0

    .line 6329
    :pswitch_1
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    .line 6330
    .local v3, "touchMode":I
    const/4 v9, 0x6

    if-eq v3, v9, :cond_7

    const/4 v9, 0x5

    if-ne v3, v9, :cond_8

    .line 6331
    :cond_7
    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionCorrection:I

    goto :goto_0

    .line 6335
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v5, v9

    .line 6336
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v6, v9

    .line 6337
    .local v6, "y":I
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mActivePointerId:I

    .line 6339
    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->findMotionRow(I)I

    move-result v1

    .line 6340
    .local v1, "motionPosition":I
    if-eq v3, v11, :cond_9

    if-ltz v1, :cond_9

    .line 6343
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    sub-int v9, v1, v9

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 6344
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionViewOriginalTop:I

    .line 6345
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionX:I

    .line 6346
    iput v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionY:I

    .line 6347
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionPosition:I

    .line 6348
    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    .line 6349
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->clearScrollingCache()V

    .line 6351
    .end local v4    # "v":Landroid/view/View;
    :cond_9
    const/high16 v9, -0x80000000

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLastY:I

    .line 6352
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->initOrResetVelocityTracker()V

    .line 6353
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 6354
    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mNestedYOffset:I

    .line 6355
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->startNestedScroll(I)Z

    .line 6356
    if-ne v3, v11, :cond_6

    goto :goto_0

    .line 6363
    .end local v1    # "motionPosition":I
    .end local v3    # "touchMode":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :pswitch_2
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    packed-switch v9, :pswitch_data_1

    goto :goto_1

    .line 6365
    :pswitch_3
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 6366
    .local v2, "pointerIndex":I
    if-ne v2, v10, :cond_a

    .line 6367
    const/4 v2, 0x0

    .line 6368
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mActivePointerId:I

    .line 6370
    :cond_a
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v6, v9

    .line 6371
    .restart local v6    # "y":I
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->initVelocityTrackerIfNotExists()V

    .line 6372
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 6373
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v9, v9

    const/4 v10, 0x0

    invoke-direct {p0, v9, v6, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto/16 :goto_0

    .line 6383
    .end local v2    # "pointerIndex":I
    .end local v6    # "y":I
    :pswitch_4
    iput v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    .line 6384
    iput v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mActivePointerId:I

    .line 6385
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->recycleVelocityTracker()V

    .line 6386
    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->reportScrollStateChange(I)V

    .line 6387
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->stopNestedScroll()V

    goto/16 :goto_1

    .line 6392
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 6327
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 6363
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method onJumpScrollToTopFinished()V
    .locals 2

    .prologue
    .line 6011
    const-string v0, "SeslAbsListView"

    const-string v1, "onJumpScrollToTopFinished()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6012
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 4047
    sparse-switch p1, :sswitch_data_0

    .line 4061
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 4050
    :sswitch_0
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_0

    .line 4054
    :sswitch_1
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsShiftkeyPressed:Z

    goto :goto_0

    .line 4057
    :sswitch_2
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsCtrlkeyPressed:Z

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->resetPressItemListArray()V

    goto :goto_0

    .line 4047
    :sswitch_data_0
    .sparse-switch
        0x1f -> :sswitch_2
        0x3b -> :sswitch_1
        0x3c -> :sswitch_1
        0x71 -> :sswitch_0
        0x72 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v6, -0x1

    const/4 v8, 0x0

    .line 4066
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isConfirmKey(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4067
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4138
    :goto_0
    return v3

    .line 4070
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isPressed()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedPosition:I

    if-ltz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedPosition:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4072
    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedPosition:I

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4074
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedPosition:I

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4075
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 4076
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedPosition:I

    iget-wide v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v2, v4, v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 4077
    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    .line 4079
    :cond_1
    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setPressed(Z)V

    goto :goto_0

    .line 4084
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 4138
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 4089
    :sswitch_0
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsShiftkeyPressed:Z

    if-eqz v3, :cond_4

    .line 4090
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOldKeyCode:I

    if-nez v3, :cond_6

    .line 4091
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOldKeyCode:I

    .line 4097
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedPosition:I

    if-ltz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedPosition:I

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 4098
    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 4099
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCurrentFocusPosition:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4100
    .local v0, "currentView":Landroid/view/View;
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedPosition:I

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4101
    .local v1, "selectedView":Landroid/view/View;
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsShiftkeyPressed:Z

    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    .line 4102
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCurrentKeyCode:I

    if-nez v3, :cond_7

    .line 4103
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->resetPressItemListArray()V

    .line 4104
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCurrentFocusPosition:I

    iget-wide v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->notifyKeyPressState(Landroid/view/View;IJ)Z

    .line 4105
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedPosition:I

    iget-wide v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->notifyKeyPressState(Landroid/view/View;IJ)Z

    .line 4106
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCurrentFocusPosition:I

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedPosition:I

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->addToPressItemListArray(II)V

    .line 4107
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCurrentFocusPosition:I

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPressedPoint:I

    .line 4115
    :cond_5
    :goto_3
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCurrentKeyCode:I

    if-eqz v3, :cond_3

    .line 4116
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCurrentKeyCode:I

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOldKeyCode:I

    goto :goto_1

    .line 4093
    .end local v0    # "currentView":Landroid/view/View;
    .end local v1    # "selectedView":Landroid/view/View;
    :cond_6
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCurrentKeyCode:I

    goto :goto_2

    .line 4109
    .restart local v0    # "currentView":Landroid/view/View;
    .restart local v1    # "selectedView":Landroid/view/View;
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->resetPressItemListArray()V

    .line 4110
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedPosition:I

    iget-wide v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->notifyKeyPressState(Landroid/view/View;IJ)Z

    .line 4111
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPressedPoint:I

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedPosition:I

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->addToPressItemListArray(II)V

    goto :goto_3

    .line 4122
    .end local v0    # "currentView":Landroid/view/View;
    .end local v1    # "selectedView":Landroid/view/View;
    :sswitch_1
    iput-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_1

    .line 4126
    :sswitch_2
    iput-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsShiftkeyPressed:Z

    .line 4127
    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOldKeyCode:I

    .line 4128
    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCurrentKeyCode:I

    .line 4129
    iput v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPressedPoint:I

    .line 4130
    iput v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSecondPressedPoint:I

    goto/16 :goto_1

    .line 4133
    :sswitch_3
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsCtrlkeyPressed:Z

    if-eqz v3, :cond_3

    .line 4134
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->resetPressItemListArray()V

    goto/16 :goto_1

    .line 4084
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1f -> :sswitch_3
        0x3b -> :sswitch_2
        0x3c -> :sswitch_2
        0x71 -> :sswitch_1
        0x72 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2776
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->onLayout(ZIIII)V

    .line 2778
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mInLayout:Z

    .line 2780
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v0

    .line 2781
    .local v0, "childCount":I
    if-eqz p1, :cond_1

    .line 2782
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2783
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 2782
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2785
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->markChildrenDirty()V

    .line 2788
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->layoutChildren()V

    .line 2789
    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mInLayout:Z

    .line 2791
    if-eqz p1, :cond_2

    .line 2792
    const-string v2, "SeslAbsListView"

    const-string v3, "onSizeChange"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2793
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopSizeChnage:Z

    .line 2794
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setupGoToTop(I)V

    .line 2795
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->autoHide(I)V

    .line 2798
    :cond_2
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOverscrollMax:I

    .line 2801
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    if-eqz v2, :cond_4

    .line 2802
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->onItemCountChanged(II)V

    .line 2805
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2806
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mInLayout:Z

    .line 2807
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->layoutChildren()V

    .line 2808
    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mInLayout:Z

    .line 2820
    :cond_3
    :goto_1
    return-void

    .line 2810
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFluidScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    if-eqz v2, :cond_3

    .line 2811
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFluidScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->onItemCountChanged(II)V

    .line 2814
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2815
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mInLayout:Z

    .line 2816
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->layoutChildren()V

    .line 2817
    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mInLayout:Z

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x1

    .line 2750
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_0

    .line 2751
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->useDefaultSelector()V

    .line 2753
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 2754
    .local v4, "listPadding":Landroid/graphics/Rect;
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectionLeftPadding:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingLeft()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->left:I

    .line 2755
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectionTopPadding:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->top:I

    .line 2756
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectionRightPadding:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 2757
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectionBottomPadding:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 2760
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTranscriptMode:I

    if-ne v6, v5, :cond_1

    .line 2761
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v0

    .line 2762
    .local v0, "childCount":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingBottom()I

    move-result v7

    sub-int v3, v6, v7

    .line 2763
    .local v3, "listBottom":I
    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2764
    .local v2, "lastChild":Landroid/view/View;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 2765
    .local v1, "lastBottom":I
    :goto_0
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    add-int/2addr v6, v0

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLastHandledItemCount:I

    if-lt v6, v7, :cond_3

    if-gt v1, v3, :cond_3

    :goto_1
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mForceTranscriptScroll:Z

    .line 2768
    .end local v0    # "childCount":I
    .end local v1    # "lastBottom":I
    .end local v2    # "lastChild":Landroid/view/View;
    .end local v3    # "listBottom":I
    :cond_1
    return-void

    .restart local v0    # "childCount":I
    .restart local v2    # "lastChild":Landroid/view/View;
    .restart local v3    # "listBottom":I
    :cond_2
    move v1, v3

    .line 2764
    goto :goto_0

    .line 2765
    .restart local v1    # "lastBottom":I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 3
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 6190
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v0

    .line 6191
    .local v0, "childCount":I
    if-nez p4, :cond_2

    if-lez v0, :cond_2

    float-to-int v1, p3

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canScrollList(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6192
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMinimumVelocity:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 6193
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->reportScrollStateChange(I)V

    .line 6194
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    if-nez v1, :cond_0

    .line 6195
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    .line 6197
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6198
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    float-to-int v2, p3

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->start(I)V

    .line 6200
    :cond_1
    const/4 v1, 0x1

    .line 6202
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p0, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->dispatchNestedFling(FFZ)Z

    move-result v1

    goto :goto_0
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 9
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    const/4 v1, 0x0

    .line 6174
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 6175
    .local v6, "motionIndex":I
    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 6176
    .local v7, "motionView":Landroid/view/View;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    .line 6177
    .local v8, "oldTop":I
    :goto_0
    if-eqz v7, :cond_0

    neg-int v0, p5

    neg-int v3, p5

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->trackMotionScroll(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6178
    :cond_0
    move v4, p5

    .line 6179
    .local v4, "myUnconsumed":I
    const/4 v2, 0x0

    .line 6180
    .local v2, "myConsumed":I
    if-eqz v7, :cond_1

    .line 6181
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v2, v0, v8

    .line 6182
    sub-int/2addr v4, v2

    .line 6184
    :cond_1
    const/4 v5, 0x0

    move-object v0, p0

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->dispatchNestedScroll(IIII[I)Z

    .line 6186
    .end local v2    # "myConsumed":I
    .end local v4    # "myUnconsumed":I
    :cond_2
    return-void

    .end local v8    # "oldTop":I
    :cond_3
    move v8, v1

    .line 6176
    goto :goto_0
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 6167
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 6168
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->startNestedScroll(I)Z

    .line 6169
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 6094
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getScrollY()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 6095
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v0, p2, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->onScrollChanged(IIII)V

    .line 6096
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setScrollY(I)V

    .line 6097
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 6098
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 6100
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->awakenScrollBars()Z

    .line 6102
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 2506
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;

    .line 2508
    .local v0, "ss":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2509
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDataChanged:Z

    .line 2511
    iget v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->height:I

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSyncHeight:J

    .line 2513
    iget-wide v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->selectedId:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_4

    .line 2514
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mNeedSync:Z

    .line 2515
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingSync:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;

    .line 2516
    iget-wide v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->selectedId:J

    iput-wide v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSyncRowId:J

    .line 2517
    iget v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->position:I

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSyncPosition:I

    .line 2518
    iget v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->viewTop:I

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSpecificTop:I

    .line 2519
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSyncMode:I

    .line 2533
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setFilterText(Ljava/lang/String;)V

    .line 2535
    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_1

    .line 2536
    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2539
    :cond_1
    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_2

    .line 2540
    iget-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2543
    :cond_2
    iget v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->checkedItemCount:I

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedItemCount:I

    .line 2545
    iget-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->inActionMode:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMultiChoiceModeCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_3

    .line 2547
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMultiChoiceModeCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 2550
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->requestLayout()V

    .line 2551
    return-void

    .line 2520
    :cond_4
    iget-wide v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->firstId:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_0

    .line 2521
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setSelectedPositionInt(I)V

    .line 2523
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setNextSelectedPositionInt(I)V

    .line 2524
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectorPosition:I

    .line 2525
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mNeedSync:Z

    .line 2526
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingSync:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;

    .line 2527
    iget-wide v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->firstId:J

    iput-wide v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSyncRowId:J

    .line 2528
    iget v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->position:I

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSyncPosition:I

    .line 2529
    iget v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->viewTop:I

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSpecificTop:I

    .line 2530
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSyncMode:I

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 3782
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->onRtlPropertiesChanged(I)V

    .line 3783
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    if-eqz v0, :cond_1

    .line 3784
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->setScrollbarPosition(I)V

    .line 3788
    :cond_0
    :goto_0
    return-void

    .line 3785
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFluidScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    if-eqz v0, :cond_0

    .line 3786
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFluidScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->setScrollbarPosition(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 15

    .prologue
    .line 2418
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->dismissPopup()V

    .line 2420
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v9

    .line 2422
    .local v9, "superState":Landroid/os/Parcelable;
    new-instance v8, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;

    invoke-direct {v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2424
    .local v8, "ss":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingSync:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;

    if-eqz v12, :cond_0

    .line 2426
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingSync:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;

    iget-wide v12, v12, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->selectedId:J

    iput-wide v12, v8, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->selectedId:J

    .line 2427
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingSync:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;

    iget-wide v12, v12, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->firstId:J

    iput-wide v12, v8, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->firstId:J

    .line 2428
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingSync:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;

    iget v12, v12, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->viewTop:I

    iput v12, v8, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->viewTop:I

    .line 2429
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingSync:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;

    iget v12, v12, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->position:I

    iput v12, v8, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->position:I

    .line 2430
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingSync:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;

    iget v12, v12, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->height:I

    iput v12, v8, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->height:I

    .line 2431
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingSync:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;

    iget-object v12, v12, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->filter:Ljava/lang/String;

    iput-object v12, v8, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2432
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingSync:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;

    iget-boolean v12, v12, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->inActionMode:Z

    iput-boolean v12, v8, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->inActionMode:Z

    .line 2433
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingSync:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;

    iget v12, v12, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->checkedItemCount:I

    iput v12, v8, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->checkedItemCount:I

    .line 2434
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingSync:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;

    iget-object v12, v12, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v12, v8, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2435
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingSync:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;

    iget-object v12, v12, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v12, v8, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2501
    :goto_0
    return-object v8

    .line 2439
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v12

    if-lez v12, :cond_3

    iget v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    if-lez v12, :cond_3

    const/4 v3, 0x1

    .line 2440
    .local v3, "haveChildren":Z
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getSelectedItemId()J

    move-result-wide v6

    .line 2441
    .local v6, "selectedId":J
    iput-wide v6, v8, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->selectedId:J

    .line 2442
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v12

    iput v12, v8, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->height:I

    .line 2444
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-ltz v12, :cond_4

    .line 2446
    iget v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedTop:I

    iput v12, v8, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->viewTop:I

    .line 2447
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getSelectedItemPosition()I

    move-result v12

    iput v12, v8, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->position:I

    .line 2448
    const-wide/16 v12, -0x1

    iput-wide v12, v8, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->firstId:J

    .line 2475
    :goto_2
    const/4 v12, 0x0

    iput-object v12, v8, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2476
    iget-boolean v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFiltered:Z

    if-eqz v12, :cond_1

    .line 2477
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 2478
    .local v10, "textFilter":Landroid/widget/EditText;
    if-eqz v10, :cond_1

    .line 2479
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2480
    .local v1, "filterText":Landroid/text/Editable;
    if-eqz v1, :cond_1

    .line 2481
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2486
    .end local v1    # "filterText":Landroid/text/Editable;
    .end local v10    # "textFilter":Landroid/widget/EditText;
    :cond_1
    iget v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceMode:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_7

    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v12, :cond_7

    const/4 v12, 0x1

    :goto_3
    iput-boolean v12, v8, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->inActionMode:Z

    .line 2488
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v12, :cond_2

    .line 2489
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v12}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v12

    iput-object v12, v8, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2491
    :cond_2
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v12, :cond_9

    .line 2492
    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    .line 2493
    .local v5, "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v12}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 2494
    .local v0, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v0, :cond_8

    .line 2495
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v12, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v12

    iget-object v14, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v5, v12, v13, v14}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2494
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2439
    .end local v0    # "count":I
    .end local v3    # "haveChildren":Z
    .end local v4    # "i":I
    .end local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v6    # "selectedId":J
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 2450
    .restart local v3    # "haveChildren":Z
    .restart local v6    # "selectedId":J
    :cond_4
    if-eqz v3, :cond_6

    iget v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    if-lez v12, :cond_6

    .line 2460
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 2461
    .local v11, "v":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v12

    iput v12, v8, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->viewTop:I

    .line 2462
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    .line 2463
    .local v2, "firstPos":I
    iget v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    if-lt v2, v12, :cond_5

    .line 2464
    iget v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    add-int/lit8 v2, v12, -0x1

    .line 2466
    :cond_5
    iput v2, v8, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->position:I

    .line 2467
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v12, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    iput-wide v12, v8, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->firstId:J

    goto :goto_2

    .line 2469
    .end local v2    # "firstPos":I
    .end local v11    # "v":Landroid/view/View;
    :cond_6
    const/4 v12, 0x0

    iput v12, v8, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->viewTop:I

    .line 2470
    const-wide/16 v12, -0x1

    iput-wide v12, v8, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->firstId:J

    .line 2471
    const/4 v12, 0x0

    iput v12, v8, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->position:I

    goto/16 :goto_2

    .line 2486
    :cond_7
    const/4 v12, 0x0

    goto :goto_3

    .line 2497
    .restart local v0    # "count":I
    .restart local v4    # "i":I
    .restart local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_8
    iput-object v5, v8, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2499
    .end local v0    # "count":I
    .end local v4    # "i":I
    .end local v5    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_9
    iget v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedItemCount:I

    iput v12, v8, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;->checkedItemCount:I

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 3361
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDataChanged:Z

    .line 3363
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->rememberSyncState()V

    .line 3366
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    if-eqz v0, :cond_2

    .line 3367
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->onSizeChanged(IIII)V

    .line 3371
    :cond_1
    :goto_0
    return-void

    .line 3368
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFluidScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    if-eqz v0, :cond_1

    .line 3369
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFluidScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->onSizeChanged(IIII)V

    goto :goto_0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 6162
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v4, 0x1

    .line 8188
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8189
    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->createTextFilter(Z)V

    .line 8190
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 8191
    .local v1, "length":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 8192
    .local v2, "showing":Z
    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 8194
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->showPopup()V

    .line 8195
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFiltered:Z

    .line 8201
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    .line 8202
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 8204
    .local v0, "f":Landroid/widget/Filter;
    if-eqz v0, :cond_3

    .line 8205
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 8212
    .end local v0    # "f":Landroid/widget/Filter;
    .end local v1    # "length":I
    .end local v2    # "showing":Z
    :cond_1
    return-void

    .line 8196
    .restart local v1    # "length":I
    .restart local v2    # "showing":Z
    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 8198
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->dismissPopup()V

    .line 8199
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFiltered:Z

    goto :goto_0

    .line 8207
    .restart local v0    # "f":Landroid/widget/Filter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 5561
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isEnabled()Z

    move-result v11

    if-nez v11, :cond_3

    .line 5564
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isClickable()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isLongClickable()Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    move v9, v10

    :cond_1
    move v10, v9

    .line 5666
    :cond_2
    :goto_0
    return v10

    .line 5567
    :cond_3
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    if-eqz v11, :cond_4

    .line 5568
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    invoke-virtual {v11}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;->stop()V

    .line 5571
    :cond_4
    iget-boolean v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsDetaching:Z

    if-nez v11, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isAttachedToWindow()Z

    move-result v11

    if-nez v11, :cond_6

    :cond_5
    move v10, v9

    .line 5576
    goto :goto_0

    .line 5579
    :cond_6
    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->startNestedScroll(I)Z

    .line 5581
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    invoke-virtual {v11, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 5583
    :cond_7
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFluidScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    if-eqz v11, :cond_9

    .line 5584
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFluidScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    invoke-virtual {v11, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 5585
    .local v4, "intercepted":Z
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOnFluidScrollEffectListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnFluidScrollEffectListener;

    if-eqz v11, :cond_8

    .line 5586
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOnFluidScrollEffectListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnFluidScrollEffectListener;

    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFluidScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    invoke-virtual {v12}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->getEffectState()I

    move-result v12

    iget-object v13, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFluidScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    invoke-virtual {v13}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->getScrollY()F

    move-result v13

    invoke-interface {v11, v12, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnFluidScrollEffectListener;->onEffectStateChanged(IF)V

    .line 5589
    :cond_8
    if-nez v4, :cond_2

    .line 5594
    .end local v4    # "intercepted":Z
    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->initVelocityTrackerIfNotExists()V

    .line 5595
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 5597
    .local v6, "vtev":Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 5598
    .local v0, "actionMasked":I
    if-nez v0, :cond_a

    .line 5599
    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mNestedYOffset:I

    .line 5601
    :cond_a
    const/4 v11, 0x0

    iget v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mNestedYOffset:I

    int-to-float v12, v12

    invoke-virtual {v6, v11, v12}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 5602
    packed-switch v0, :pswitch_data_0

    .line 5662
    :goto_1
    :pswitch_0
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_b

    .line 5663
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, v6}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5665
    :cond_b
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 5604
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->onTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 5609
    :pswitch_2
    invoke-direct {p0, p1, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 5614
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->onTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 5619
    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->onTouchCancel()V

    goto :goto_1

    .line 5624
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 5625
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionX:I

    .line 5626
    .local v7, "x":I
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionY:I

    .line 5627
    .local v8, "y":I
    invoke-virtual {p0, v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->pointToPosition(II)I

    move-result v5

    .line 5628
    .local v5, "motionPosition":I
    if-ltz v5, :cond_c

    .line 5630
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5631
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionViewOriginalTop:I

    .line 5632
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionPosition:I

    .line 5634
    .end local v1    # "child":Landroid/view/View;
    :cond_c
    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLastY:I

    .line 5635
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPointerCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPointerCount:I

    goto :goto_1

    .line 5641
    .end local v5    # "motionPosition":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 5642
    .local v3, "index":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 5643
    .local v2, "id":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    float-to-int v7, v11

    .line 5644
    .restart local v7    # "x":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    float-to-int v8, v11

    .line 5645
    .restart local v8    # "y":I
    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionCorrection:I

    .line 5646
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mActivePointerId:I

    .line 5647
    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionX:I

    .line 5648
    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionY:I

    .line 5649
    invoke-virtual {p0, v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->pointToPosition(II)I

    move-result v5

    .line 5650
    .restart local v5    # "motionPosition":I
    if-ltz v5, :cond_d

    .line 5652
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5653
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionViewOriginalTop:I

    .line 5654
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionPosition:I

    .line 5656
    .end local v1    # "child":Landroid/view/View;
    :cond_d
    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLastY:I

    .line 5657
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPointerCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPointerCount:I

    goto :goto_1

    .line 5602
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 2
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 4576
    if-eqz p1, :cond_2

    .line 4578
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->hideSelector()V

    .line 4582
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 4585
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->layoutChildren()V

    .line 4587
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->updateSelectorState()V

    .line 4606
    :cond_1
    :goto_0
    return-void

    .line 4589
    :cond_2
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    .line 4590
    .local v0, "touchMode":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 4591
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 4592
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->endFling()V

    .line 4594
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    if-eqz v1, :cond_5

    .line 4595
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;->stop()V

    .line 4598
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getScrollY()I

    move-result v1

    if-eqz v1, :cond_1

    .line 4599
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setScrollY(I)V

    .line 4601
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->finishGlows()V

    .line 4602
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->invalidate()V

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 9156
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 9158
    if-eqz p2, :cond_0

    .line 9159
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->releaseAllBoosters()V

    .line 9161
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3710
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->onWindowFocusChanged(Z)V

    .line 3715
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHasWindowFocusForMotion:Z

    .line 3716
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mWindowFocusChanged:Z

    .line 3718
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->autoHide(I)V

    .line 3720
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    .line 3722
    .local v0, "touchMode":I
    :goto_0
    if-nez p1, :cond_6

    .line 3723
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 3724
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    if-eqz v3, :cond_1

    .line 3725
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3728
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->endFling()V

    .line 3729
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    if-eqz v3, :cond_0

    .line 3730
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;->stop()V

    .line 3732
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getScrollY()I

    move-result v3

    if-eqz v3, :cond_1

    .line 3733
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setScrollY(I)V

    .line 3735
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->finishGlows()V

    .line 3736
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->invalidate()V

    .line 3740
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->dismissPopup()V

    .line 3742
    if-ne v0, v2, :cond_2

    .line 3744
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedPosition:I

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mResurrectToPosition:I

    .line 3748
    :cond_2
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCstate:I

    if-eqz v2, :cond_3

    .line 3749
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCstate:I

    .line 3773
    :cond_3
    :goto_1
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLastTouchMode:I

    .line 3775
    if-nez p1, :cond_4

    .line 3776
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->releaseAllBoosters()V

    .line 3778
    :cond_4
    return-void

    .end local v0    # "touchMode":I
    :cond_5
    move v0, v2

    .line 3720
    goto :goto_0

    .line 3752
    .restart local v0    # "touchMode":I
    :cond_6
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFiltered:Z

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPopupHidden:Z

    if-nez v3, :cond_7

    .line 3754
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->showPopup()V

    .line 3758
    :cond_7
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLastTouchMode:I

    if-eq v0, v3, :cond_3

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 3760
    if-ne v0, v2, :cond_8

    .line 3762
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->resurrectSelection()Z

    goto :goto_1

    .line 3766
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->hideSelector()V

    .line 3767
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLayoutMode:I

    .line 3768
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->layoutChildren()V

    goto :goto_1
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 8
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0xc8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2068
    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->performAccessibilityActionInternal(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v1

    .line 2069
    .local v1, "isPerformed":Z
    if-eqz v1, :cond_1

    .line 2159
    :cond_0
    :goto_0
    return v3

    .line 2073
    :cond_1
    sparse-switch p1, :sswitch_data_0

    move v3, v4

    .line 2159
    goto :goto_0

    .line 2076
    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getLastVisiblePosition()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-lt v5, v6, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getLastVisiblePosition()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canScrollDown()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2077
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v4, v5

    .line 2078
    .local v2, "viewportHeight":I
    invoke-virtual {p0, v2, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->smoothScrollBy(II)V

    goto :goto_0

    .end local v2    # "viewportHeight":I
    :cond_3
    move v3, v4

    .line 2081
    goto :goto_0

    .line 2084
    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    if-lez v5, :cond_4

    .line 2085
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v4, v5

    .line 2086
    .restart local v2    # "viewportHeight":I
    neg-int v4, v2

    invoke-virtual {p0, v4, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->smoothScrollBy(II)V

    goto :goto_0

    .end local v2    # "viewportHeight":I
    :cond_4
    move v3, v4

    .line 2089
    goto :goto_0

    .line 2092
    :sswitch_2
    const-string v5, "SeslAbsListView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "case ACTION_AUTOSCROLL_DOWN  canScrollDown():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canScrollDown()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canScrollDown()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2094
    const/16 v4, 0xfa0

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->fling(I)V

    goto/16 :goto_0

    :cond_5
    move v3, v4

    .line 2097
    goto/16 :goto_0

    .line 2100
    :sswitch_3
    const-string v5, "SeslAbsListView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "case ACTION_AUTOSCROLL_UP  canScrollUp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canScrollUp()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canScrollUp()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2102
    const/16 v4, -0xfa0

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->fling(I)V

    goto/16 :goto_0

    :cond_6
    move v3, v4

    .line 2105
    goto/16 :goto_0

    .line 2108
    :sswitch_4
    const-string v5, "SeslAbsListView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "case ACTION_AUTOSCROLL_ON, canScrollDown = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canScrollDown()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canScrollDown()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2110
    const/4 v0, 0x3

    .line 2111
    .local v0, "autoScrollSpeedLevel":I
    if-eqz p2, :cond_7

    .line 2113
    const-string v4, "auto_scroll_speed_level"

    const/4 v5, 0x4

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 2115
    :cond_7
    mul-int/lit8 v4, v0, 0x50

    rsub-int v4, v4, 0x230

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAutoscrollDuration:I

    .line 2116
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAutoscrollDuration:I

    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->autoScrollWithDuration(I)V

    goto/16 :goto_0

    .end local v0    # "autoScrollSpeedLevel":I
    :cond_8
    move v3, v4

    .line 2119
    goto/16 :goto_0

    .line 2122
    :sswitch_5
    const-string v5, "SeslAbsListView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_AUTOSCROLL_SPEED_UP, current duration = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAutoscrollDuration:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canScrollDown()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2124
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAutoscrollDuration:I

    const/16 v5, 0x50

    if-le v4, v5, :cond_9

    .line 2125
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAutoscrollDuration:I

    add-int/lit8 v4, v4, -0x50

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAutoscrollDuration:I

    .line 2126
    :cond_9
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAutoscrollDuration:I

    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->autoScrollWithDuration(I)V

    goto/16 :goto_0

    :cond_a
    move v3, v4

    .line 2129
    goto/16 :goto_0

    .line 2132
    :sswitch_6
    const-string v5, "SeslAbsListView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_AUTOSCROLL_SPEED_DOWN, current duration = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAutoscrollDuration:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canScrollDown()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2134
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAutoscrollDuration:I

    const/16 v5, 0x230

    if-ge v4, v5, :cond_b

    .line 2135
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAutoscrollDuration:I

    add-int/lit8 v4, v4, 0x50

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAutoscrollDuration:I

    .line 2137
    :cond_b
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAutoscrollDuration:I

    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->autoScrollWithDuration(I)V

    goto/16 :goto_0

    :cond_c
    move v3, v4

    .line 2140
    goto/16 :goto_0

    .line 2143
    :sswitch_7
    const-string v5, "SeslAbsListView"

    const-string v6, "ACTION_AUTOSCROLL_TOP"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canScrollUp()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2145
    invoke-virtual {p0, v4, v4, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->smoothScrollToPositionFromTop(III)V

    goto/16 :goto_0

    :cond_d
    move v3, v4

    .line 2148
    goto/16 :goto_0

    .line 2151
    :sswitch_8
    const-string v5, "SeslAbsListView"

    const-string v6, "ACTION_AUTOSCROLL_OFF"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    invoke-virtual {p0, v4, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->smoothScrollBy(II)V

    .line 2153
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    if-eqz v4, :cond_0

    .line 2154
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;->stop()V

    goto/16 :goto_0

    .line 2073
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
        0x400000 -> :sswitch_4
        0x800000 -> :sswitch_8
        0x1000000 -> :sswitch_3
        0x1020038 -> :sswitch_1
        0x102003a -> :sswitch_0
        0x2000000 -> :sswitch_2
        0x4000000 -> :sswitch_7
        0x10000000 -> :sswitch_5
        0x20000000 -> :sswitch_6
    .end sparse-switch
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1453
    const/4 v8, 0x0

    .line 1454
    .local v8, "handled":Z
    const/4 v7, 0x1

    .line 1456
    .local v7, "dispatchItemClick":Z
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceMode:I

    if-eqz v3, :cond_4

    .line 1457
    const/4 v8, 0x1

    .line 1458
    const/4 v0, 0x0

    .line 1460
    .local v0, "checkedStateChanged":Z
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_3

    .line 1461
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_9

    .line 1463
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_6

    move v6, v1

    .line 1464
    .local v6, "checked":Z
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1465
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1466
    if-eqz v6, :cond_7

    .line 1467
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1472
    :cond_1
    :goto_1
    if-eqz v6, :cond_8

    .line 1473
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedItemCount:I

    .line 1477
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    .line 1478
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMultiChoiceModeCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1480
    const/4 v7, 0x0

    .line 1482
    :cond_2
    const/4 v0, 0x1

    .line 1500
    .end local v6    # "checked":Z
    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    .line 1501
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->updateOnScreenCheckedViews()V

    .line 1505
    .end local v0    # "checkedStateChanged":Z
    :cond_4
    if-eqz v7, :cond_5

    .line 1506
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    or-int/2addr v8, v1

    .line 1509
    :cond_5
    return v8

    .restart local v0    # "checkedStateChanged":Z
    :cond_6
    move v6, v2

    .line 1463
    goto :goto_0

    .line 1469
    .restart local v6    # "checked":Z
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 1475
    :cond_8
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1483
    .end local v6    # "checked":Z
    :cond_9
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceMode:I

    if-ne v3, v1, :cond_3

    .line 1484
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_c

    move v6, v1

    .line 1485
    .restart local v6    # "checked":Z
    :goto_4
    if-eqz v6, :cond_d

    .line 1486
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1487
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1488
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1489
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1490
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1492
    :cond_a
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedItemCount:I

    .line 1496
    :cond_b
    :goto_5
    const/4 v0, 0x1

    goto :goto_3

    .end local v6    # "checked":Z
    :cond_c
    move v6, v2

    .line 1484
    goto :goto_4

    .line 1493
    .restart local v6    # "checked":Z
    :cond_d
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1494
    :cond_e
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedItemCount:I

    goto :goto_5
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .prologue
    const/4 v1, 0x3

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 3970
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_2

    .line 3971
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMultiChoiceModeCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;

    .line 3972
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    .line 3973
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    .line 3974
    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsDragBlockEnabled:Z

    .line 3976
    :cond_0
    invoke-virtual {p0, p2, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setItemChecked(IZ)V

    .line 3977
    sget v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->VIBE_COMMON_A:I

    if-eq v0, v7, :cond_1

    .line 3978
    sget v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->VIBE_COMMON_A:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->performHapticFeedback(I)Z

    .line 3998
    :cond_1
    :goto_0
    return v6

    .line 3984
    :cond_2
    const/4 v6, 0x0

    .line 3985
    .local v6, "handled":Z
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOnItemLongClickListener:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_3

    .line 3986
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOnItemLongClickListener:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 3989
    :cond_3
    if-nez v6, :cond_4

    .line 3990
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3991
    invoke-super {p0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 3993
    :cond_4
    if-eqz v6, :cond_1

    .line 3994
    sget v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->VIBE_COMMON_A:I

    if-eq v0, v7, :cond_1

    .line 3995
    sget v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->VIBE_COMMON_A:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->performHapticFeedback(I)Z

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x0

    .line 4162
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 4163
    .local v4, "frame":Landroid/graphics/Rect;
    if-nez v4, :cond_0

    .line 4164
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 4165
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 4168
    :cond_0
    instance-of v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView;

    if-eqz v6, :cond_3

    move-object v6, p0

    check-cast v6, Lcom/samsung/android/support/sesl/component/widget/SeslListView;

    iget v2, v6, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDividerHeight:I

    .line 4169
    .local v2, "dividerHeight":I
    :goto_0
    if-lez v2, :cond_1

    move-object v6, p0

    check-cast v6, Lcom/samsung/android/support/sesl/component/widget/SeslListView;

    iget-object v6, v6, Lcom/samsung/android/support/sesl/component/widget/SeslListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    const/4 v3, 0x1

    .line 4171
    .local v3, "drawDividers":Z
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v1

    .line 4172
    .local v1, "count":I
    add-int/lit8 v5, v1, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_5

    .line 4173
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4174
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    .line 4175
    invoke-virtual {v0, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 4176
    if-eqz v3, :cond_2

    .line 4177
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 4180
    :cond_2
    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4181
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    add-int/2addr v6, v5

    .line 4185
    .end local v0    # "child":Landroid/view/View;
    :goto_2
    return v6

    .end local v1    # "count":I
    .end local v2    # "dividerHeight":I
    .end local v3    # "drawDividers":Z
    .end local v5    # "i":I
    :cond_3
    move v2, v3

    .line 4168
    goto :goto_0

    .line 4172
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "count":I
    .restart local v2    # "dividerHeight":I
    .restart local v3    # "drawDividers":Z
    .restart local v5    # "i":I
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 4185
    .end local v0    # "child":Landroid/view/View;
    :cond_5
    const/4 v6, -0x1

    goto :goto_2
.end method

.method public pointToRowId(II)J
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 4198
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->pointToPosition(II)I

    move-result v0

    .line 4199
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 4200
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 4202
    :goto_0
    return-wide v2

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    goto :goto_0
.end method

.method positionSelector(ILandroid/view/View;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    .line 3213
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 3214
    return-void
.end method

.method positionSelectorLikeFocus(ILandroid/view/View;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    .line 3202
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectorPosition:I

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 3203
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3204
    .local v6, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    .line 3205
    .local v4, "x":F
    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    .line 3206
    .local v5, "y":F
    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 3210
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "bounds":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 3208
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->positionSelector(ILandroid/view/View;)V

    goto :goto_0
.end method

.method positionSelectorLikeTouch(ILandroid/view/View;FF)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 3195
    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 3196
    return-void
.end method

.method public reclaimViews(Ljava/util/List;)V
    .locals 7
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
    .line 8321
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v1

    .line 8322
    .local v1, "childCount":I
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;

    invoke-static {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->access$4900(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;)Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecyclerListener;

    move-result-object v3

    .line 8325
    .local v3, "listener":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8326
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8327
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;

    .line 8329
    .local v4, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;

    iget v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8330
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8331
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 8332
    if-eqz v3, :cond_0

    .line 8334
    invoke-interface {v3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 8325
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8338
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$LayoutParams;
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 8339
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeAllViewsInLayout()V

    .line 8340
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    .prologue
    .line 7340
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedPosition:I

    .line 7341
    .local v0, "position":I
    if-gez v0, :cond_0

    .line 7342
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mResurrectToPosition:I

    .line 7344
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7345
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 7346
    return v0
.end method

.method reportScrollStateChange(I)V
    .locals 4
    .param p1, "newState"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 6452
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_7

    .line 6454
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCstate:I

    if-ne v0, v3, :cond_0

    .line 6455
    invoke-static {v2}, Lcom/samsung/android/support/sesl/core/os/SeslDVFSHelperReflector;->onScrollEvent(Z)V

    .line 6456
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDVFSLockAcquired:Z

    .line 6458
    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mQCstate:I

    if-eq v0, v3, :cond_5

    .line 6459
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLastScrollState:I

    if-nez v0, :cond_2

    .line 6461
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEnableGoToTop:Z

    if-eqz v0, :cond_1

    .line 6462
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6463
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setupGoToTop(I)V

    .line 6466
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_2

    .line 6467
    invoke-static {v1}, Lcom/samsung/android/support/sesl/core/os/SeslDVFSHelperReflector;->onScrollEvent(Z)V

    .line 6468
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDVFSLockAcquired:Z

    .line 6471
    :cond_2
    if-nez p1, :cond_4

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLastScrollState:I

    if-eqz v0, :cond_4

    .line 6473
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEnableGoToTop:Z

    if-eqz v0, :cond_3

    .line 6474
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->autoHide(I)V

    .line 6476
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_4

    .line 6477
    invoke-static {v2}, Lcom/samsung/android/support/sesl/core/os/SeslDVFSHelperReflector;->onScrollEvent(Z)V

    .line 6478
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDVFSLockAcquired:Z

    .line 6481
    :cond_4
    if-eqz p1, :cond_5

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLastScrollState:I

    if-eqz v0, :cond_5

    .line 6483
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setupGoToTop(I)V

    .line 6487
    :cond_5
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLastScrollState:I

    .line 6488
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnScrollListener;

    if-eqz v0, :cond_6

    .line 6490
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;I)V

    .line 6496
    :cond_6
    :goto_0
    return-void

    .line 6492
    :cond_7
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 6493
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_6

    .line 6494
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setupGoToTop(I)V

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 6287
    if-eqz p1, :cond_0

    .line 6288
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->recycleVelocityTracker()V

    .line 6290
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->requestDisallowInterceptTouchEvent(Z)V

    .line 6291
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2614
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 2615
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->requestLayout()V

    .line 2617
    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 2312
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2313
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->resetList()V

    .line 2314
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->requestLayout()V

    .line 2315
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->invalidate()V

    .line 2317
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 2623
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeAllViewsInLayout()V

    .line 2624
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    .line 2625
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDataChanged:Z

    .line 2626
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 2627
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mNeedSync:Z

    .line 2628
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPendingSync:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SavedState;

    .line 2629
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOldSelectedPosition:I

    .line 2630
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOldSelectedRowId:J

    .line 2631
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setSelectedPositionInt(I)V

    .line 2632
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setNextSelectedPositionInt(I)V

    .line 2633
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedTop:I

    .line 2634
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectorPosition:I

    .line 2635
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2636
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->invalidate()V

    .line 2637
    return-void
.end method

.method public resetPressItemListArray()V
    .locals 1

    .prologue
    .line 9507
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 9517
    :cond_0
    :goto_0
    return-void

    .line 9511
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPressItemListArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 9515
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPressItemListArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9516
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->invalidate()V

    goto :goto_0
.end method

.method resurrectSelection()Z
    .locals 19

    .prologue
    .line 7408
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v3

    .line 7410
    .local v3, "childCount":I
    if-gtz v3, :cond_0

    .line 7411
    const/16 v17, 0x0

    .line 7506
    :goto_0
    return v17

    .line 7414
    :cond_0
    const/4 v13, 0x0

    .line 7416
    .local v13, "selectedTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 7417
    .local v5, "childrenTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getBottom()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getTop()I

    move-result v18

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 7418
    .local v4, "childrenBottom":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    .line 7419
    .local v7, "firstPosition":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mResurrectToPosition:I

    .line 7420
    .local v14, "toPosition":I
    const/4 v6, 0x1

    .line 7422
    .local v6, "down":Z
    if-lt v14, v7, :cond_4

    add-int v17, v7, v3

    move/from16 v0, v17

    if-ge v14, v0, :cond_4

    .line 7423
    move v12, v14

    .line 7425
    .local v12, "selectedPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v12, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 7426
    .local v10, "selected":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    .line 7427
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 7430
    .local v11, "selectedBottom":I
    if-ge v13, v5, :cond_3

    .line 7431
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v13, v5, v17

    .line 7487
    .end local v10    # "selected":Landroid/view/View;
    .end local v11    # "selectedBottom":I
    :cond_1
    :goto_1
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mResurrectToPosition:I

    .line 7488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 7490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;->stop()V

    .line 7492
    :cond_2
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    .line 7493
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->clearScrollingCache()V

    .line 7494
    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSpecificTop:I

    .line 7495
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->lookForSelectablePosition(IZ)I

    move-result v12

    .line 7496
    if-lt v12, v7, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v12, v0, :cond_c

    .line 7497
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLayoutMode:I

    .line 7498
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->updateSelectorState()V

    .line 7499
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setSelectionInt(I)V

    .line 7500
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->invokeOnItemScrollListener()V

    .line 7504
    :goto_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->reportScrollStateChange(I)V

    .line 7506
    if-ltz v12, :cond_d

    const/16 v17, 0x1

    goto/16 :goto_0

    .line 7432
    .restart local v10    # "selected":Landroid/view/View;
    .restart local v11    # "selectedBottom":I
    :cond_3
    if-le v11, v4, :cond_1

    .line 7433
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v17, v4, v17

    .line 7434
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    sub-int v13, v17, v18

    goto :goto_1

    .line 7437
    .end local v10    # "selected":Landroid/view/View;
    .end local v11    # "selectedBottom":I
    .end local v12    # "selectedPos":I
    :cond_4
    if-ge v14, v7, :cond_8

    .line 7439
    move v12, v7

    .line 7440
    .restart local v12    # "selectedPos":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v3, :cond_1

    .line 7441
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 7442
    .local v16, "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 7444
    .local v15, "top":I
    if-nez v8, :cond_6

    .line 7446
    move v13, v15

    .line 7448
    if-gtz v7, :cond_5

    if-ge v15, v5, :cond_6

    .line 7451
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v5, v5, v17

    .line 7454
    :cond_6
    if-lt v15, v5, :cond_7

    .line 7456
    add-int v12, v7, v8

    .line 7457
    move v13, v15

    .line 7458
    goto/16 :goto_1

    .line 7440
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 7462
    .end local v8    # "i":I
    .end local v12    # "selectedPos":I
    .end local v15    # "top":I
    .end local v16    # "v":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    .line 7463
    .local v9, "itemCount":I
    const/4 v6, 0x0

    .line 7464
    add-int v17, v7, v3

    add-int/lit8 v12, v17, -0x1

    .line 7466
    .restart local v12    # "selectedPos":I
    add-int/lit8 v8, v3, -0x1

    .restart local v8    # "i":I
    :goto_4
    if-ltz v8, :cond_1

    .line 7467
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 7468
    .restart local v16    # "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 7469
    .restart local v15    # "top":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 7471
    .local v2, "bottom":I
    add-int/lit8 v17, v3, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_a

    .line 7472
    move v13, v15

    .line 7473
    add-int v17, v7, v3

    move/from16 v0, v17

    if-lt v0, v9, :cond_9

    if-le v2, v4, :cond_a

    .line 7474
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    .line 7478
    :cond_a
    if-gt v2, v4, :cond_b

    .line 7479
    add-int v12, v7, v8

    .line 7480
    move v13, v15

    .line 7481
    goto/16 :goto_1

    .line 7466
    :cond_b
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 7502
    .end local v2    # "bottom":I
    .end local v8    # "i":I
    .end local v9    # "itemCount":I
    .end local v15    # "top":I
    .end local v16    # "v":Landroid/view/View;
    :cond_c
    const/4 v12, -0x1

    goto :goto_2

    .line 7506
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method resurrectSelectionIfNeeded()Z
    .locals 1

    .prologue
    .line 7388
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7389
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->updateSelectorState()V

    .line 7390
    const/4 v0, 0x1

    .line 7392
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollListBy(I)V
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 7082
    neg-int v0, p1

    neg-int v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->trackMotionScroll(II)Z

    .line 7083
    return-void
.end method

.method public sendAccessibilityEventInternal(I)V
    .locals 4
    .param p1, "eventType"    # I

    .prologue
    .line 2008
    const/16 v2, 0x1000

    if-ne p1, v2, :cond_2

    .line 2009
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 2010
    .local v0, "firstVisiblePosition":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getLastVisiblePosition()I

    move-result v1

    .line 2011
    .local v1, "lastVisiblePosition":I
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLastAccessibilityScrollEventFromIndex:I

    if-ne v2, v0, :cond_1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLastAccessibilityScrollEventToIndex:I

    if-ne v2, v1, :cond_1

    .line 2022
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "lastVisiblePosition":I
    :cond_0
    :goto_0
    return-void

    .line 2015
    .restart local v0    # "firstVisiblePosition":I
    .restart local v1    # "lastVisiblePosition":I
    :cond_1
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLastAccessibilityScrollEventFromIndex:I

    .line 2016
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLastAccessibilityScrollEventToIndex:I

    .line 2019
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "lastVisiblePosition":I
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mContext:Landroid/content/Context;

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2020
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 7827
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->acceptFilter()Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v5

    .line 7912
    :cond_0
    :goto_0
    return v2

    .line 7831
    :cond_1
    const/4 v2, 0x0

    .line 7832
    .local v2, "handled":Z
    const/4 v3, 0x1

    .line 7833
    .local v3, "okToSend":Z
    sparse-switch p1, :sswitch_data_0

    .line 7865
    :goto_1
    if-eqz v3, :cond_0

    .line 7866
    invoke-direct {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->createTextFilter(Z)V

    .line 7868
    move-object v1, p3

    .line 7869
    .local v1, "forwardEvent":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 7870
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-static {p3, v6, v7, v5}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 7873
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 7874
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 7876
    :pswitch_0
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 7877
    sparse-switch p1, :sswitch_data_1

    goto :goto_0

    .line 7880
    :sswitch_0
    iput-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsShiftkeyPressed:Z

    goto :goto_0

    .line 7840
    .end local v0    # "action":I
    .end local v1    # "forwardEvent":Landroid/view/KeyEvent;
    :sswitch_1
    const/4 v3, 0x0

    .line 7841
    goto :goto_1

    .line 7843
    :sswitch_2
    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFiltered:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 7844
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_5

    .line 7845
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_5

    .line 7846
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    .line 7847
    .local v4, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v4, :cond_3

    .line 7848
    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 7850
    :cond_3
    const/4 v2, 0x1

    .line 7857
    .end local v4    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_4
    :goto_2
    const/4 v3, 0x0

    .line 7858
    goto :goto_1

    .line 7851
    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-ne v6, v8, :cond_4

    .line 7852
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_4

    .line 7853
    const/4 v2, 0x1

    .line 7854
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 7861
    :sswitch_3
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFiltered:Z

    goto :goto_1

    .line 7884
    .restart local v0    # "action":I
    .restart local v1    # "forwardEvent":Landroid/view/KeyEvent;
    :sswitch_4
    iput-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_0

    .line 7890
    :pswitch_1
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v6, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 7891
    sparse-switch p1, :sswitch_data_2

    goto/16 :goto_0

    .line 7894
    :sswitch_5
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsShiftkeyPressed:Z

    .line 7895
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOldKeyCode:I

    .line 7896
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCurrentKeyCode:I

    .line 7897
    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPressedPoint:I

    .line 7898
    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSecondPressedPoint:I

    goto/16 :goto_0

    .line 7902
    :sswitch_6
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsCtrlkeyPressed:Z

    goto/16 :goto_0

    .line 7908
    :pswitch_2
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 7833
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x17 -> :sswitch_1
        0x3e -> :sswitch_3
        0x42 -> :sswitch_1
    .end sparse-switch

    .line 7874
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 7877
    :sswitch_data_1
    .sparse-switch
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x71 -> :sswitch_4
        0x72 -> :sswitch_4
    .end sparse-switch

    .line 7891
    :sswitch_data_2
    .sparse-switch
        0x3b -> :sswitch_5
        0x3c -> :sswitch_5
        0x71 -> :sswitch_6
        0x72 -> :sswitch_6
    .end sparse-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 130
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v2, 0x1

    .line 1234
    if-eqz p1, :cond_1

    .line 1235
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapterHasStableIds:Z

    .line 1236
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapterHasStableIds:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 1238
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1240
    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChnagedAdapter:Z

    .line 1241
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEnableGoToTop:Z

    if-eqz v0, :cond_1

    .line 1242
    const-string v0, "SeslAbsListView"

    const-string/jumbo v1, "setAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->playGotoToFadeOut()V

    .line 1244
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->initGoToTop()V

    .line 1248
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_2

    .line 1249
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1252
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_3

    .line 1253
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1257
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsMultiFocusEnabled:Z

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_4

    .line 1258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPressItemListArray:Ljava/util/ArrayList;

    .line 1259
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->resetPressItemListArray()V

    .line 1260
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOldAdapterItemCount:I

    .line 1263
    :cond_4
    return-void
.end method

.method public setAlwaysDisableHoverHighlight(Z)V
    .locals 0
    .param p1, "disabled"    # Z

    .prologue
    .line 6042
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAlwaysDisableHoverHighlight:Z

    .line 6043
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 8291
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCacheColorHint:I

    if-eq p1, v2, :cond_1

    .line 8292
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCacheColorHint:I

    .line 8293
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v0

    .line 8294
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 8295
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 8294
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8297
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->setCacheColorHint(I)V

    .line 8299
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 4
    .param p1, "choiceMode"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1573
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceMode:I

    .line 1574
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1575
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1576
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1578
    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_3

    .line 1579
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 1580
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1582
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1583
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v2}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1586
    :cond_2
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1587
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->clearChoices()V

    .line 1588
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setLongClickable(Z)V

    .line 1592
    :cond_3
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceMode:I

    packed-switch v0, :pswitch_data_0

    .line 1603
    :goto_0
    return-void

    .line 1595
    :pswitch_0
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsDragBlockEnabled:Z

    goto :goto_0

    .line 1599
    :pswitch_1
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsDragBlockEnabled:Z

    goto :goto_0

    .line 1592
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setCustomMultiChoiceMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1646
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCustomMultiChoiceMode:Z

    .line 1647
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .param p1, "onTop"    # Z

    .prologue
    .line 3446
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDrawSelectorOnTop:Z

    .line 3447
    return-void
.end method

.method public setEnableDragBlock(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 9438
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsDragBlockEnabled:Z

    .line 9439
    return-void
.end method

.method public setEnableHoverDrawable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1117
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoveringEnabled:Z

    .line 1118
    return-void
.end method

.method public setEnableMultiFocus(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 9428
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsMultiFocusEnabled:Z

    .line 9429
    return-void
.end method

.method public setEnableOnclickInMultiSelectMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 9455
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsOnClickEnabled:Z

    .line 9456
    return-void
.end method

.method public setEnablePaddingInHoverScroll(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 4632
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    .line 4633
    return-void
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 1838
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScrollAlwaysVisible:Z

    if-eq v0, p1, :cond_1

    .line 1839
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_0

    .line 1840
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setFastScrollEnabled(Z)V

    .line 1843
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScrollAlwaysVisible:Z

    .line 1845
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1846
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    .line 1856
    :cond_1
    :goto_0
    return-void

    .line 1848
    :cond_2
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$5;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$5;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1778
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1779
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScrollEnabled:Z

    .line 1781
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1782
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setFastScrollerEnabledUiThread(Z)V

    .line 1792
    :cond_0
    :goto_0
    return-void

    .line 1784
    :cond_1
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$4;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$4;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFastScrollStyle(I)V
    .locals 1
    .param p1, "styleResId"    # I

    .prologue
    .line 1816
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    if-nez v0, :cond_0

    .line 1817
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScrollStyle:I

    .line 1821
    :goto_0
    return-void

    .line 1819
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->setStyle(I)V

    goto :goto_0
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .param p1, "filterText"    # Ljava/lang/String;

    .prologue
    .line 2566
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2567
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->createTextFilter(Z)V

    .line 2570
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2571
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 2572
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    .line 2574
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 2575
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 2576
    .local v0, "f":Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 2580
    .end local v0    # "f":Landroid/widget/Filter;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFiltered:Z

    .line 2581
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AdapterDataSetObserver;->clearSavedState()V

    .line 2584
    :cond_1
    return-void
.end method

.method public setFluidScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 10010
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFluidScrollEnabled:Z

    if-eq v0, p1, :cond_0

    .line 10011
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFluidScrollEnabled:Z

    .line 10013
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10014
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setFluidScrollerEnabledUiThread(Z)V

    .line 10024
    :cond_0
    :goto_0
    return-void

    .line 10016
    :cond_1
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$19;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$19;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setForcedClick(Z)V
    .locals 0
    .param p1, "force"    # Z

    .prologue
    .line 3852
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mForcedClick:Z

    .line 3853
    return-void
.end method

.method public setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    .line 6784
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 6785
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    .line 6787
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->access$2900(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;)Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->setFriction(F)V

    .line 6788
    return-void
.end method

.method protected setGroupFlags(Landroid/view/ViewGroup;I)V
    .locals 0
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "flags"    # I

    .prologue
    .line 10096
    invoke-static {p1, p2}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->setField_mGroupFlags(Landroid/view/ViewGroup;I)V

    .line 10097
    return-void
.end method

.method public setHoverScrollMode(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 4624
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mHoverScrollEnable:Z

    .line 4625
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 12
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x0

    const/4 v9, 0x1

    .line 1380
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceMode:I

    if-nez v2, :cond_1

    .line 1449
    :cond_0
    :goto_0
    return-void

    .line 1385
    :cond_1
    if-eqz p2, :cond_4

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceMode:I

    if-ne v2, v6, :cond_4

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v2, :cond_4

    .line 1386
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMultiChoiceModeCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMultiChoiceModeCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;

    .line 1387
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1388
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "SeslAbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1392
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMultiChoiceModeCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1396
    :cond_4
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceMode:I

    if-ne v2, v6, :cond_c

    .line 1397
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    .line 1398
    .local v7, "oldValue":Z
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1399
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1400
    if-eqz p2, :cond_9

    .line 1401
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v10, v11, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1406
    :cond_6
    :goto_1
    if-eq v7, p2, :cond_a

    move v0, v9

    .line 1407
    .local v0, "itemCheckChanged":Z
    :goto_2
    if-eqz v0, :cond_7

    .line 1408
    if-eqz p2, :cond_b

    .line 1409
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedItemCount:I

    .line 1414
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_8

    .line 1415
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1416
    .local v4, "id":J
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMultiChoiceModeCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1444
    .end local v4    # "id":J
    .end local v7    # "oldValue":Z
    :cond_8
    :goto_4
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mInLayout:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mBlockLayoutRequests:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 1445
    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDataChanged:Z

    .line 1446
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->rememberSyncState()V

    .line 1447
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->requestLayout()V

    goto/16 :goto_0

    .line 1403
    .end local v0    # "itemCheckChanged":Z
    .restart local v7    # "oldValue":Z
    :cond_9
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    :cond_a
    move v0, v1

    .line 1406
    goto :goto_2

    .line 1411
    .restart local v0    # "itemCheckChanged":Z
    :cond_b
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedItemCount:I

    goto :goto_3

    .line 1420
    .end local v0    # "itemCheckChanged":Z
    .end local v7    # "oldValue":Z
    :cond_c
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_10

    move v8, v9

    .line 1423
    .local v8, "updateIds":Z
    :goto_5
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isItemChecked(I)Z

    move-result v2

    if-eq v2, p2, :cond_11

    move v0, v9

    .line 1424
    .restart local v0    # "itemCheckChanged":Z
    :goto_6
    if-nez p2, :cond_d

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1425
    :cond_d
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1426
    if-eqz v8, :cond_e

    .line 1427
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1432
    :cond_e
    if-eqz p2, :cond_12

    .line 1433
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1434
    if-eqz v8, :cond_f

    .line 1435
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1437
    :cond_f
    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedItemCount:I

    goto :goto_4

    .end local v0    # "itemCheckChanged":Z
    .end local v8    # "updateIds":Z
    :cond_10
    move v8, v1

    .line 1420
    goto :goto_5

    .restart local v8    # "updateIds":Z
    :cond_11
    move v0, v1

    .line 1423
    goto :goto_6

    .line 1438
    .restart local v0    # "itemCheckChanged":Z
    :cond_12
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1439
    :cond_13
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCheckedItemCount:I

    goto/16 :goto_4
.end method

.method public setMotionEvent(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1091
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionEnable:Z

    .line 1092
    return-void
.end method

.method public setMultiChoiceModeListener(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeListener;

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMultiChoiceModeCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 1616
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMultiChoiceModeCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;

    .line 1618
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMultiChoiceModeCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;->setWrapped(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeListener;)V

    .line 1619
    return-void
.end method

.method public setMultiFocusListItem(II)V
    .locals 1
    .param p1, "startItem"    # I
    .param p2, "endItem"    # I

    .prologue
    .line 9523
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPressItemListArray:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 9529
    :goto_0
    return-void

    .line 9527
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->resetPressItemListArray()V

    .line 9528
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->addToPressItemListArray(II)V

    goto :goto_0
.end method

.method public setOnFluidScrollEffectListener(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnFluidScrollEffectListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnFluidScrollEffectListener;

    .prologue
    .line 9991
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOnFluidScrollEffectListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnFluidScrollEffectListener;

    .line 9992
    return-void
.end method

.method public setOnScrollListener(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnScrollListener;

    .prologue
    .line 1977
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$OnScrollListener;

    .line 1978
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->invokeOnItemScrollListener()V

    .line 1979
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 1216
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 1217
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_0

    .line 1218
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1219
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1220
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 1226
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->setOverScrollMode(I)V

    .line 1227
    return-void

    .line 1223
    :cond_1
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1224
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method public setRecyclerListener(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecyclerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecyclerListener;

    .prologue
    .line 8361
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;

    invoke-static {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->access$4902(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecyclerListener;)Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecyclerListener;

    .line 8362
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 1923
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->setScrollBarStyle(I)V

    .line 1924
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    if-eqz v0, :cond_0

    .line 1925
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->setScrollBarStyle(I)V

    .line 1927
    :cond_0
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "up"    # Landroid/view/View;
    .param p2, "down"    # Landroid/view/View;

    .prologue
    .line 3540
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mScrollUp:Landroid/view/View;

    .line 3541
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mScrollDown:Landroid/view/View;

    .line 3542
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 2234
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 2235
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->clearScrollingCache()V

    .line 2237
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mScrollingCacheEnabled:Z

    .line 2238
    return-void
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x1

    .line 9116
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 9149
    :cond_0
    :goto_0
    return-void

    .line 9120
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEnableGoToTop:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopState:I

    if-eq v0, v1, :cond_2

    .line 9121
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9122
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setupGoToTop(I)V

    .line 9123
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->autoHide(I)V

    .line 9126
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_6

    .line 9127
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 9128
    if-ltz p1, :cond_3

    .line 9129
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setNextSelectedPositionInt(I)V

    .line 9135
    :cond_3
    :goto_1
    if-ltz p1, :cond_0

    .line 9136
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLayoutMode:I

    .line 9137
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSpecificTop:I

    .line 9139
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mNeedSync:Z

    if-eqz v0, :cond_4

    .line 9140
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSyncPosition:I

    .line 9141
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSyncRowId:J

    .line 9144
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    if-eqz v0, :cond_5

    .line 9145
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;->stop()V

    .line 9147
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->requestLayout()V

    goto :goto_0

    .line 9132
    :cond_6
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mResurrectToPosition:I

    goto :goto_1
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .param p1, "resID"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 3457
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 3458
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3461
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 3462
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3463
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3465
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3466
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3467
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3468
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectionLeftPadding:I

    .line 3469
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectionTopPadding:I

    .line 3470
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectionRightPadding:I

    .line 3471
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectionBottomPadding:I

    .line 3472
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3473
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->updateSelectorState()V

    .line 3474
    return-void
.end method

.method public setSmoothScrollEnable(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 10070
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 10071
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    .line 10073
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->access$2900(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;)Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->setSmoothScrollEnabled(Z)V

    .line 10074
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1956
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSmoothScrollbarEnabled:Z

    .line 1957
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .param p1, "stackFromBottom"    # Z

    .prologue
    .line 2305
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 2306
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mStackFromBottom:Z

    .line 2307
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->requestLayoutIfNecessary()V

    .line 2309
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .param p1, "textFilterEnabled"    # Z

    .prologue
    .line 2251
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTextFilterEnabled:Z

    .line 2252
    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 1107
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchSlop:I

    .line 1108
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 8262
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTranscriptMode:I

    .line 8263
    return-void
.end method

.method public setVelocityScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 6797
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mVelocityScale:F

    .line 6798
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1913
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->setVerticalScrollbarPosition(I)V

    .line 1914
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    if-eqz v0, :cond_1

    .line 1915
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslFastScroller;->setScrollbarPosition(I)V

    .line 1919
    :cond_0
    :goto_0
    return-void

    .line 1916
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFluidScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    if-eqz v0, :cond_0

    .line 1917
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFluidScroll:Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslFluidScroller;->setScrollbarPosition(I)V

    goto :goto_0
.end method

.method public setupGoToTop(I)V
    .locals 14
    .param p1, "where"    # I

    .prologue
    .line 9620
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEnableGoToTop:Z

    if-nez v9, :cond_0

    .line 9710
    :goto_0
    return-void

    .line 9624
    :cond_0
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9625
    const-string v9, "SeslAbsListView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setup GOTOTOP = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", fade out = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mShowFadeOutGTP:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9627
    const/4 v9, 0x1

    if-ne p1, v9, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canScrollUp()Z

    move-result v9

    if-nez v9, :cond_1

    .line 9628
    const/4 p1, 0x0

    .line 9631
    :cond_1
    const/4 v9, -0x1

    if-ne p1, v9, :cond_d

    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopSizeChnage:Z

    if-eqz v9, :cond_d

    .line 9632
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canScrollUp()Z

    move-result v9

    if-nez v9, :cond_c

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canScrollDown()Z

    move-result v9

    if-nez v9, :cond_c

    .line 9633
    const/4 p1, 0x0

    .line 9641
    :cond_2
    :goto_1
    if-eqz p1, :cond_f

    .line 9642
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9647
    :cond_3
    :goto_2
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mShowFadeOutGTP:I

    if-nez v9, :cond_4

    if-nez p1, :cond_4

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopLastState:I

    if-eqz v9, :cond_4

    .line 9648
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 9651
    :cond_4
    const/4 v9, 0x2

    if-eq p1, v9, :cond_5

    .line 9652
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v10, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 9655
    :cond_5
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopState:I

    .line 9657
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getWidth()I

    move-result v8

    .line 9658
    .local v8, "w":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v5

    .line 9659
    .local v5, "h":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingLeft()I

    move-result v9

    sub-int v9, v8, v9

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingRight()I

    move-result v10

    sub-int v2, v9, v10

    .line 9660
    .local v2, "contentW":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingLeft()I

    move-result v9

    div-int/lit8 v10, v2, 0x2

    add-int v1, v9, v10

    .line 9662
    .local v1, "centerX":I
    const/4 v9, 0x2

    new-array v6, v9, [I

    fill-array-data v6, :array_0

    .line 9663
    .local v6, "locOnScr":[I
    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getLocationInWindow([I)V

    .line 9664
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 9667
    .local v3, "dm":Landroid/util/DisplayMetrics;
    const/4 v9, 0x0

    aget v9, v6, v9

    if-gez v9, :cond_6

    .line 9668
    const/4 v9, 0x0

    aget v9, v6, v9

    neg-int v7, v9

    .line 9669
    .local v7, "overlappedW":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingLeft()I

    move-result v9

    if-le v7, v9, :cond_6

    .line 9670
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingLeft()I

    move-result v9

    sub-int v9, v7, v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v1, v9

    .line 9675
    .end local v7    # "overlappedW":I
    :cond_6
    const/4 v9, 0x0

    aget v9, v6, v9

    add-int/2addr v9, v8

    iget v10, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v9, v10, :cond_7

    .line 9676
    const/4 v9, 0x0

    aget v9, v6, v9

    add-int/2addr v9, v8

    iget v10, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v7, v9, v10

    .line 9677
    .restart local v7    # "overlappedW":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingRight()I

    move-result v9

    if-le v7, v9, :cond_7

    .line 9678
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingRight()I

    move-result v9

    sub-int v9, v7, v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v1, v9

    .line 9682
    .end local v7    # "overlappedW":I
    :cond_7
    packed-switch p1, :pswitch_data_0

    .line 9699
    :cond_8
    :goto_3
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mShowFadeOutGTP:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_9

    .line 9700
    const/4 v9, 0x0

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mShowFadeOutGTP:I

    .line 9702
    :cond_9
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 9704
    const/4 v9, 0x1

    if-ne p1, v9, :cond_b

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopLastState:I

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v9

    if-eqz v9, :cond_a

    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopSizeChnage:Z

    if-eqz v9, :cond_b

    .line 9705
    :cond_a
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToToFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 9708
    :cond_b
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopSizeChnage:Z

    .line 9709
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopState:I

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopLastState:I

    goto/16 :goto_0

    .line 9635
    .end local v1    # "centerX":I
    .end local v2    # "contentW":I
    .end local v3    # "dm":Landroid/util/DisplayMetrics;
    .end local v5    # "h":I
    .end local v6    # "locOnScr":[I
    .end local v8    # "w":I
    :cond_c
    iget p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopLastState:I

    goto/16 :goto_1

    .line 9637
    :cond_d
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canScrollUp()Z

    move-result v9

    if-nez v9, :cond_e

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canScrollDown()Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, -0x1

    if-ne p1, v9, :cond_2

    .line 9638
    :cond_e
    const/4 p1, 0x1

    goto/16 :goto_1

    .line 9643
    :cond_f
    const/4 v9, 0x1

    if-eq p1, v9, :cond_3

    .line 9644
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToToFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 9684
    .restart local v1    # "centerX":I
    .restart local v2    # "contentW":I
    .restart local v3    # "dm":Landroid/util/DisplayMetrics;
    .restart local v5    # "h":I
    .restart local v6    # "locOnScr":[I
    .restart local v8    # "w":I
    :pswitch_0
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mShowFadeOutGTP:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_8

    .line 9685
    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopRect:Landroid/graphics/Rect;

    goto :goto_3

    .line 9690
    :pswitch_1
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9691
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/samsung/android/support/sesl/R$dimen;->sesl_go_to_top_scrollable_view_gap:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 9692
    .local v4, "gapH":I
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/samsung/android/support/sesl/R$dimen;->sesl_go_to_top_scrollable_view_size:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 9693
    .local v0, "buttonSize":I
    new-instance v9, Landroid/graphics/Rect;

    div-int/lit8 v10, v0, 0x2

    sub-int v10, v1, v10

    sub-int v11, v5, v0

    sub-int/2addr v11, v4

    div-int/lit8 v12, v0, 0x2

    add-int/2addr v12, v1

    sub-int v13, v5, v4

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopRect:Landroid/graphics/Rect;

    goto/16 :goto_3

    .line 9662
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 9682
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method shouldShowSelector()Z
    .locals 1

    .prologue
    .line 3403
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isPressed()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isHovered()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method shouldShowSelectorDefault()Z
    .locals 1

    .prologue
    .line 3410
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showContextMenu(FF)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 4008
    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->pointToPosition(II)I

    move-result v1

    .line 4009
    .local v1, "position":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 4010
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 4011
    .local v2, "id":J
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    sub-int v4, v1, v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4012
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 4013
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 4014
    invoke-super {p0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    .line 4019
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "id":J
    :goto_0
    return v4

    .line 4017
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 4019
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->showContextMenu()Z

    move-result v4

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 4024
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 4025
    .local v3, "longPressPosition":I
    if-ltz v3, :cond_2

    .line 4026
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 4027
    .local v4, "longPressId":J
    const/4 v6, 0x0

    .line 4029
    .local v6, "handled":Z
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOnItemLongClickListener:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 4030
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mOnItemLongClickListener:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 4033
    :cond_0
    if-nez v6, :cond_1

    .line 4034
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    sub-int v0, v3, v0

    .line 4035
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4034
    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 4037
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 4042
    .end local v4    # "longPressId":J
    .end local v6    # "handled":Z
    :cond_1
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method showGoToTop()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1997
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEnableGoToTop:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1998
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setupGoToTop(I)V

    .line 1999
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->autoHide(I)V

    .line 2001
    :cond_0
    return-void
.end method

.method public showMultiChoiceMode(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1628
    if-eqz p1, :cond_1

    .line 1629
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMultiChoiceModeCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;

    if-eqz v0, :cond_0

    .line 1630
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMultiChoiceModeCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1638
    :cond_0
    :goto_0
    return-void

    .line 1633
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1634
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1635
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    goto :goto_0
.end method

.method public smoothScrollBy(I)V
    .locals 3
    .param p1, "distance"    # I

    .prologue
    .line 6945
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    if-nez v1, :cond_0

    .line 6946
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    .line 6949
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mScrollRemains:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 6950
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mScrollRemains:Ljava/util/LinkedList;

    .line 6951
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SmoothScrollByMove;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SmoothScrollByMove;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$1;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSmoothScrollByMove:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SmoothScrollByMove;

    .line 6952
    const/high16 v1, 0x43160000    # 150.0f

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDensityScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->sScrollAmount:I

    .line 6955
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mScrollRemains:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    .line 6956
    .local v0, "isEmpty":Z
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sget v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->sScrollAmount:I

    if-le v1, v2, :cond_3

    .line 6957
    if-lez p1, :cond_2

    .line 6958
    :goto_0
    sget v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->sScrollAmount:I

    if-le p1, v1, :cond_3

    .line 6959
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mScrollRemains:Ljava/util/LinkedList;

    sget v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->sScrollAmount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 6958
    sget v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->sScrollAmount:I

    sub-int/2addr p1, v1

    goto :goto_0

    .line 6962
    :cond_2
    :goto_1
    sget v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->sScrollAmount:I

    neg-int v1, v1

    if-ge p1, v1, :cond_3

    .line 6963
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mScrollRemains:Ljava/util/LinkedList;

    sget v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->sScrollAmount:I

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 6962
    sget v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->sScrollAmount:I

    add-int/2addr p1, v1

    goto :goto_1

    .line 6967
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mScrollRemains:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 6968
    if-eqz v0, :cond_4

    .line 6969
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSmoothScrollByMove:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$SmoothScrollByMove;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 6971
    :cond_4
    return-void
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1, "distance"    # I
    .param p2, "duration"    # I

    .prologue
    .line 6879
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->smoothScrollBy(IIZ)V

    .line 6880
    return-void
.end method

.method smoothScrollBy(IIZ)V
    .locals 9
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    .prologue
    const/4 v8, 0x0

    .line 6974
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    if-nez v5, :cond_0

    .line 6975
    new-instance v5, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    invoke-direct {v5, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    iput-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    .line 6979
    :cond_0
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    .line 6980
    .local v2, "firstPos":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v1

    .line 6981
    .local v1, "childCount":I
    add-int v3, v2, v1

    .line 6982
    .local v3, "lastPos":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingTop()I

    move-result v4

    .line 6983
    .local v4, "topLimit":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 6985
    .local v0, "bottomLimit":I
    if-eqz p1, :cond_2

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    if-nez v2, :cond_1

    .line 6986
    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-ne v5, v4, :cond_1

    if-ltz p1, :cond_2

    :cond_1
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    if-ne v3, v5, :cond_5

    add-int/lit8 v5, v1, -0x1

    .line 6988
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ne v5, v0, :cond_5

    if-lez p1, :cond_5

    .line 6989
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->endFling()V

    .line 6990
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    if-eqz v5, :cond_3

    .line 6991
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;->stop()V

    .line 6998
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isSupportGotoTop()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCanGoFuther:Z

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    if-nez v5, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canScrollUp()Z

    move-result v5

    if-nez v5, :cond_4

    .line 6999
    const-string v5, "SeslAbsListView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " re calculate done2 mPositionScroller = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7000
    iput-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mCanGoFuther:Z

    .line 7001
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->endFling()V

    .line 7002
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    if-eqz v5, :cond_4

    .line 7003
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;->stop()V

    .line 7006
    :cond_4
    return-void

    .line 6994
    :cond_5
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->reportScrollStateChange(I)V

    .line 6995
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;

    invoke-virtual {v5, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$FlingRunnable;->startScroll(IIZ)V

    goto :goto_0
.end method

.method smoothScrollByOffset(I)V
    .locals 10
    .param p1, "position"    # I

    .prologue
    const/high16 v9, 0x3f400000    # 0.75f

    .line 7012
    const/4 v2, -0x1

    .line 7013
    .local v2, "index":I
    if-gez p1, :cond_3

    .line 7014
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 7019
    :cond_0
    :goto_0
    const/4 v7, -0x1

    if-le v2, v7, :cond_2

    .line 7020
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7021
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 7022
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 7023
    .local v4, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 7025
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int v1, v7, v8

    .line 7026
    .local v1, "childRectArea":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int v5, v7, v8

    .line 7027
    .local v5, "visibleRectArea":I
    int-to-float v7, v5

    int-to-float v8, v1

    div-float v3, v7, v8

    .line 7028
    .local v3, "visibleArea":F
    const/high16 v6, 0x3f400000    # 0.75f

    .line 7029
    .local v6, "visibleThreshold":F
    if-gez p1, :cond_4

    cmpg-float v7, v3, v9

    if-gez v7, :cond_4

    .line 7032
    add-int/lit8 v2, v2, 0x1

    .line 7039
    .end local v1    # "childRectArea":I
    .end local v3    # "visibleArea":F
    .end local v5    # "visibleRectArea":I
    .end local v6    # "visibleThreshold":F
    :cond_1
    :goto_1
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getCount()I

    move-result v8

    add-int v9, v2, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->smoothScrollToPosition(I)V

    .line 7042
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "visibleRect":Landroid/graphics/Rect;
    :cond_2
    return-void

    .line 7015
    :cond_3
    if-lez p1, :cond_0

    .line 7016
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getLastVisiblePosition()I

    move-result v2

    goto :goto_0

    .line 7033
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childRectArea":I
    .restart local v3    # "visibleArea":F
    .restart local v4    # "visibleRect":Landroid/graphics/Rect;
    .restart local v5    # "visibleRectArea":I
    .restart local v6    # "visibleThreshold":F
    :cond_4
    if-lez p1, :cond_1

    cmpg-float v7, v3, v9

    if-gez v7, :cond_1

    .line 7036
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public smoothScrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 6813
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 6814
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->createPositionScroller()Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    .line 6816
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;->start(I)V

    .line 6817
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .prologue
    .line 6867
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 6868
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->createPositionScroller()Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    .line 6870
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;->start(II)V

    .line 6871
    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 6850
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 6851
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->createPositionScroller()Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    .line 6853
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;->startWithOffset(II)V

    .line 6854
    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .prologue
    .line 6832
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 6833
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->createPositionScroller()Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    .line 6835
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$AbsPositionScroller;->startWithOffset(III)V

    .line 6836
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 3379
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 3384
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3382
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3379
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .locals 31
    .param p1, "deltaY"    # I
    .param p2, "incrementalDeltaY"    # I

    .prologue
    .line 7121
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v8

    .line 7122
    .local v8, "childCount":I
    if-nez v8, :cond_0

    .line 7123
    const/16 v29, 0x1

    .line 7286
    :goto_0
    return v29

    .line 7126
    :cond_0
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTop()I

    move-result v16

    .line 7127
    .local v16, "firstTop":I
    add-int/lit8 v29, v8, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getBottom()I

    move-result v22

    .line 7129
    .local v22, "lastBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    .line 7134
    .local v23, "listPadding":Landroid/graphics/Rect;
    const/4 v13, 0x0

    .line 7135
    .local v13, "effectivePaddingTop":I
    const/4 v12, 0x0

    .line 7136
    .local v12, "effectivePaddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getFlagClipToPadding()Z

    move-result v29

    if-eqz v29, :cond_1

    .line 7137
    move-object/from16 v0, v23

    iget v13, v0, Landroid/graphics/Rect;->top:I

    .line 7138
    move-object/from16 v0, v23

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    .line 7142
    :cond_1
    sub-int v25, v13, v16

    .line 7143
    .local v25, "spaceAbove":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v29

    sub-int v14, v29, v12

    .line 7144
    .local v14, "end":I
    sub-int v26, v22, v14

    .line 7146
    .local v26, "spaceBelow":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v29

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingBottom()I

    move-result v30

    sub-int v29, v29, v30

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getPaddingTop()I

    move-result v30

    sub-int v19, v29, v30

    .line 7147
    .local v19, "height":I
    if-gez p1, :cond_3

    .line 7148
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 7153
    :goto_1
    if-gez p2, :cond_4

    .line 7154
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 7159
    :goto_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    .line 7162
    .local v15, "firstPosition":I
    if-nez v15, :cond_5

    .line 7163
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    sub-int v29, v16, v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPositionDistanceGuess:I

    .line 7167
    :goto_3
    add-int v29, v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    .line 7168
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    add-int v29, v29, v22

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLastPositionDistanceGuess:I

    .line 7173
    :goto_4
    if-nez v15, :cond_7

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    move/from16 v0, v16

    move/from16 v1, v29

    if-lt v0, v1, :cond_7

    if-ltz p2, :cond_7

    const/4 v5, 0x1

    .line 7175
    .local v5, "cannotScrollDown":Z
    :goto_5
    add-int v29, v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_8

    .line 7176
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v29

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move/from16 v0, v22

    move/from16 v1, v29

    if-gt v0, v1, :cond_8

    if-gtz p2, :cond_8

    const/4 v6, 0x1

    .line 7178
    .local v6, "cannotScrollUp":Z
    :goto_6
    if-nez v5, :cond_2

    if-eqz v6, :cond_a

    .line 7179
    :cond_2
    if-eqz p2, :cond_9

    const/16 v29, 0x1

    goto/16 :goto_0

    .line 7150
    .end local v5    # "cannotScrollDown":Z
    .end local v6    # "cannotScrollUp":Z
    .end local v15    # "firstPosition":I
    :cond_3
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto/16 :goto_1

    .line 7156
    :cond_4
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_2

    .line 7165
    .restart local v15    # "firstPosition":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPositionDistanceGuess:I

    move/from16 v29, v0

    add-int v29, v29, p2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPositionDistanceGuess:I

    goto :goto_3

    .line 7170
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLastPositionDistanceGuess:I

    move/from16 v29, v0

    add-int v29, v29, p2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLastPositionDistanceGuess:I

    goto :goto_4

    .line 7173
    :cond_7
    const/4 v5, 0x0

    goto :goto_5

    .line 7176
    .restart local v5    # "cannotScrollDown":Z
    :cond_8
    const/4 v6, 0x0

    goto :goto_6

    .line 7179
    .restart local v6    # "cannotScrollUp":Z
    :cond_9
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 7182
    :cond_a
    if-gez p2, :cond_15

    const/4 v11, 0x1

    .line 7184
    .local v11, "down":Z
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isInTouchMode()Z

    move-result v21

    .line 7185
    .local v21, "inTouchMode":Z
    if-eqz v21, :cond_b

    .line 7186
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->hideSelector()V

    .line 7189
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeaderViewsCount()I

    move-result v18

    .line 7190
    .local v18, "headerViewsCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mItemCount:I

    move/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getFooterViewsCount()I

    move-result v30

    sub-int v17, v29, v30

    .line 7192
    .local v17, "footerViewsStart":I
    const/16 v27, 0x0

    .line 7193
    .local v27, "start":I
    const/4 v10, 0x0

    .line 7195
    .local v10, "count":I
    if-eqz v11, :cond_18

    .line 7196
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v28, v0

    .line 7197
    .local v28, "top":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getFlagClipToPadding()Z

    move-result v29

    if-eqz v29, :cond_c

    .line 7198
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    add-int v28, v28, v29

    .line 7200
    :cond_c
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_8
    move/from16 v0, v20

    if-ge v0, v8, :cond_d

    .line 7201
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 7202
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v29

    move/from16 v0, v29

    move/from16 v1, v28

    if-lt v0, v1, :cond_16

    .line 7238
    .end local v7    # "child":Landroid/view/View;
    .end local v28    # "top":I
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionViewOriginalTop:I

    move/from16 v29, v0

    add-int v29, v29, p1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionViewNewTop:I

    .line 7240
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mBlockLayoutRequests:Z

    .line 7242
    if-lez v10, :cond_e

    .line 7243
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->detachViewsFromParent(II)V

    .line 7244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->removeSkippedScrap()V

    .line 7249
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->awakenScrollBars()Z

    move-result v29

    if-nez v29, :cond_f

    .line 7250
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->invalidate()V

    .line 7253
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->semOffsetChildrenTopAndBottom(Landroid/view/ViewGroup;I)V

    .line 7255
    if-eqz v11, :cond_10

    .line 7256
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    move/from16 v29, v0

    add-int v29, v29, v10

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    .line 7259
    :cond_10
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 7260
    .local v3, "absIncrementalDeltaY":I
    move/from16 v0, v25

    if-lt v0, v3, :cond_11

    move/from16 v0, v26

    if-ge v0, v3, :cond_12

    .line 7261
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->fillGap(Z)V

    .line 7264
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->fullyDetachScrapViews()V

    .line 7265
    if-nez v21, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedPosition:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_1b

    .line 7266
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    move/from16 v30, v0

    sub-int v9, v29, v30

    .line 7267
    .local v9, "childIndex":I
    if-ltz v9, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_13

    .line 7268
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectedPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 7279
    .end local v9    # "childIndex":I
    :cond_13
    :goto_9
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mBlockLayoutRequests:Z

    .line 7280
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mEnableGoToTop:Z

    move/from16 v29, v0

    if-eqz v29, :cond_14

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canScrollUp()Z

    move-result v29

    if-eqz v29, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopState:I

    move/from16 v29, v0

    if-nez v29, :cond_14

    .line 7281
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setupGoToTop(I)V

    .line 7282
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->autoHide(I)V

    .line 7284
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->invokeOnItemScrollListener()V

    .line 7286
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 7182
    .end local v3    # "absIncrementalDeltaY":I
    .end local v10    # "count":I
    .end local v11    # "down":Z
    .end local v17    # "footerViewsStart":I
    .end local v18    # "headerViewsCount":I
    .end local v20    # "i":I
    .end local v21    # "inTouchMode":Z
    .end local v27    # "start":I
    :cond_15
    const/4 v11, 0x0

    goto/16 :goto_7

    .line 7205
    .restart local v7    # "child":Landroid/view/View;
    .restart local v10    # "count":I
    .restart local v11    # "down":Z
    .restart local v17    # "footerViewsStart":I
    .restart local v18    # "headerViewsCount":I
    .restart local v20    # "i":I
    .restart local v21    # "inTouchMode":Z
    .restart local v27    # "start":I
    .restart local v28    # "top":I
    :cond_16
    add-int/lit8 v10, v10, 0x1

    .line 7206
    add-int v24, v15, v20

    .line 7209
    .local v24, "position":I
    invoke-static {v7}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->clearAccessibilityFocus(Landroid/view/View;)V

    .line 7210
    move/from16 v0, v24

    move/from16 v1, v18

    if-lt v0, v1, :cond_17

    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_17

    .line 7211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v7, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 7200
    :cond_17
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_8

    .line 7216
    .end local v7    # "child":Landroid/view/View;
    .end local v20    # "i":I
    .end local v24    # "position":I
    .end local v28    # "top":I
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getHeight()I

    move-result v29

    sub-int v4, v29, p2

    .line 7217
    .local v4, "bottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getFlagClipToPadding()Z

    move-result v29

    if-eqz v29, :cond_19

    .line 7218
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    sub-int v4, v4, v29

    .line 7220
    :cond_19
    add-int/lit8 v20, v8, -0x1

    .restart local v20    # "i":I
    :goto_a
    if-ltz v20, :cond_d

    .line 7221
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 7222
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v29

    move/from16 v0, v29

    if-le v0, v4, :cond_d

    .line 7225
    move/from16 v27, v20

    .line 7226
    add-int/lit8 v10, v10, 0x1

    .line 7227
    add-int v24, v15, v20

    .line 7230
    .restart local v24    # "position":I
    invoke-static {v7}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->clearAccessibilityFocus(Landroid/view/View;)V

    .line 7231
    move/from16 v0, v24

    move/from16 v1, v18

    if-lt v0, v1, :cond_1a

    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_1a

    .line 7232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v7, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 7220
    :cond_1a
    add-int/lit8 v20, v20, -0x1

    goto :goto_a

    .line 7270
    .end local v4    # "bottom":I
    .end local v7    # "child":Landroid/view/View;
    .end local v24    # "position":I
    .restart local v3    # "absIncrementalDeltaY":I
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectorPosition:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_1c

    .line 7271
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectorPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    move/from16 v30, v0

    sub-int v9, v29, v30

    .line 7272
    .restart local v9    # "childIndex":I
    if-ltz v9, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_13

    .line 7273
    const/16 v29, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_9

    .line 7276
    .end local v9    # "childIndex":I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_9
.end method

.method triggerDoubleFling(I)V
    .locals 4
    .param p1, "initialVelocity"    # I

    .prologue
    .line 6018
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 6019
    .local v0, "adapterCount":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildCount()I

    move-result v1

    .line 6021
    .local v1, "visibleItemsCount":I
    if-lez p1, :cond_2

    .line 6022
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getLastVisiblePosition()I

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    if-le v2, v3, :cond_0

    .line 6023
    mul-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setSelection(I)V

    .line 6025
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->smoothScrollToPosition(I)V

    .line 6032
    :cond_1
    :goto_0
    return-void

    .line 6026
    :cond_2
    if-gez p1, :cond_1

    .line 6027
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v3, v1, 0x3

    if-le v2, v3, :cond_3

    .line 6028
    add-int/lit8 v2, v0, -0x1

    mul-int/lit8 v3, v1, 0x3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setSelection(I)V

    .line 6030
    :cond_3
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->smoothScrollToPosition(I)V

    goto :goto_0
.end method

.method triggerJumpScrollToTop()V
    .locals 1

    .prologue
    .line 5992
    sget v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mJumpScrollToTopState:I

    .line 5993
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->triggerDoubleFling(I)V

    .line 5994
    return-void
.end method

.method updateScrollIndicators()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 2848
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2849
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mScrollUp:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2852
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2853
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mScrollDown:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2855
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 2849
    goto :goto_0

    :cond_3
    move v1, v2

    .line 2853
    goto :goto_1
.end method

.method updateSelectorState()V
    .locals 5

    .prologue
    .line 3545
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3546
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 3547
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->shouldShowSelector()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3549
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isHovered()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsHoveredByMouse:Z

    if-nez v3, :cond_3

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectorPosition:I

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    if-lt v3, v4, :cond_3

    .line 3550
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectorPosition:I

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3551
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->findEllipsizedTextView(Landroid/view/View;)Z

    move-result v1

    .line 3552
    .local v1, "ellipsized":Z
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mIsPenHovered:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mAlwaysDisableHoverHighlight:Z

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3553
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v4, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3554
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 3566
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "ellipsized":Z
    :cond_1
    :goto_0
    return-void

    .line 3556
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "ellipsized":Z
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getDrawableStateForSelector()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 3559
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "ellipsized":Z
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getDrawableStateForSelector()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 3563
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v4, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3611
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
