.class abstract Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;
.super Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;
.source "SeslAbsHorizontalListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/Filter$FilterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecyclerListener;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeListener;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AdapterDataSetObserver;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$InputConnectionWrapper;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SeslSmoothScrollByMove;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForKeyLongPress;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForLongPress;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$WindowRunnnable;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$ListItemAccessibilityDelegate;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SelectionBoundsAdjuster;,
        Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$OnScrollListener;
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

.field private static final DEBUG:Z = false

.field private static DEBUG_VELOCITY_TRACKER_TRACE:Z = false

.field private static final DRAGSCROLL_WORKING_ZONE_DP:I = 0x19

.field private static final HOVERSCROLL_LEFT:I = 0x1

.field private static final HOVERSCROLL_RIGHT:I = 0x2

.field private static final HOVERSCROLL_SPEED_FASTER:F = 30.0f

.field private static final HOVERSCROLL_WIDTH_LEFT_DP:I = 0x19

.field private static final HOVERSCROLL_WIDTH_RIGHT_DP:I = 0x19

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

.field private static final SAVED_STATE_KEY_FOR_BUNDLE:Ljava/lang/String; = "com.sec.android.touchwiz.widget.SeslAbsHorizontalListView.SavedState"

.field private static final TAG:Ljava/lang/String; = "SeslHorizAbsListView"

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

.field private static mScrollAmount:I

.field static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:F

.field private mAccessibilityDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$ListItemAccessibilityDelegate;

.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field mAdapterHasStableIds:Z

.field private mAlwaysDisableHoverHighlight:Z

.field private mCacheColorHint:I

.field mCachingActive:Z

.field mCachingStarted:Z

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

.field mChoiceActionMode:Landroid/view/ActionMode;

.field mChoiceMode:I

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mCloseChildByLeft:Landroid/view/View;

.field private mCloseChildByRight:Landroid/view/View;

.field private mCloseChildPositionByLeft:I

.field private mCloseChildPositionByRight:I

.field private mContext:Landroid/content/Context;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field public mCurrentFocusPosition:I

.field private mCurrentKeyCode:I

.field private mCustomMultiChoiceMode:Z

.field private mDVFSLockAcquired:Z

.field mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AdapterDataSetObserver;

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDensityScale:F

.field private mDirection:I

.field private mDistanceFromCloseChildLeft:I

.field private mDistanceFromCloseChildRight:I

.field private mDistanceFromTrackedChildLeft:I

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

.field private mEdgeGlowLeft:Landroid/widget/EdgeEffect;

.field private mEdgeGlowRight:Landroid/widget/EdgeEffect;

.field private mEnableVibrationAtLongPress:Z

.field private mExtraPaddingInLeftHoverArea:I

.field private mExtraPaddingInRightHoverArea:I

.field private mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

.field mFastScrollAlwaysVisible:Z

.field mFastScrollEnabled:Z

.field private mFastScrollStyle:I

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field private mFirstPressedPoint:I

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

.field private mForceTranscriptScroll:Z

.field private mForcedClick:Z

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mGlowPaddingBottom:I

.field private mGlowPaddingTop:I

.field private mHapticOverScroll:Z

.field private mHasWindowFocusForMotion:Z

.field mHeightMeasureSpec:I

.field public mHoverAreaEnter:Z

.field private mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

.field private mHoverLeftAreaWidth:I

.field private mHoverPosition:I

.field private mHoverRecognitionCurrentTime:J

.field private mHoverRecognitionDurationTime:J

.field private mHoverRecognitionStartTime:J

.field private mHoverRightAreaWidth:I

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:J

.field private mHoverScrollStateForListener:I

.field private mHoverScrollTimeInterval:J

.field private mHoveredOnEllipsizedText:Z

.field mHoveringEnabled:Z

.field private mIsChildViewEnabled:Z

.field private mIsCloseChildSetted:Z

.field private mIsCtrlkeyPressed:Z

.field private mIsDetaching:Z

.field private mIsDragBlockEnabled:Z

.field private mIsDragScrolled:Z

.field private mIsEnabledPaddingInHoverScroll:Z

.field private mIsHoverOverscrolled:Z

.field private mIsHoveredByMouse:Z

.field private mIsMultiFocusEnabled:Z

.field private mIsNeedPenSelectIconSet:Z

.field private mIsNeedPenSelection:Z

.field private mIsOnClickEnabled:Z

.field private mIsPenHovered:Z

.field private mIsPenPressed:Z

.field private mIsPenSelectPointerSetted:Z

.field private mIsQCShown:Z

.field final mIsScrap:[Z

.field private mIsSendHoverScrollState:Z

.field private mIsShiftkeyPressed:Z

.field private mIsTextSelectionStarted:Z

.field private mIsfirstMoveEvent:Z

.field private mJumpScrollToTopState:I

.field private mLastAccessibilityScrollEventFromIndex:I

.field private mLastAccessibilityScrollEventToIndex:I

.field private mLastHandledItemCount:I

.field private mLastPosition:I

.field private mLastPositionDistanceGuess:I

.field mLastScrollState:I

.field private mLastTouchMode:I

.field mLastX:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field private mMotionEnable:Z

.field mMotionPosition:I

.field mMotionViewNewLeft:I

.field mMotionViewOriginalLeft:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;

.field private mMultiFocusImage:Landroid/graphics/drawable/Drawable;

.field public mMultiSelectionStart:Z

.field private mNeedsHoverScroll:Z

.field private mNestedXOffset:I

.field private mNewTextViewHoverState:Z

.field private mOldAdapterItemCount:I

.field private mOldHoverScrollDirection:I

.field private mOldKeyCode:I

.field private mOldTextViewHoverState:Z

.field private mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$OnScrollListener;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field mOverscrollMax:I

.field private final mOwnerThread:Ljava/lang/Thread;

.field private mPenDragScrollTimeInterval:J

.field private mPendingCheckForKeyLongPress:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForLongPress;

.field private mPendingCheckForTap:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;

.field private mPendingSync:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;

.field private mPerformClick:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;

.field private mPointerCount:I

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;

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

.field private mPublicInputConnection:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$InputConnectionWrapper;

.field private mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

.field private mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mQCLocation:I

.field private mQCRect:Landroid/graphics/Rect;

.field private mQCScrollDirection:I

.field private mQCScrollFrom:I

.field private mQCScrollNext:I

.field private mQCScrollRunnable:Ljava/lang/Runnable;

.field private mQCScrollTo:I

.field private mQCScrollingCount:I

.field private mQCstate:I

.field final mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;

.field mResurrectToPosition:I

.field private mRootViewCheckForDialog:Landroid/view/View;

.field private final mScrollConsumed:[I

.field private mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field mScrollLeft:Landroid/view/View;

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

.field mScrollRight:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field private mSecondPressedPoint:I

.field mSelectedLeft:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSmoothScrollByMove:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SeslSmoothScrollByMove;

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTrackedChild:Landroid/view/View;

.field private mTrackedChildPosition:I

.field private mTranscriptMode:I

.field private mVelocityScale:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    sput-boolean v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->DEBUG_VELOCITY_TRACKER_TRACE:Z

    .line 823
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 5789
    sput v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    .line 5790
    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    .line 5791
    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->JUMP_SCROLL_TO_TOP_FINISHING:I

    .line 6681
    const/16 v0, 0x1f4

    sput v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollAmount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1120
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1124
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 1128
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 1132
    invoke-direct/range {p0 .. p4}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 129
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionEnable:Z

    .line 131
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHasWindowFocusForMotion:Z

    .line 270
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceMode:I

    .line 303
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLayoutMode:I

    .line 323
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDrawSelectorOnTop:Z

    .line 333
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectorPosition:I

    .line 338
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 344
    new-instance v14, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;

    .line 349
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectionLeftPadding:I

    .line 354
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectionTopPadding:I

    .line 359
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectionRightPadding:I

    .line 364
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectionBottomPadding:I

    .line 369
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    .line 374
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHeightMeasureSpec:I

    .line 422
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    .line 453
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectedLeft:I

    .line 496
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    .line 516
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mResurrectToPosition:I

    .line 518
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 544
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLastTouchMode:I

    .line 547
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollProfilingStarted:Z

    .line 550
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFlingProfilingStarted:Z

    .line 606
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLastScrollState:I

    .line 631
    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mVelocityScale:F

    .line 633
    const/4 v14, 0x1

    new-array v14, v14, [Z

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsScrap:[Z

    .line 635
    const/4 v14, 0x2

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollOffset:[I

    .line 636
    const/4 v14, 0x2

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollConsumed:[I

    .line 638
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mRootViewCheckForDialog:Landroid/view/View;

    .line 644
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mNestedXOffset:I

    .line 654
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mActivePointerId:I

    .line 659
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPointerCount:I

    .line 665
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHapticOverScroll:Z

    .line 713
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDirection:I

    .line 749
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverLeftAreaWidth:I

    .line 751
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRightAreaWidth:I

    .line 761
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRecognitionDurationTime:J

    .line 763
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRecognitionCurrentTime:J

    .line 765
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRecognitionStartTime:J

    .line 767
    const-wide/16 v14, 0x12c

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollTimeInterval:J

    .line 769
    const-wide/16 v14, 0x1f4

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPenDragScrollTimeInterval:J

    .line 771
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollStartTime:J

    .line 773
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollDirection:I

    .line 778
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsHoverOverscrolled:Z

    .line 783
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollEnable:Z

    .line 789
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverAreaEnter:Z

    .line 791
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsSendHoverScrollState:Z

    .line 796
    const/high16 v14, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->HOVERSCROLL_SPEED:F

    .line 806
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->HOVERSCROLL_DELAY:I

    .line 808
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mNeedsHoverScroll:Z

    .line 810
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollStateForListener:I

    .line 812
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsEnabledPaddingInHoverScroll:Z

    .line 815
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoveringEnabled:Z

    .line 817
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mExtraPaddingInLeftHoverArea:I

    .line 818
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mExtraPaddingInRightHoverArea:I

    .line 833
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEnableVibrationAtLongPress:Z

    .line 843
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCustomMultiChoiceMode:Z

    .line 848
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsCtrlkeyPressed:Z

    .line 849
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsShiftkeyPressed:Z

    .line 850
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsPenHovered:Z

    .line 851
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsPenPressed:Z

    .line 852
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsfirstMoveEvent:Z

    .line 854
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsMultiFocusEnabled:Z

    .line 858
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPressedPoint:I

    .line 859
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSecondPressedPoint:I

    .line 860
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOldAdapterItemCount:I

    .line 861
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOldKeyCode:I

    .line 862
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCurrentKeyCode:I

    .line 863
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCurrentFocusPosition:I

    .line 866
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMultiSelectionStart:Z

    .line 867
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsTextSelectionStarted:Z

    .line 868
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsNeedPenSelection:Z

    .line 870
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragSelectedItemSize:I

    .line 871
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragSelectedViewPosition:I

    .line 872
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsPenSelectPointerSetted:Z

    .line 873
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsNeedPenSelectIconSet:Z

    .line 874
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOldTextViewHoverState:Z

    .line 875
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mNewTextViewHoverState:Z

    .line 876
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPreviousTextViewScroll:Z

    .line 879
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsDragBlockEnabled:Z

    .line 880
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragStartX:I

    .line 881
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragStartY:I

    .line 882
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragEndX:I

    .line 883
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragEndY:I

    .line 885
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockLeft:I

    .line 886
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockTop:I

    .line 887
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockRight:I

    .line 888
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockBottom:I

    .line 890
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTrackedChild:Landroid/view/View;

    .line 891
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTrackedChildPosition:I

    .line 892
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDistanceFromTrackedChildLeft:I

    .line 894
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsCloseChildSetted:Z

    .line 895
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOldHoverScrollDirection:I

    .line 896
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCloseChildByLeft:Landroid/view/View;

    .line 897
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCloseChildPositionByLeft:I

    .line 898
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDistanceFromCloseChildLeft:I

    .line 899
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCloseChildByRight:Landroid/view/View;

    .line 900
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCloseChildPositionByRight:I

    .line 901
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDistanceFromCloseChildRight:I

    .line 904
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockRect:Landroid/graphics/Rect;

    .line 906
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsOnClickEnabled:Z

    .line 997
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDVFSLockAcquired:Z

    .line 3649
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mForcedClick:Z

    .line 4782
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragScrollWorkingZonePx:I

    .line 4783
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsDragScrolled:Z

    .line 5792
    sget v14, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mJumpScrollToTopState:I

    .line 5849
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverPosition:I

    .line 5851
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoveredOnEllipsizedText:Z

    .line 5852
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsHoveredByMouse:Z

    .line 5853
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAlwaysDisableHoverHighlight:Z

    .line 6679
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSmoothScrollByMove:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SeslSmoothScrollByMove;

    .line 6680
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollRemains:Ljava/util/LinkedList;

    .line 9736
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollSpeed:I

    .line 10263
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCLocation:I

    .line 10264
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCstate:I

    .line 10265
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsQCShown:Z

    .line 10270
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCScrollingCount:I

    .line 10429
    new-instance v14, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$6;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    .line 1133
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mContext:Landroid/content/Context;

    .line 1134
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->initAbsListView()V

    .line 1136
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOwnerThread:Ljava/lang/Thread;

    .line 1138
    sget-object v14, Lcom/samsung/android/support/sesl/R$styleable;->SeslAbsListView:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v14, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 1141
    .local v4, "a":Landroid/content/res/TypedArray;
    sget v14, Lcom/samsung/android/support/sesl/R$styleable;->SeslAbsListView_android_listSelector:I

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1142
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_0

    .line 1143
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1146
    :cond_0
    sget v14, Lcom/samsung/android/support/sesl/R$styleable;->SeslAbsListView_android_drawSelectorOnTop:I

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDrawSelectorOnTop:Z

    .line 1149
    sget v14, Lcom/samsung/android/support/sesl/R$styleable;->SeslAbsListView_android_stackFromBottom:I

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 1150
    .local v11, "stackFromBottom":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setStackFromBottom(Z)V

    .line 1152
    sget v14, Lcom/samsung/android/support/sesl/R$styleable;->SeslAbsListView_android_scrollingCache:I

    const/4 v15, 0x1

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 1153
    .local v9, "scrollingCacheEnabled":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setScrollingCacheEnabled(Z)V

    .line 1155
    sget v14, Lcom/samsung/android/support/sesl/R$styleable;->SeslAbsListView_android_textFilterEnabled:I

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 1156
    .local v13, "useTextFilter":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setTextFilterEnabled(Z)V

    .line 1158
    sget v14, Lcom/samsung/android/support/sesl/R$styleable;->SeslAbsListView_android_transcriptMode:I

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 1160
    .local v12, "transcriptMode":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setTranscriptMode(I)V

    .line 1162
    sget v14, Lcom/samsung/android/support/sesl/R$styleable;->SeslAbsListView_android_cacheColorHint:I

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 1163
    .local v5, "color":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setCacheColorHint(I)V

    .line 1165
    sget v14, Lcom/samsung/android/support/sesl/R$styleable;->SeslAbsListView_android_fastScrollEnabled:I

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 1166
    .local v7, "enableFastScroll":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setFastScrollEnabled(Z)V

    .line 1168
    sget v14, Lcom/samsung/android/support/sesl/R$styleable;->SeslAbsListView_android_fastScrollStyle:I

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 1169
    .local v8, "fastScrollStyle":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setFastScrollStyle(I)V

    .line 1171
    sget v14, Lcom/samsung/android/support/sesl/R$styleable;->SeslAbsListView_android_smoothScrollbar:I

    const/4 v15, 0x1

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 1172
    .local v10, "smoothScrollbar":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setSmoothScrollbarEnabled(Z)V

    .line 1174
    sget v14, Lcom/samsung/android/support/sesl/R$styleable;->SeslAbsListView_android_choiceMode:I

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setChoiceMode(I)V

    .line 1175
    sget v14, Lcom/samsung/android/support/sesl/R$styleable;->SeslAbsListView_android_fastScrollAlwaysVisible:I

    const/4 v15, 0x0

    .line 1176
    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    .line 1175
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setFastScrollAlwaysVisible(Z)V

    .line 1178
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1179
    return-void
.end method

.method private acceptFilter()Z
    .locals 1

    .prologue
    .line 2365
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_0

    .line 2366
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2365
    :goto_0
    return v0

    .line 2366
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setFastScrollerEnabledUiThread(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->addToPressItemListArray(II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 122
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPressedPoint:I

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;
    .param p1, "x1"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPressedPoint:I

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForLongPress;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingCheckForLongPress:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForLongPress;)Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForLongPress;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;
    .param p1, "x1"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForLongPress;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingCheckForLongPress:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsDetaching:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 122
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mActivePointerId:I

    return v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Landroid/view/VelocityTracker;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 122
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMaximumVelocity:I

    return v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 122
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Landroid/widget/EdgeEffect;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Landroid/widget/EdgeEffect;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->clearScrollingCache()V

    return-void
.end method

.method static synthetic access$2700(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;IIIIIIIIZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;
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
    .line 122
    invoke-virtual/range {p0 .. p9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 122
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mJumpScrollToTopState:I

    return v0
.end method

.method static synthetic access$2802(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;
    .param p1, "x1"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mJumpScrollToTopState:I

    return p1
.end method

.method static synthetic access$2900()I
    .locals 1

    .prologue
    .line 122
    sget v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->JUMP_SCROLL_TO_TOP_FINISHING:I

    return v0
.end method

.method static synthetic access$3000()I
    .locals 1

    .prologue
    .line 122
    sget v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    return v0
.end method

.method static synthetic access$3100(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->postOnJumpScrollToFinished()V

    return-void
.end method

.method static synthetic access$3200(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;IIIIIIIIZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;
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
    .line 122
    invoke-virtual/range {p0 .. p9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollRemains:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;
    .param p1, "x1"    # Z

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$3800(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCustomMultiChoiceMode:Z

    return v0
.end method

.method static synthetic access$4300(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 122
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$4400(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4500()I
    .locals 1

    .prologue
    .line 122
    sget v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    return v0
.end method

.method static synthetic access$4600(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 122
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCScrollTo:I

    return v0
.end method

.method static synthetic access$4800(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 122
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCScrollNext:I

    return v0
.end method

.method static synthetic access$4802(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;
    .param p1, "x1"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCScrollNext:I

    return p1
.end method

.method static synthetic access$4900(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 122
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCScrollFrom:I

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 122
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCScrollingCount:I

    return v0
.end method

.method static synthetic access$5008(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)I
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 122
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCScrollingCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCScrollingCount:I

    return v0
.end method

.method static synthetic access$5100(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Landroid/view/animation/DecelerateInterpolator;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 122
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCScrollDirection:I

    return v0
.end method

.method static synthetic access$5300(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mForcedClick:Z

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsShiftkeyPressed:Z

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsCtrlkeyPressed:Z

    return v0
.end method

.method private addToPressItemListArray(II)V
    .locals 4
    .param p1, "firstpoint"    # I
    .param p2, "secondpoint"    # I

    .prologue
    .line 10175
    const/4 v0, 0x0

    .line 10177
    .local v0, "checkCount":I
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsMultiFocusEnabled:Z

    if-nez v2, :cond_0

    .line 10218
    :goto_0
    return-void

    .line 10181
    :cond_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    .line 10182
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10183
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10217
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->invalidate()V

    goto :goto_0

    .line 10185
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10188
    :cond_3
    if-ge p1, p2, :cond_5

    .line 10189
    sub-int v2, p2, p1

    add-int/lit8 v0, v2, 0x1

    .line 10190
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_1

    .line 10191
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10192
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10196
    :goto_3
    add-int/lit8 p1, p1, 0x1

    .line 10190
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 10194
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 10198
    .end local v1    # "i":I
    :cond_5
    if-le p1, p2, :cond_7

    .line 10199
    sub-int v2, p1, p2

    add-int/lit8 v0, v2, 0x1

    .line 10200
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v0, :cond_1

    .line 10201
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 10202
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10206
    :goto_5
    add-int/lit8 p1, p1, -0x1

    .line 10200
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 10204
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 10209
    .end local v1    # "i":I
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 10210
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10212
    :cond_8
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private clearScrollingCache()V
    .locals 1

    .prologue
    .line 6848
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6849
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 6850
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$5;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 6866
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->post(Ljava/lang/Runnable;)Z

    .line 6868
    :cond_1
    return-void
.end method

.method private contentFits()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1657
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 1658
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 1668
    :cond_0
    :goto_0
    return v1

    .line 1660
    :cond_1
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    if-eq v0, v3, :cond_2

    move v1, v2

    .line 1661
    goto :goto_0

    .line 1663
    :cond_2
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsRTL:Z

    if-eqz v3, :cond_4

    .line 1664
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    if-gt v3, v4, :cond_3

    add-int/lit8 v3, v0, -0x1

    .line 1665
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-ge v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 1668
    :cond_4
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lt v3, v4, :cond_5

    add-int/lit8 v3, v0, -0x1

    .line 1669
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method private createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 6840
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6841
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 6842
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 6843
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCachingActive:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCachingStarted:Z

    .line 6845
    :cond_0
    return-void
.end method

.method private createTextFilter(Z)V
    .locals 4
    .param p1, "animateEntrance"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 8016
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 8017
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 8018
    .local v0, "p":Landroid/widget/PopupWindow;
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 8019
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 8020
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 8021
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 8022
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 8023
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 8024
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8025
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    .line 8026
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8027
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 8036
    .end local v0    # "p":Landroid/widget/PopupWindow;
    :cond_0
    return-void
.end method

.method private dismissPopup()V
    .locals 1

    .prologue
    .line 7644
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 7645
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 7647
    :cond_0
    return-void
.end method

.method private doScrollToLeftEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 10402
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCScrollDirection:I

    .line 10403
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCScrollFrom:I

    .line 10404
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCScrollTo:I

    .line 10405
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCScrollNext:I

    .line 10406
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCScrollingCount:I

    .line 10408
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-nez v0, :cond_0

    .line 10409
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 10412
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->post(Ljava/lang/Runnable;)Z

    .line 10413
    return-void
.end method

.method private doScrollToRightEnd()V
    .locals 1

    .prologue
    .line 10416
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCScrollDirection:I

    .line 10417
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCScrollFrom:I

    .line 10418
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCScrollTo:I

    .line 10419
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCScrollNext:I

    .line 10420
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCScrollingCount:I

    .line 10422
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-nez v0, :cond_0

    .line 10423
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 10426
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->post(Ljava/lang/Runnable;)Z

    .line 10427
    return-void
.end method

.method private drawQuickController(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 10382
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCstate:I

    if-eq v2, v4, :cond_0

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCstate:I

    if-ne v2, v5, :cond_3

    .line 10383
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getScrollX()I

    move-result v1

    .line 10384
    .local v1, "scrollX":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 10385
    .local v0, "restoreCount":I
    int-to-float v2, v1

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10387
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCstate:I

    if-ne v2, v4, :cond_2

    .line 10388
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 10393
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 10395
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsQCShown:Z

    .line 10399
    .end local v0    # "restoreCount":I
    .end local v1    # "scrollX":I
    :goto_1
    return-void

    .line 10389
    .restart local v0    # "restoreCount":I
    .restart local v1    # "scrollX":I
    :cond_2
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCstate:I

    if-ne v2, v5, :cond_1

    .line 10390
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 10397
    .end local v0    # "restoreCount":I
    .end local v1    # "scrollX":I
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsQCShown:Z

    goto :goto_1
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3228
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 3229
    .local v3, "tempSelectorRect":Landroid/graphics/Rect;
    const/4 v0, 0x0

    .line 3230
    .local v0, "selectedChild":Landroid/view/View;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3231
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3232
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3233
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3237
    .end local v2    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsMultiFocusEnabled:Z

    if-eqz v4, :cond_2

    .line 3239
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPressItemListArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3240
    .local v1, "selectedPosition":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3242
    if-eqz v0, :cond_1

    .line 3243
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 3244
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3245
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 3250
    .end local v1    # "selectedPosition":Ljava/lang/Integer;
    :cond_2
    return-void
.end method

.method private finishGlows()V
    .locals 1

    .prologue
    .line 8288
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 8289
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 8290
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 8292
    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8
    .param p0, "source"    # Landroid/graphics/Rect;
    .param p1, "dest"    # Landroid/graphics/Rect;
    .param p2, "direction"    # I

    .prologue
    .line 7690
    sparse-switch p2, :sswitch_data_0

    .line 7723
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 7692
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 7693
    .local v4, "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 7694
    .local v5, "sY":I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 7695
    .local v0, "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 7727
    .local v1, "dY":I
    :goto_0
    sub-int v2, v0, v4

    .line 7728
    .local v2, "deltaX":I
    sub-int v3, v1, v5

    .line 7729
    .local v3, "deltaY":I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 7698
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

    .line 7699
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 7700
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 7701
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 7702
    .restart local v1    # "dY":I
    goto :goto_0

    .line 7704
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 7705
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 7706
    .restart local v5    # "sY":I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 7707
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 7708
    .restart local v1    # "dY":I
    goto :goto_0

    .line 7710
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

    .line 7711
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 7712
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 7713
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 7714
    .restart local v1    # "dY":I
    goto :goto_0

    .line 7717
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

    .line 7718
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 7719
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 7720
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 7721
    .restart local v1    # "dY":I
    goto :goto_0

    .line 7690
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

.method private getSeslEnableVibrationAtLongPress()Z
    .locals 1

    .prologue
    .line 966
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEnableVibrationAtLongPress:Z

    return v0
.end method

.method private getTextFilterInput()Landroid/widget/EditText;
    .locals 3

    .prologue
    .line 8039
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    if-nez v1, :cond_0

    .line 8040
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 8041
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/samsung/android/support/sesl/R$layout;->sesl_typing_filter:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    .line 8046
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 8048
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 8049
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 8051
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    return-object v1
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 9755
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 9967
    :cond_0
    :goto_0
    return-void

    .line 9757
    :pswitch_0
    const/4 v5, 0x0

    .line 9759
    .local v5, "offset":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRecognitionCurrentTime:J

    .line 9760
    iget-wide v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRecognitionCurrentTime:J

    iget-wide v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRecognitionStartTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    iput-wide v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRecognitionDurationTime:J

    .line 9762
    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsPenHovered:Z

    if-eqz v7, :cond_1

    iget-wide v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRecognitionCurrentTime:J

    iget-wide v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollStartTime:J

    sub-long/2addr v8, v10

    iget-wide v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollTimeInterval:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_0

    .line 9764
    :cond_1
    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsPenPressed:Z

    if-eqz v7, :cond_2

    iget-wide v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRecognitionCurrentTime:J

    iget-wide v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollStartTime:J

    sub-long/2addr v8, v10

    iget-wide v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPenDragScrollTimeInterval:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_0

    .line 9768
    :cond_2
    const/4 v7, 0x1

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->HOVERSCROLL_SPEED:F

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mContext:Landroid/content/Context;

    .line 9769
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 9768
    invoke-static {v7, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollSpeed:I

    .line 9771
    iget-wide v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x2

    cmp-long v7, v8, v10

    if-lez v7, :cond_8

    iget-wide v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x4

    cmp-long v7, v8, v10

    if-gez v7, :cond_8

    .line 9772
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollSpeed:I

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollSpeed:I

    int-to-double v8, v8

    const-wide v10, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollSpeed:I

    .line 9779
    :cond_3
    :goto_1
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollDirection:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_a

    .line 9780
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollSpeed:I

    mul-int/lit8 v5, v7, -0x1

    .line 9781
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTrackedChild:Landroid/view/View;

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCloseChildByRight:Landroid/view/View;

    if-nez v7, :cond_5

    :cond_4
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOldHoverScrollDirection:I

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollDirection:I

    if-eq v7, v8, :cond_6

    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsCloseChildSetted:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    .line 9782
    :cond_5
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCloseChildByRight:Landroid/view/View;

    iput-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTrackedChild:Landroid/view/View;

    .line 9783
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDistanceFromCloseChildRight:I

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDistanceFromTrackedChildLeft:I

    .line 9784
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCloseChildPositionByRight:I

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTrackedChildPosition:I

    .line 9785
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollDirection:I

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOldHoverScrollDirection:I

    .line 9786
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsCloseChildSetted:Z

    .line 9799
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 9803
    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsRTL:Z

    if-eqz v7, :cond_17

    .line 9804
    if-gez v5, :cond_d

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    .line 9805
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getCount()I

    move-result v8

    if-ne v7, v8, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingLeft()I

    move-result v7

    .line 9806
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    .line 9805
    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 9806
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    if-eq v7, v8, :cond_d

    .line 9808
    :cond_7
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->smoothScrollBy(II)V

    .line 9809
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    const/4 v8, 0x1

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->HOVERSCROLL_DELAY:I

    int-to-long v10, v9

    invoke-virtual {v7, v8, v10, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 9773
    :cond_8
    iget-wide v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x4

    cmp-long v7, v8, v10

    if-ltz v7, :cond_9

    iget-wide v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x5

    cmp-long v7, v8, v10

    if-gez v7, :cond_9

    .line 9774
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollSpeed:I

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollSpeed:I

    int-to-double v8, v8

    const-wide v10, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollSpeed:I

    goto/16 :goto_1

    .line 9775
    :cond_9
    iget-wide v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x5

    cmp-long v7, v8, v10

    if-ltz v7, :cond_3

    .line 9776
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollSpeed:I

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollSpeed:I

    int-to-double v8, v8

    const-wide v10, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollSpeed:I

    goto/16 :goto_1

    .line 9789
    :cond_a
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollSpeed:I

    mul-int/lit8 v5, v7, 0x1

    .line 9790
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTrackedChild:Landroid/view/View;

    if-nez v7, :cond_b

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCloseChildByRight:Landroid/view/View;

    if-nez v7, :cond_c

    :cond_b
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOldHoverScrollDirection:I

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollDirection:I

    if-eq v7, v8, :cond_6

    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsCloseChildSetted:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    .line 9791
    :cond_c
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCloseChildByRight:Landroid/view/View;

    iput-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTrackedChild:Landroid/view/View;

    .line 9792
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDistanceFromCloseChildRight:I

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDistanceFromTrackedChildLeft:I

    .line 9793
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCloseChildPositionByRight:I

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTrackedChildPosition:I

    .line 9794
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollDirection:I

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOldHoverScrollDirection:I

    .line 9795
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsCloseChildSetted:Z

    goto/16 :goto_2

    .line 9811
    :cond_d
    if-lez v5, :cond_f

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    if-nez v7, :cond_e

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    if-eq v7, v8, :cond_f

    .line 9813
    :cond_e
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->smoothScrollBy(II)V

    .line 9814
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    const/4 v8, 0x1

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->HOVERSCROLL_DELAY:I

    int-to-long v10, v9

    invoke-virtual {v7, v8, v10, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 9818
    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getOverScrollMode()I

    move-result v6

    .line 9819
    .local v6, "overscrollMode":I
    if-eqz v6, :cond_10

    const/4 v7, 0x1

    if-ne v6, v7, :cond_15

    .line 9820
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->contentFits()Z

    move-result v7

    if-nez v7, :cond_15

    :cond_10
    const/4 v0, 0x1

    .line 9822
    .local v0, "canOverscroll":Z
    :goto_3
    if-eqz v0, :cond_14

    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_14

    .line 9823
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollDirection:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_16

    .line 9825
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 9826
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 9827
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_11

    .line 9828
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 9839
    :cond_11
    :goto_4
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_13

    .line 9840
    :cond_12
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->invalidate()V

    .line 9843
    :cond_13
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsHoverOverscrolled:Z

    .line 9845
    :cond_14
    if-nez v0, :cond_0

    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_0

    .line 9846
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    .line 9820
    .end local v0    # "canOverscroll":Z
    :cond_15
    const/4 v0, 0x0

    goto :goto_3

    .line 9830
    .restart local v0    # "canOverscroll":Z
    :cond_16
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollDirection:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_11

    .line 9832
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 9833
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 9834
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_11

    .line 9835
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_4

    .line 9852
    .end local v0    # "canOverscroll":Z
    .end local v6    # "overscrollMode":I
    :cond_17
    if-gez v5, :cond_19

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    if-nez v7, :cond_18

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingLeft()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    if-eq v7, v8, :cond_19

    .line 9853
    :cond_18
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->smoothScrollBy(II)V

    .line 9854
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    const/4 v8, 0x1

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->HOVERSCROLL_DELAY:I

    int-to-long v10, v9

    invoke-virtual {v7, v8, v10, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 9856
    :cond_19
    if-lez v5, :cond_1b

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    .line 9857
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getCount()I

    move-result v8

    if-ne v7, v8, :cond_1a

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    .line 9858
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    .line 9857
    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 9858
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    if-eq v7, v8, :cond_1b

    .line 9860
    :cond_1a
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->smoothScrollBy(II)V

    .line 9861
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    const/4 v8, 0x1

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->HOVERSCROLL_DELAY:I

    int-to-long v10, v9

    invoke-virtual {v7, v8, v10, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 9864
    :cond_1b
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getOverScrollMode()I

    move-result v6

    .line 9865
    .restart local v6    # "overscrollMode":I
    if-eqz v6, :cond_1c

    const/4 v7, 0x1

    if-ne v6, v7, :cond_21

    .line 9866
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->contentFits()Z

    move-result v7

    if-nez v7, :cond_21

    :cond_1c
    const/4 v0, 0x1

    .line 9868
    .restart local v0    # "canOverscroll":Z
    :goto_5
    if-eqz v0, :cond_20

    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_20

    .line 9869
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollDirection:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_22

    .line 9871
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 9872
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 9873
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_1d

    .line 9874
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 9885
    :cond_1d
    :goto_6
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_1f

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_1e

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_1f

    .line 9886
    :cond_1e
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->invalidate()V

    .line 9889
    :cond_1f
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsHoverOverscrolled:Z

    .line 9891
    :cond_20
    if-nez v0, :cond_0

    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_0

    .line 9892
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    .line 9866
    .end local v0    # "canOverscroll":Z
    :cond_21
    const/4 v0, 0x0

    goto :goto_5

    .line 9876
    .restart local v0    # "canOverscroll":Z
    :cond_22
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollDirection:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1d

    .line 9878
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 9879
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 9880
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_1d

    .line 9881
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_6

    .line 9901
    .end local v0    # "canOverscroll":Z
    .end local v5    # "offset":I
    .end local v6    # "overscrollMode":I
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v3

    .line 9903
    .local v3, "childCount":I
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 9908
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getCount()I

    move-result v8

    if-ne v7, v8, :cond_23

    .line 9909
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    if-eq v7, v8, :cond_27

    :cond_23
    const/4 v2, 0x1

    .line 9911
    .local v2, "canScrollRight":Z
    :goto_7
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    if-nez v7, :cond_24

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingLeft()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    if-eq v7, v8, :cond_28

    :cond_24
    const/4 v1, 0x1

    .line 9913
    .local v1, "canScrollLeft":Z
    :goto_8
    const/4 v7, 0x1

    const/high16 v8, 0x41f00000    # 30.0f

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mContext:Landroid/content/Context;

    .line 9914
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 9913
    invoke-static {v7, v8, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollSpeed:I

    .line 9916
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCLocation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_29

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollSpeed:I

    neg-int v4, v7

    .line 9918
    .local v4, "distanceToMove":I
    :goto_9
    if-gez v4, :cond_25

    if-nez v1, :cond_26

    :cond_25
    if-lez v4, :cond_2a

    if-eqz v2, :cond_2a

    .line 9920
    :cond_26
    const/4 v7, 0x0

    invoke-virtual {p0, v4, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->smoothScrollBy(II)V

    .line 9921
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    const/4 v8, 0x2

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->HOVERSCROLL_DELAY:I

    int-to-long v10, v9

    invoke-virtual {v7, v8, v10, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 9909
    .end local v1    # "canScrollLeft":Z
    .end local v2    # "canScrollRight":Z
    .end local v4    # "distanceToMove":I
    :cond_27
    const/4 v2, 0x0

    goto :goto_7

    .line 9911
    .restart local v2    # "canScrollRight":Z
    :cond_28
    const/4 v1, 0x0

    goto :goto_8

    .line 9916
    .restart local v1    # "canScrollLeft":Z
    :cond_29
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollSpeed:I

    goto :goto_9

    .line 9924
    .restart local v4    # "distanceToMove":I
    :cond_2a
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getOverScrollMode()I

    move-result v6

    .line 9925
    .restart local v6    # "overscrollMode":I
    if-eqz v6, :cond_2b

    const/4 v7, 0x1

    if-ne v6, v7, :cond_30

    .line 9926
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->contentFits()Z

    move-result v7

    if-nez v7, :cond_30

    :cond_2b
    const/4 v0, 0x1

    .line 9928
    .restart local v0    # "canOverscroll":Z
    :goto_a
    if-eqz v0, :cond_2f

    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_2f

    .line 9929
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCLocation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_31

    .line 9930
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 9931
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 9932
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_2c

    .line 9933
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 9943
    :cond_2c
    :goto_b
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_2e

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_2d

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_2e

    .line 9944
    :cond_2d
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->invalidate()V

    .line 9947
    :cond_2e
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsHoverOverscrolled:Z

    .line 9950
    :cond_2f
    if-nez v0, :cond_0

    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_0

    .line 9951
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    .line 9926
    .end local v0    # "canOverscroll":Z
    :cond_30
    const/4 v0, 0x0

    goto :goto_a

    .line 9935
    .restart local v0    # "canOverscroll":Z
    :cond_31
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCLocation:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2c

    .line 9936
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 9937
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 9938
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_2c

    .line 9939
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_b

    .line 9957
    .end local v0    # "canOverscroll":Z
    .end local v1    # "canScrollLeft":Z
    .end local v2    # "canScrollRight":Z
    .end local v3    # "childCount":I
    .end local v4    # "distanceToMove":I
    .end local v6    # "overscrollMode":I
    :pswitch_2
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCLocation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_32

    .line 9958
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->doScrollToLeftEnd()V

    goto/16 :goto_0

    .line 9959
    :cond_32
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCLocation:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    .line 9960
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->doScrollToRightEnd()V

    goto/16 :goto_0

    .line 9755
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initAbsListView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1183
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setClickable(Z)V

    .line 1184
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setFocusableInTouchMode(Z)V

    .line 1185
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setWillNotDraw(Z)V

    .line 1186
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 1187
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setScrollingCacheEnabled(Z)V

    .line 1190
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 1191
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1192
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchSlop:I

    .line 1193
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMinimumVelocity:I

    .line 1194
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMaximumVelocity:I

    .line 1195
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOverscrollDistance:I

    .line 1196
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOverflingDistance:I

    .line 1197
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDensityScale:F

    .line 1200
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1215
    .end local v0    # "configuration":Landroid/view/ViewConfiguration;
    :cond_0
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 6069
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 6070
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6074
    :goto_0
    return-void

    .line 6072
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 6077
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 6078
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6080
    :cond_0
    return-void
.end method

.method private isInDialog()Z
    .locals 4

    .prologue
    .line 10465
    const/4 v1, 0x0

    .line 10466
    .local v1, "isInDialog":Z
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mRootViewCheckForDialog:Landroid/view/View;

    if-nez v2, :cond_1

    .line 10467
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getRootView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mRootViewCheckForDialog:Landroid/view/View;

    .line 10468
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mRootViewCheckForDialog:Landroid/view/View;

    if-nez v2, :cond_0

    .line 10469
    const/4 v2, 0x0

    .line 10479
    :goto_0
    return v2

    .line 10471
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mRootViewCheckForDialog:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 10472
    .local v0, "context":Landroid/content/Context;
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/app/Activity;

    .line 10473
    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 10474
    const/4 v1, 0x0

    :cond_1
    :goto_1
    move v2, v1

    .line 10479
    goto :goto_0

    .line 10476
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private isLockScreenMode()Z
    .locals 6

    .prologue
    .line 4367
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mContext:Landroid/content/Context;

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 4368
    .local v3, "keyguardManager":Landroid/app/KeyguardManager;
    const/4 v2, 0x0

    .line 4369
    .local v2, "isLockState":Z
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    .line 4371
    const/4 v0, 0x1

    .line 4372
    .local v0, "isCoverOpen":Z
    const/4 v1, 0x0

    .line 4373
    .local v1, "isLockScreenAndCoverOpen":Z
    if-nez v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 4375
    :goto_0
    return v1

    .line 4373
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isOwnerThread()Z
    .locals 2

    .prologue
    .line 1779
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOwnerThread:Ljava/lang/Thread;

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
    .locals 3

    .prologue
    .line 10276
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 10277
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "com.sec.feature.spen_usp"

    invoke-static {v0, v2}, Lcom/samsung/android/support/sesl/core/content/pm/SeslPackageManagerReflector;->getSystemFeatureLevel(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v1

    .line 10278
    .local v1, "sSpenUspLevel":I
    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 10279
    const/4 v2, 0x1

    .line 10281
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 9976
    const-string v0, "SeslHorizAbsListView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9977
    return-void
.end method

.method private notifyMultiSelectState(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1524
    const/4 v0, 0x0

    .line 1525
    .local v0, "handledNotifyMultiSelect":Z
    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsShiftkeyPressed:Z

    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsCtrlkeyPressed:Z

    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsPenPressed:Z

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-super/range {v1 .. v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->notifyMultiSelectedState(Landroid/view/View;IJZZZ)Z

    move-result v0

    .line 1527
    return v0
.end method

.method private onHoverDrawableState(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v5, 0x9

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5863
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 5864
    .local v0, "action":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    .line 5867
    .local v1, "toolType":I
    const/4 v4, 0x7

    if-eq v0, v4, :cond_0

    if-ne v0, v5, :cond_3

    :cond_0
    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    .line 5868
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsPenHovered:Z

    .line 5874
    :cond_1
    :goto_0
    if-eq v1, v2, :cond_5

    .line 5875
    const/4 v4, 0x3

    if-ne v1, v4, :cond_4

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsHoveredByMouse:Z

    .line 5899
    :cond_2
    :goto_2
    return-void

    .line 5869
    :cond_3
    const/16 v4, 0xa

    if-ne v0, v4, :cond_1

    .line 5870
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsPenHovered:Z

    goto :goto_0

    :cond_4
    move v2, v3

    .line 5875
    goto :goto_1

    .line 5878
    :cond_5
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsHoveredByMouse:Z

    .line 5881
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAlwaysDisableHoverHighlight:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverAreaEnter:Z

    if-eq v3, v2, :cond_2

    .line 5886
    if-ne v0, v5, :cond_6

    .line 5887
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsPenHovered:Z

    if-nez v2, :cond_2

    .line 5888
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2

    .line 5894
    :cond_6
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsPenHovered:Z

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isInDialog()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5895
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 5896
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 6201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v2, v4, 0x8

    .line 6203
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 6204
    .local v1, "pointerId":I
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mActivePointerId:I

    if-ne v1, v4, :cond_0

    .line 6208
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 6209
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionX:I

    .line 6210
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionY:I

    .line 6211
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionCorrection:I

    .line 6212
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mActivePointerId:I

    .line 6217
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionX:I

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLastX:I

    .line 6219
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    :cond_1
    move v0, v3

    .line 6208
    goto :goto_0
.end method

.method private onTouchCancel()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 5751
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    packed-switch v1, :pswitch_data_0

    .line 5764
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    .line 5765
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setPressed(Z)V

    .line 5766
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionPosition:I

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5767
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 5768
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 5770
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->clearScrollingCache()V

    .line 5771
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingCheckForLongPress:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForLongPress;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5772
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->recycleVelocityTracker()V

    .line 5775
    .end local v0    # "motionView":Landroid/view/View;
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    .line 5776
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 5777
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 5779
    :cond_1
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mActivePointerId:I

    .line 5780
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPointerCount:I

    .line 5787
    return-void

    .line 5753
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    if-nez v1, :cond_2

    .line 5754
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    .line 5756
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->startSpringback()V

    goto :goto_0

    .line 5751
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
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 5459
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    packed-switch v5, :pswitch_data_0

    .line 5475
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mActivePointerId:I

    .line 5476
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 5477
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 5478
    .local v4, "y":I
    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->pointToPosition(II)I

    move-result v1

    .line 5480
    .local v1, "motionPosition":I
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDataChanged:Z

    if-nez v5, :cond_1

    .line 5481
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    if-eq v5, v7, :cond_5

    if-ltz v1, :cond_5

    .line 5482
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v5

    check-cast v5, Landroid/widget/ListAdapter;

    invoke-interface {v5, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5486
    iput v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    .line 5488
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingCheckForTap:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;

    if-nez v5, :cond_0

    .line 5489
    new-instance v5, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$1;)V

    iput-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingCheckForTap:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;

    .line 5491
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingCheckForTap:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5504
    :cond_1
    :goto_0
    if-ltz v1, :cond_2

    .line 5506
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    sub-int v5, v1, v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5507
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionViewOriginalLeft:I

    .line 5509
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionX:I

    .line 5510
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionY:I

    .line 5511
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionPosition:I

    .line 5512
    const/high16 v5, -0x80000000

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLastX:I

    .line 5517
    .end local v1    # "motionPosition":I
    .end local v3    # "x":I
    .end local v4    # "y":I
    :goto_1
    invoke-static {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->performButtonActionOnTouchDown(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 5518
    .local v0, "bPerformButtonActionOnTouchDown":Z
    if-eqz v0, :cond_3

    .line 5519
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    if-nez v5, :cond_3

    .line 5520
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingCheckForTap:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5527
    :cond_3
    return-void

    .line 5461
    .end local v0    # "bPerformButtonActionOnTouchDown":Z
    :pswitch_0
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->endFling()V

    .line 5462
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;

    if-eqz v5, :cond_4

    .line 5463
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;->stop()V

    .line 5465
    :cond_4
    const/4 v5, 0x5

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    .line 5466
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLastX:I

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionX:I

    .line 5467
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionY:I

    .line 5468
    iput v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionCorrection:I

    .line 5469
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mActivePointerId:I

    .line 5470
    iput v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDirection:I

    goto :goto_1

    .line 5493
    .restart local v1    # "motionPosition":I
    .restart local v3    # "x":I
    .restart local v4    # "y":I
    :cond_5
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    if-ne v5, v7, :cond_1

    .line 5495
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->createScrollingCache()V

    .line 5496
    const/4 v5, 0x3

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    .line 5497
    iput v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionCorrection:I

    .line 5498
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->findMotionRow(I)I

    move-result v1

    .line 5499
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->flywheelTouch()V

    goto :goto_0

    .line 5459
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method private onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 5530
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 5531
    .local v1, "pointerIndex":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 5532
    const/4 v1, 0x0

    .line 5533
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mActivePointerId:I

    .line 5536
    :cond_0
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDataChanged:Z

    if-eqz v4, :cond_1

    .line 5539
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->layoutChildren()V

    .line 5542
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v2, v4

    .line 5544
    .local v2, "x":I
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    packed-switch v4, :pswitch_data_0

    .line 5574
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 5550
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v2, v4, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 5555
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 5557
    .local v3, "y":F
    int-to-float v4, v2

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchSlop:I

    int-to-float v5, v5

    invoke-direct {p0, v4, v3, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->pointInView(FFF)Z

    move-result v4

    if-nez v4, :cond_2

    .line 5558
    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setPressed(Z)V

    .line 5559
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionPosition:I

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5560
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 5561
    invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 5563
    :cond_3
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingCheckForTap:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;

    :goto_1
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5565
    const/4 v4, 0x2

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    .line 5566
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->updateSelectorState()V

    goto :goto_0

    .line 5563
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingCheckForLongPress:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForLongPress;

    goto :goto_1

    .line 5571
    .end local v0    # "motionView":Landroid/view/View;
    .end local v3    # "y":F
    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v2, v4, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    goto :goto_0

    .line 5544
    nop

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
    .locals 20
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 5577
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 5727
    :cond_0
    :goto_0
    :pswitch_0
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setPressed(Z)V

    .line 5729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 5730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 5731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 5735
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->invalidate()V

    .line 5736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingCheckForLongPress:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForLongPress;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5737
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->recycleVelocityTracker()V

    .line 5739
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mActivePointerId:I

    .line 5740
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPointerCount:I

    .line 5748
    :cond_2
    :goto_1
    return-void

    .line 5581
    :pswitch_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionPosition:I

    .line 5582
    .local v13, "motionPosition":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v13, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5583
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_e

    .line 5584
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 5585
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 5588
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    .line 5589
    .local v16, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v16, v17

    if-lez v17, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v16, v17

    if-gez v17, :cond_9

    const/4 v10, 0x1

    .line 5590
    .local v10, "inList":Z
    :goto_2
    if-eqz v10, :cond_e

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v17

    if-nez v17, :cond_e

    .line 5591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPerformClick:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;

    move-object/from16 v17, v0

    if-nez v17, :cond_4

    .line 5592
    new-instance v17, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$1;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPerformClick:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;

    .line 5595
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPerformClick:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;

    .line 5596
    .local v14, "performClick":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;
    iput v13, v14, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;->mClickMotionPosition:I

    .line 5597
    invoke-virtual {v14}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;->rememberWindowAttachCount()V

    .line 5599
    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mResurrectToPosition:I

    .line 5601
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 5602
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    move/from16 v17, v0

    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingCheckForTap:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;

    move-object/from16 v17, v0

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5604
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLayoutMode:I

    .line 5605
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDataChanged:Z

    move/from16 v17, v0

    if-nez v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 5606
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    .line 5607
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setSelectedPositionInt(I)V

    .line 5608
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->layoutChildren()V

    .line 5609
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 5610
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 5611
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setPressed(Z)V

    .line 5612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 5613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 5614
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    instance-of v0, v8, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 5615
    check-cast v8, Landroid/graphics/drawable/TransitionDrawable;

    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 5617
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 5619
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 5620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5622
    :cond_8
    new-instance v17, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$3;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;Landroid/view/View;Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 5634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    .line 5635
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 5634
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 5589
    .end local v10    # "inList":Z
    .end local v14    # "performClick":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 5602
    .restart local v10    # "inList":Z
    .restart local v14    # "performClick":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingCheckForLongPress:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForLongPress;

    move-object/from16 v17, v0

    goto/16 :goto_3

    .line 5637
    :cond_b
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    .line 5638
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->updateSelectorState()V

    .line 5639
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mForcedClick:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 5640
    invoke-virtual {v14}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;->run()V

    goto/16 :goto_1

    .line 5644
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mForcedClick:Z

    move/from16 v17, v0

    if-nez v17, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDataChanged:Z

    move/from16 v17, v0

    if-nez v17, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 5645
    invoke-virtual {v14}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;->run()V

    .line 5649
    .end local v10    # "inList":Z
    .end local v14    # "performClick":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;
    .end local v16    # "y":F
    :cond_e
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    .line 5650
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->updateSelectorState()V

    goto/16 :goto_0

    .line 5653
    .end local v4    # "child":Landroid/view/View;
    .end local v13    # "motionPosition":I
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v5

    .line 5654
    .local v5, "childCount":I
    if-lez v5, :cond_16

    .line 5657
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsRTL:Z

    move/from16 v17, v0

    if-eqz v17, :cond_f

    .line 5658
    add-int/lit8 v17, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 5659
    .local v9, "firstChildLeft":I
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v12

    .line 5664
    .local v12, "lastChildRight":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/Rect;->left:I

    .line 5665
    .local v6, "contentLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v7, v17, v18

    .line 5666
    .local v7, "contentRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    move/from16 v17, v0

    if-nez v17, :cond_10

    if-lt v9, v6, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    move/from16 v17, v0

    add-int v17, v17, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_10

    .line 5668
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v17

    sub-int v17, v17, v7

    move/from16 v0, v17

    if-gt v12, v0, :cond_10

    .line 5669
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    .line 5670
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 5661
    .end local v6    # "contentLeft":I
    .end local v7    # "contentRight":I
    .end local v9    # "firstChildLeft":I
    .end local v12    # "lastChildRight":I
    :cond_f
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 5662
    .restart local v9    # "firstChildLeft":I
    add-int/lit8 v17, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v12

    .restart local v12    # "lastChildRight":I
    goto :goto_4

    .line 5672
    .restart local v6    # "contentLeft":I
    .restart local v7    # "contentRight":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5673
    .local v15, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 5675
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mActivePointerId:I

    move/from16 v17, v0

    .line 5676
    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mVelocityScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v11, v0

    .line 5681
    .local v11, "initialVelocity":I
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMinimumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    move/from16 v17, v0

    if-nez v17, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOverscrollDistance:I

    move/from16 v17, v0

    sub-int v17, v6, v17

    move/from16 v0, v17

    if-eq v9, v0, :cond_14

    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    move/from16 v17, v0

    add-int v17, v17, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOverscrollDistance:I

    move/from16 v17, v0

    add-int v17, v17, v7

    move/from16 v0, v17

    if-eq v12, v0, :cond_14

    .line 5686
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    if-nez v17, :cond_13

    .line 5687
    new-instance v17, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    .line 5689
    :cond_13
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->reportScrollStateChange(I)V

    .line 5691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    neg-int v0, v11

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->start(I)V

    goto/16 :goto_0

    .line 5693
    :cond_14
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    .line 5694
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->reportScrollStateChange(I)V

    .line 5695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_15

    .line 5696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->endFling()V

    .line 5698
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 5699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;->stop()V

    goto/16 :goto_0

    .line 5704
    .end local v6    # "contentLeft":I
    .end local v7    # "contentRight":I
    .end local v9    # "firstChildLeft":I
    .end local v11    # "initialVelocity":I
    .end local v12    # "lastChildRight":I
    .end local v15    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_16
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    .line 5705
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 5710
    .end local v5    # "childCount":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    if-nez v17, :cond_17

    .line 5711
    new-instance v17, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    .line 5713
    :cond_17
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5714
    .restart local v15    # "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v17, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMaximumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 5715
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mActivePointerId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v11, v0

    .line 5717
    .restart local v11    # "initialVelocity":I
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->reportScrollStateChange(I)V

    .line 5718
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMinimumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_18

    .line 5719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    neg-int v0, v11

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_0

    .line 5721
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_0

    .line 5577
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

.method private pointInView(FFF)Z
    .locals 2
    .param p1, "localX"    # F
    .param p2, "localY"    # F
    .param p3, "slop"    # F

    .prologue
    .line 10459
    neg-float v0, p3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    neg-float v0, p3

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    .line 10460
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 10461
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 10459
    :goto_0
    return v0

    .line 10461
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private positionPopup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 7663
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 7664
    .local v1, "screenHeight":I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 7665
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getLocationOnScreen([I)V

    .line 7668
    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDensityScale:F

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 7669
    .local v0, "bottomGap":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 7670
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v4, 0x51

    aget v5, v2, v7

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 7675
    :goto_0
    return-void

    .line 7673
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

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
    .line 3040
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectorPosition:I

    if-eq p1, v4, :cond_7

    const/4 v1, 0x1

    .line 3041
    .local v1, "positionChanged":Z
    :goto_0
    const/4 v4, -0x1

    if-eq p1, v4, :cond_0

    .line 3042
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectorPosition:I

    .line 3045
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3046
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

    .line 3047
    instance-of v4, p2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SelectionBoundsAdjuster;

    if-eqz v4, :cond_1

    move-object v4, p2

    .line 3048
    check-cast v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SelectionBoundsAdjuster;

    invoke-interface {v4, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 3052
    :cond_1
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectionLeftPadding:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 3053
    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectionTopPadding:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 3054
    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectionRightPadding:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 3055
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectionBottomPadding:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 3058
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3059
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_5

    .line 3060
    if-eqz v1, :cond_2

    .line 3063
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 3064
    sget-object v4, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3066
    :cond_2
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3067
    if-eqz v1, :cond_4

    .line 3068
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 3069
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 3071
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->updateSelectorState()V

    .line 3073
    :cond_4
    if-eqz p3, :cond_5

    .line 3074
    invoke-virtual {v2, p4, p5}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 3078
    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsChildViewEnabled:Z

    .line 3079
    .local v0, "isChildViewEnabled":Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eq v4, v0, :cond_6

    .line 3080
    if-nez v0, :cond_8

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsChildViewEnabled:Z

    .line 3081
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getSelectedItemPosition()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    .line 3082
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->refreshDrawableState()V

    .line 3085
    :cond_6
    return-void

    .line 3040
    .end local v0    # "isChildViewEnabled":Z
    .end local v1    # "positionChanged":Z
    .end local v2    # "selector":Landroid/graphics/drawable/Drawable;
    .end local v3    # "selectorRect":Landroid/graphics/Rect;
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 3080
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
    .line 5803
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$4;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 5808
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 6083
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 6084
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 6085
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6087
    :cond_0
    return-void
.end method

.method private registerMotionListener()V
    .locals 0

    .prologue
    .line 9697
    return-void
.end method

.method private releaseAllBoosters()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1000
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_0

    .line 1002
    invoke-static {v1}, Lcom/samsung/android/support/sesl/core/os/SeslDVFSHelperReflector;->onScrollEvent(Z)V

    .line 1003
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDVFSLockAcquired:Z

    .line 1005
    :cond_0
    return-void
.end method

.method private scrollIfNeeded(IILandroid/view/MotionEvent;)V
    .locals 36
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4126
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionX:I

    sub-int v33, p1, v3

    .line 4127
    .local v33, "rawDeltaX":I
    const/16 v35, 0x0

    .line 4128
    .local v35, "scrollOffsetCorrection":I
    const/16 v34, 0x0

    .line 4129
    .local v34, "scrollConsumedCorrection":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLastX:I

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_0

    .line 4130
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionCorrection:I

    sub-int v33, v33, v3

    .line 4132
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLastX:I

    const/high16 v5, -0x80000000

    if-eq v3, v5, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLastX:I

    sub-int v3, v3, p1

    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollConsumed:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollOffset:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollConsumed:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    add-int v33, v33, v3

    .line 4135
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollOffset:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    neg-int v0, v3

    move/from16 v35, v0

    .line 4136
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollConsumed:[I

    const/4 v4, 0x0

    aget v34, v3, v4

    .line 4137
    if-eqz p3, :cond_1

    .line 4138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollOffset:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4139
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mNestedXOffset:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollOffset:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mNestedXOffset:I

    .line 4142
    :cond_1
    move/from16 v20, v33

    .line 4143
    .local v20, "deltaX":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLastX:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLastX:I

    sub-int v3, p1, v3

    add-int v21, v3, v34

    .line 4145
    .local v21, "incrementalDeltaX":I
    :goto_1
    const/16 v22, 0x0

    .line 4147
    .local v22, "lastXCorrection":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_12

    .line 4155
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLastX:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_7

    .line 4161
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getFlagDisallowIntercept()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4162
    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchSlop:I

    if-le v3, v4, :cond_2

    .line 4163
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getParent()Landroid/view/ViewParent;

    move-result-object v32

    .line 4164
    .local v32, "parent":Landroid/view/ViewParent;
    if-eqz v32, :cond_2

    .line 4165
    const/4 v3, 0x1

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4170
    .end local v32    # "parent":Landroid/view/ViewParent;
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionPosition:I

    if-ltz v3, :cond_a

    .line 4171
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    sub-int v23, v3, v4

    .line 4178
    .local v23, "motionIndex":I
    :goto_2
    const/16 v26, 0x0

    .line 4179
    .local v26, "motionViewPrevLeft":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 4180
    .local v25, "motionView":Landroid/view/View;
    if-eqz v25, :cond_3

    .line 4181
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I

    move-result v26

    .line 4185
    :cond_3
    const/16 v18, 0x0

    .line 4186
    .local v18, "atEdge":Z
    if-eqz v21, :cond_4

    .line 4187
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->trackMotionScroll(II)Z

    move-result v18

    .line 4191
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 4192
    if-eqz v25, :cond_6

    .line 4195
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I

    move-result v27

    .line 4196
    .local v27, "motionViewRealLeft":I
    if-eqz v18, :cond_5

    .line 4199
    move/from16 v0, v21

    neg-int v3, v0

    sub-int v4, v27, v26

    sub-int v7, v3, v4

    .line 4201
    .local v7, "overscroll":I
    sub-int v4, v7, v21

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollOffset:[I

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->dispatchNestedScroll(IIII[I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 4203
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollOffset:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-int v22, v22, v3

    .line 4204
    if-eqz p3, :cond_5

    .line 4205
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollOffset:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4206
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mNestedXOffset:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollOffset:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mNestedXOffset:I

    .line 4246
    .end local v7    # "overscroll":I
    :cond_5
    :goto_3
    add-int v3, p1, v22

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionX:I

    .line 4248
    .end local v27    # "motionViewRealLeft":I
    :cond_6
    add-int v3, p1, v22

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLastX:I

    .line 4325
    .end local v18    # "atEdge":Z
    .end local v23    # "motionIndex":I
    .end local v25    # "motionView":Landroid/view/View;
    .end local v26    # "motionViewPrevLeft":I
    :cond_7
    :goto_4
    return-void

    .line 4132
    .end local v20    # "deltaX":I
    .end local v21    # "incrementalDeltaX":I
    .end local v22    # "lastXCorrection":I
    :cond_8
    move/from16 v0, v33

    neg-int v3, v0

    goto/16 :goto_0

    .restart local v20    # "deltaX":I
    :cond_9
    move/from16 v21, v20

    .line 4143
    goto/16 :goto_1

    .line 4175
    .restart local v21    # "incrementalDeltaX":I
    .restart local v22    # "lastXCorrection":I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v3

    div-int/lit8 v23, v3, 0x2

    .restart local v23    # "motionIndex":I
    goto/16 :goto_2

    .line 4209
    .restart local v7    # "overscroll":I
    .restart local v18    # "atEdge":Z
    .restart local v25    # "motionView":Landroid/view/View;
    .restart local v26    # "motionViewPrevLeft":I
    .restart local v27    # "motionViewRealLeft":I
    :cond_b
    const/4 v8, 0x0

    .line 4210
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getScrollX()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOverscrollDistance:I

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v6, p0

    .line 4209
    invoke-virtual/range {v6 .. v15}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v19

    .line 4212
    .local v19, "atOverscrollEdge":Z
    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_c

    .line 4214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 4217
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getOverScrollMode()I

    move-result v31

    .line 4218
    .local v31, "overscrollMode":I
    if-eqz v31, :cond_d

    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_5

    .line 4220
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_5

    .line 4221
    :cond_d
    if-nez v19, :cond_e

    .line 4222
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDirection:I

    .line 4223
    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    .line 4225
    :cond_e
    if-lez v21, :cond_10

    .line 4226
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    neg-int v4, v7

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v0, p2

    int-to-float v6, v0

    .line 4227
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    .line 4226
    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 4228
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_f

    .line 4229
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4231
    :cond_f
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    .line 4232
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getHeight()I

    move-result v6

    .line 4231
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->invalidate(IIII)V

    goto/16 :goto_3

    .line 4233
    :cond_10
    if-gez v21, :cond_5

    .line 4234
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    int-to-float v4, v7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move/from16 v0, p2

    int-to-float v5, v0

    .line 4235
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 4234
    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 4236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_11

    .line 4237
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4239
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    .line 4240
    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v5

    .line 4241
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getHeight()I

    move-result v6

    .line 4239
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->invalidate(IIII)V

    goto/16 :goto_3

    .line 4250
    .end local v7    # "overscroll":I
    .end local v18    # "atEdge":Z
    .end local v19    # "atOverscrollEdge":Z
    .end local v23    # "motionIndex":I
    .end local v25    # "motionView":Landroid/view/View;
    .end local v26    # "motionViewPrevLeft":I
    .end local v27    # "motionViewRealLeft":I
    .end local v31    # "overscrollMode":I
    :cond_12
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_7

    .line 4251
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLastX:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_7

    .line 4252
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getScrollX()I

    move-result v30

    .line 4253
    .local v30, "oldScroll":I
    sub-int v29, v30, v21

    .line 4254
    .local v29, "newScroll":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLastX:I

    move/from16 v0, p1

    if-le v0, v3, :cond_1b

    const/16 v28, 0x1

    .line 4256
    .local v28, "newDirection":I
    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDirection:I

    if-nez v3, :cond_13

    .line 4257
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDirection:I

    .line 4260
    :cond_13
    move/from16 v0, v21

    neg-int v9, v0

    .line 4261
    .local v9, "overScrollDistance":I
    if-gez v29, :cond_14

    if-gez v30, :cond_15

    :cond_14
    if-lez v29, :cond_1c

    if-gtz v30, :cond_1c

    .line 4262
    :cond_15
    move/from16 v0, v30

    neg-int v9, v0

    .line 4263
    add-int v21, v21, v9

    .line 4268
    :goto_6
    if-eqz v9, :cond_18

    .line 4269
    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getScrollX()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOverscrollDistance:I

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v17}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->overScrollBy(IIIIIIIIZ)Z

    .line 4271
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getOverScrollMode()I

    move-result v31

    .line 4272
    .restart local v31    # "overscrollMode":I
    if-eqz v31, :cond_16

    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_18

    .line 4274
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_18

    .line 4275
    :cond_16
    if-lez v33, :cond_1d

    .line 4276
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    int-to-float v4, v9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v0, p2

    int-to-float v6, v0

    .line 4277
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    .line 4276
    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 4278
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_17

    .line 4279
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4281
    :cond_17
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    .line 4282
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getHeight()I

    move-result v6

    .line 4281
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->invalidate(IIII)V

    .line 4297
    .end local v31    # "overscrollMode":I
    :cond_18
    :goto_7
    if-eqz v21, :cond_1a

    .line 4299
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getScrollX()I

    move-result v3

    if-eqz v3, :cond_19

    .line 4300
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setScrollX(I)V

    .line 4302
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isHardwareAccelerated()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/View;

    if-eqz v3, :cond_19

    .line 4303
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 4307
    :cond_19
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->trackMotionScroll(II)Z

    .line 4309
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    .line 4313
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->findClosestMotionRow(I)I

    move-result v24

    .line 4315
    .local v24, "motionPosition":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionCorrection:I

    .line 4316
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    sub-int v3, v24, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 4317
    .restart local v25    # "motionView":Landroid/view/View;
    if-eqz v25, :cond_1f

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I

    move-result v3

    :goto_8
    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionViewOriginalLeft:I

    .line 4318
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionX:I

    .line 4319
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionPosition:I

    .line 4321
    .end local v24    # "motionPosition":I
    .end local v25    # "motionView":Landroid/view/View;
    :cond_1a
    add-int v3, p1, v22

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLastX:I

    .line 4322
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDirection:I

    goto/16 :goto_4

    .line 4254
    .end local v9    # "overScrollDistance":I
    .end local v28    # "newDirection":I
    :cond_1b
    const/16 v28, -0x1

    goto/16 :goto_5

    .line 4265
    .restart local v9    # "overScrollDistance":I
    .restart local v28    # "newDirection":I
    :cond_1c
    const/16 v21, 0x0

    goto/16 :goto_6

    .line 4284
    .restart local v31    # "overscrollMode":I
    :cond_1d
    if-gez v33, :cond_18

    .line 4285
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    int-to-float v4, v9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move/from16 v0, p2

    int-to-float v5, v0

    .line 4286
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 4285
    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 4287
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 4288
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4290
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    .line 4291
    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v5

    .line 4292
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getHeight()I

    move-result v6

    .line 4290
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->invalidate(IIII)V

    goto/16 :goto_7

    .line 4317
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
    .line 1770
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    if-eqz v0, :cond_0

    .line 1771
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;->setAlwaysShow(Z)V

    .line 1773
    :cond_0
    return-void
.end method

.method private setFastScrollerEnabledUiThread(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1705
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    if-eqz v0, :cond_2

    .line 1706
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;->setEnabled(Z)V

    .line 1713
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->resolvePadding(Landroid/view/ViewGroup;)V

    .line 1715
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    if-eqz v0, :cond_1

    .line 1716
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;->updateLayout()V

    .line 1718
    :cond_1
    return-void

    .line 1707
    :cond_2
    if-eqz p1, :cond_0

    .line 1708
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScrollStyle:I

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;I)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    .line 1709
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setItemViewLayoutParams(Landroid/view/View;I)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 2895
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2897
    .local v1, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_1

    .line 2898
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;

    .line 2905
    .local v0, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapterHasStableIds:Z

    if-eqz v2, :cond_0

    .line 2906
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;->itemId:J

    .line 2908
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;->viewType:I

    .line 2909
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2910
    return-void

    .line 2899
    .end local v0    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2900
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;

    .restart local v0    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    goto :goto_0

    .end local v0    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    :cond_2
    move-object v0, v1

    .line 2902
    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;

    .restart local v0    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    goto :goto_0
.end method

.method private setupQuickController(I)V
    .locals 20
    .param p1, "where"    # I

    .prologue
    .line 10285
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v14

    .line 10286
    .local v14, "w":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getHeight()I

    move-result v8

    .line 10287
    .local v8, "h":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingTop()I

    move-result v15

    sub-int v15, v8, v15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingBottom()I

    move-result v16

    sub-int v6, v15, v16

    .line 10288
    .local v6, "contentH":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingTop()I

    move-result v15

    div-int/lit8 v16, v6, 0x2

    add-int v4, v15, v16

    .line 10290
    .local v4, "centerY":I
    const/4 v3, 0x0

    .line 10291
    .local v3, "btnW":I
    const/4 v2, 0x0

    .line 10293
    .local v2, "btnH":I
    const/4 v12, 0x0

    .line 10294
    .local v12, "paddingLeft":I
    const/4 v13, 0x0

    .line 10296
    .local v13, "paddingRight":I
    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCLocation:I

    .line 10297
    .local v10, "oldLocation":I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCLocation:I

    .line 10299
    const/4 v5, 0x1

    .line 10311
    .local v5, "checkBoundary":Z
    if-eqz v5, :cond_1

    .line 10312
    const/4 v15, 0x2

    new-array v9, v15, [I

    fill-array-data v9, :array_0

    .line 10313
    .local v9, "locOnScr":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getLocationOnScreen([I)V

    .line 10314
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 10317
    .local v7, "dm":Landroid/util/DisplayMetrics;
    const/4 v15, 0x1

    aget v15, v9, v15

    if-gez v15, :cond_0

    .line 10318
    const/4 v15, 0x1

    aget v15, v9, v15

    neg-int v11, v15

    .line 10319
    .local v11, "overlappedH":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingTop()I

    move-result v15

    if-le v11, v15, :cond_0

    .line 10320
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingTop()I

    move-result v15

    sub-int v15, v11, v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v4, v15

    .line 10325
    .end local v11    # "overlappedH":I
    :cond_0
    const/4 v15, 0x1

    aget v15, v9, v15

    add-int/2addr v15, v8

    iget v0, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_1

    .line 10326
    const/4 v15, 0x1

    aget v15, v9, v15

    add-int/2addr v15, v8

    iget v0, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v16, v0

    sub-int v11, v15, v16

    .line 10327
    .restart local v11    # "overlappedH":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingBottom()I

    move-result v15

    if-le v11, v15, :cond_1

    .line 10328
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingBottom()I

    move-result v15

    sub-int v15, v11, v15

    div-int/lit8 v15, v15, 0x2

    sub-int/2addr v4, v15

    .line 10333
    .end local v7    # "dm":Landroid/util/DisplayMetrics;
    .end local v9    # "locOnScr":[I
    .end local v11    # "overlappedH":I
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsEnabledPaddingInHoverScroll:Z

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 10334
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v12, v15, Landroid/graphics/Rect;->left:I

    .line 10335
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v13, v15, Landroid/graphics/Rect;->right:I

    .line 10341
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 10377
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 10378
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 10379
    return-void

    .line 10337
    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mExtraPaddingInLeftHoverArea:I

    .line 10338
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mExtraPaddingInRightHoverArea:I

    goto :goto_0

    .line 10343
    :pswitch_0
    new-instance v15, Landroid/graphics/Rect;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v15 .. v19}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCRect:Landroid/graphics/Rect;

    goto :goto_1

    .line 10347
    :pswitch_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCLocation:I

    if-eq v15, v10, :cond_3

    .line 10352
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 10353
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 10354
    new-instance v15, Landroid/graphics/Rect;

    add-int/lit8 v16, v12, 0x0

    div-int/lit8 v17, v2, 0x2

    sub-int v17, v4, v17

    add-int v18, v3, v12

    div-int/lit8 v19, v2, 0x2

    add-int v19, v19, v4

    invoke-direct/range {v15 .. v19}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCRect:Landroid/graphics/Rect;

    goto :goto_1

    .line 10358
    :pswitch_2
    new-instance v15, Landroid/graphics/Rect;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v15 .. v19}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCRect:Landroid/graphics/Rect;

    goto :goto_1

    .line 10362
    :pswitch_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCLocation:I

    if-eq v15, v10, :cond_4

    .line 10367
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 10368
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 10369
    new-instance v15, Landroid/graphics/Rect;

    sub-int v16, v14, v2

    sub-int v16, v16, v13

    div-int/lit8 v17, v2, 0x2

    sub-int v17, v4, v17

    sub-int v18, v14, v13

    div-int/lit8 v19, v2, 0x2

    add-int v19, v19, v4

    invoke-direct/range {v15 .. v19}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_1

    .line 10312
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 10341
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private showPointerIcon(Landroid/view/MotionEvent;I)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "iconId"    # I

    .prologue
    .line 9971
    const/4 v0, -0x1

    invoke-static {p1, p2, v0}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->setHoveringSpenIcon(Landroid/view/MotionEvent;II)V

    .line 9972
    const/4 v0, 0x1

    return v0
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 7654
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 7655
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->createTextFilter(Z)V

    .line 7656
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->positionPopup()V

    .line 7658
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->checkFocus()V

    .line 7660
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

    .line 4080
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionX:I

    sub-int v1, p1, v7

    .line 4081
    .local v1, "deltaX":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 4082
    .local v2, "distance":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getScrollX()I

    move-result v7

    if-eqz v7, :cond_2

    move v5, v8

    .line 4083
    .local v5, "overscroll":Z
    :goto_0
    if-nez v5, :cond_0

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchSlop:I

    if-le v2, v7, :cond_7

    .line 4084
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getNestedScrollAxes()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_7

    .line 4085
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->createScrollingCache()V

    .line 4086
    if-eqz v5, :cond_3

    .line 4087
    const/4 v7, 0x5

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    .line 4088
    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionCorrection:I

    .line 4093
    :goto_1
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingCheckForLongPress:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForLongPress;

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4094
    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setPressed(Z)V

    .line 4095
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionPosition:I

    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    sub-int/2addr v7, v10

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4096
    .local v4, "motionView":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 4097
    invoke-virtual {v4, v9}, Landroid/view/View;->setPressed(Z)V

    .line 4100
    :cond_1
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPointerCount:I

    if-le v7, v8, :cond_5

    .line 4106
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 4107
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_5

    .line 4108
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setPressed(Z)V

    .line 4107
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0    # "childCount":I
    .end local v3    # "i":I
    .end local v4    # "motionView":Landroid/view/View;
    .end local v5    # "overscroll":Z
    :cond_2
    move v5, v9

    .line 4082
    goto :goto_0

    .line 4090
    .restart local v5    # "overscroll":Z
    :cond_3
    const/4 v7, 0x3

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    .line 4091
    if-lez v1, :cond_4

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchSlop:I

    :goto_3
    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionCorrection:I

    goto :goto_1

    :cond_4
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchSlop:I

    neg-int v7, v7

    goto :goto_3

    .line 4111
    .restart local v4    # "motionView":Landroid/view/View;
    :cond_5
    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->reportScrollStateChange(I)V

    .line 4114
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 4115
    .local v6, "parent":Landroid/view/ViewParent;
    if-eqz v6, :cond_6

    .line 4116
    invoke-interface {v6, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4118
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    move v7, v8

    .line 4122
    .end local v4    # "motionView":Landroid/view/View;
    .end local v6    # "parent":Landroid/view/ViewParent;
    :goto_4
    return v7

    :cond_7
    move v7, v9

    goto :goto_4
.end method

.method private unregisterMotionListener()V
    .locals 0

    .prologue
    .line 9707
    return-void
.end method

.method private updateOnScreenCheckedViews()V
    .locals 8

    .prologue
    .line 1536
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    .line 1537
    .local v2, "firstPos":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v1

    .line 1538
    .local v1, "count":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_1

    const/4 v5, 0x1

    .line 1540
    .local v5, "useActivated":Z
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 1541
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1542
    .local v0, "child":Landroid/view/View;
    add-int v4, v2, v3

    .line 1544
    .local v4, "position":I
    instance-of v6, v0, Landroid/widget/Checkable;

    if-eqz v6, :cond_2

    .line 1545
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "child":Landroid/view/View;
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1540
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1538
    .end local v3    # "i":I
    .end local v4    # "position":I
    .end local v5    # "useActivated":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1546
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    .restart local v4    # "position":I
    .restart local v5    # "useActivated":Z
    :cond_2
    if-eqz v5, :cond_0

    .line 1547
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2

    .line 1550
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "position":I
    :cond_3
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 2074
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2076
    return-void
.end method


# virtual methods
.method public addExtraPaddingInLeftHoverArea(I)V
    .locals 3
    .param p1, "extraSpace"    # I

    .prologue
    .line 4423
    const/4 v0, 0x1

    int-to-float v1, p1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mContext:Landroid/content/Context;

    .line 4425
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 4423
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mExtraPaddingInLeftHoverArea:I

    .line 4426
    return-void
.end method

.method public addExtraPaddingInRightHoverArea(I)V
    .locals 3
    .param p1, "extraSpace"    # I

    .prologue
    .line 4432
    const/4 v0, 0x1

    int-to-float v1, p1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mContext:Landroid/content/Context;

    .line 4434
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 4432
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mExtraPaddingInRightHoverArea:I

    .line 4435
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
    .line 6226
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v2

    .line 6227
    .local v2, "count":I
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    .line 6228
    .local v3, "firstPosition":I
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 6230
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 6241
    :cond_0
    return-void

    .line 6234
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 6235
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6236
    .local v1, "child":Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6237
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6239
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 6234
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 8161
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 8106
    return-void
.end method

.method public canScrollList(I)Z
    .locals 10
    .param p1, "direction"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 6890
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 6891
    .local v0, "childCount":I
    if-nez v0, :cond_1

    move v6, v7

    .line 6909
    :cond_0
    :goto_0
    return v6

    .line 6895
    :cond_1
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    .line 6896
    .local v2, "firstPosition":I
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    .line 6897
    .local v5, "listPadding":Landroid/graphics/Rect;
    if-lez p1, :cond_4

    .line 6899
    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsRTL:Z

    if-eqz v8, :cond_2

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v4

    .line 6902
    .local v4, "lastRight":I
    :goto_1
    add-int v3, v2, v0

    .line 6903
    .local v3, "lastPosition":I
    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsRTL:Z

    if-eqz v8, :cond_3

    if-gtz v2, :cond_0

    move v6, v7

    goto :goto_0

    .line 6900
    .end local v3    # "lastPosition":I
    .end local v4    # "lastRight":I
    :cond_2
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v4

    .restart local v4    # "lastRight":I
    goto :goto_1

    .line 6903
    .restart local v3    # "lastPosition":I
    :cond_3
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    if-lt v3, v8, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    if-gt v4, v8, :cond_0

    move v6, v7

    goto :goto_0

    .line 6906
    .end local v3    # "lastPosition":I
    .end local v4    # "lastRight":I
    :cond_4
    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsRTL:Z

    if-eqz v8, :cond_5

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 6908
    .local v1, "firstLeft":I
    :goto_2
    add-int v3, v2, v0

    .line 6909
    .restart local v3    # "lastPosition":I
    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsRTL:Z

    if-eqz v8, :cond_6

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    if-lt v3, v8, :cond_0

    move v6, v7

    goto :goto_0

    .line 6907
    .end local v1    # "firstLeft":I
    .end local v3    # "lastPosition":I
    :cond_5
    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v1

    .restart local v1    # "firstLeft":I
    goto :goto_2

    .line 6909
    .restart local v3    # "lastPosition":I
    :cond_6
    if-gtz v2, :cond_0

    iget v8, v5, Landroid/graphics/Rect;->left:I

    if-lt v1, v8, :cond_0

    move v6, v7

    goto :goto_0
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 8007
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

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
    .line 8194
    instance-of v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1360
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1362
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 1363
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1365
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedItemCount:I

    .line 1366
    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    .prologue
    .line 8058
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 8059
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8060
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFiltered:Z

    .line 8061
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8062
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->dismissPopup()V

    .line 8065
    :cond_0
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 2453
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 2455
    .local v0, "count":I
    if-lez v0, :cond_5

    .line 2456
    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_4

    .line 2457
    mul-int/lit8 v1, v0, 0x64

    .line 2459
    .local v1, "extent":I
    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsRTL:Z

    if-eqz v8, :cond_2

    .line 2461
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2462
    .local v5, "viewLast":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 2463
    .local v2, "left":I
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 2464
    .local v6, "width":I
    if-lez v6, :cond_0

    .line 2465
    mul-int/lit8 v8, v2, 0x64

    div-int/2addr v8, v6

    add-int/2addr v1, v8

    .line 2467
    :cond_0
    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2468
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    .line 2469
    .local v3, "right":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 2470
    if-lez v6, :cond_1

    .line 2471
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v7

    sub-int v7, v3, v7

    mul-int/lit8 v7, v7, 0x64

    div-int/2addr v7, v6

    sub-int/2addr v1, v7

    .line 2494
    .end local v1    # "extent":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "viewLast":Landroid/view/View;
    .end local v6    # "width":I
    :cond_1
    :goto_0
    return v1

    .line 2475
    .restart local v1    # "extent":I
    :cond_2
    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2476
    .restart local v4    # "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 2477
    .restart local v2    # "left":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 2478
    .restart local v6    # "width":I
    if-lez v6, :cond_3

    .line 2479
    mul-int/lit8 v7, v2, 0x64

    div-int/2addr v7, v6

    add-int/2addr v1, v7

    .line 2481
    :cond_3
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2482
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    .line 2483
    .restart local v3    # "right":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 2484
    if-lez v6, :cond_1

    .line 2485
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v7

    sub-int v7, v3, v7

    mul-int/lit8 v7, v7, 0x64

    div-int/2addr v7, v6

    sub-int/2addr v1, v7

    goto :goto_0

    .line 2491
    .end local v1    # "extent":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    .end local v4    # "view":Landroid/view/View;
    .end local v6    # "width":I
    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    move v1, v7

    .line 2494
    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 13

    .prologue
    const/high16 v12, 0x42c80000    # 100.0f

    const/4 v8, 0x0

    .line 2500
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    .line 2501
    .local v2, "firstPosition":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 2502
    .local v0, "childCount":I
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v4, v9, -0x1

    .line 2504
    .local v4, "lastPosition":I
    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    .line 2505
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    if-eqz v9, :cond_2

    .line 2506
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsRTL:Z

    if-eqz v9, :cond_1

    .line 2507
    add-int/lit8 v9, v0, -0x1

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2508
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v5

    .line 2510
    .local v5, "left":I
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 2511
    .local v7, "width":I
    if-lez v7, :cond_0

    .line 2512
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    sub-int/2addr v9, v4

    mul-int/lit8 v9, v9, 0x64

    mul-int/lit8 v10, v5, 0x64

    div-int/2addr v10, v7

    sub-int/2addr v9, v10

    .line 2513
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getScrollX()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    mul-float/2addr v10, v12

    float-to-int v10, v10

    add-int/2addr v9, v10

    .line 2512
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2537
    .end local v5    # "left":I
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "width":I
    :cond_0
    :goto_0
    return v8

    .line 2516
    :cond_1
    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2517
    .restart local v6    # "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 2518
    .restart local v5    # "left":I
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 2519
    .restart local v7    # "width":I
    if-lez v7, :cond_0

    .line 2520
    mul-int/lit8 v9, v2, 0x64

    mul-int/lit8 v10, v5, 0x64

    div-int/2addr v10, v7

    sub-int/2addr v9, v10

    .line 2521
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getScrollX()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    mul-float/2addr v10, v12

    float-to-int v10, v10

    add-int/2addr v9, v10

    .line 2520
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_0

    .line 2526
    .end local v5    # "left":I
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "width":I
    :cond_2
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    .line 2527
    .local v1, "count":I
    if-nez v2, :cond_3

    .line 2528
    const/4 v3, 0x0

    .line 2534
    .local v3, "index":I
    :goto_1
    int-to-float v8, v2

    int-to-float v9, v0

    int-to-float v10, v3

    int-to-float v11, v1

    div-float/2addr v10, v11

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v8, v8

    goto :goto_0

    .line 2529
    .end local v3    # "index":I
    :cond_3
    add-int v8, v2, v0

    if-ne v8, v1, :cond_4

    .line 2530
    move v3, v1

    .restart local v3    # "index":I
    goto :goto_1

    .line 2532
    .end local v3    # "index":I
    :cond_4
    div-int/lit8 v8, v0, 0x2

    add-int v3, v2, v8

    .restart local v3    # "index":I
    goto :goto_1
.end method

.method protected computeHorizontalScrollRange()I
    .locals 3

    .prologue
    .line 2543
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_1

    .line 2544
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2545
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getScrollX()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2547
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2552
    :cond_0
    :goto_0
    return v0

    .line 2550
    .end local v0    # "result":I
    :cond_1
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method confirmCheckedPositionsById()V
    .locals 18

    .prologue
    .line 7424
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 7426
    const/4 v2, 0x0

    .line 7427
    .local v2, "checkedCountChanged":Z
    const/4 v9, 0x0

    .local v9, "checkedIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v9, v3, :cond_4

    .line 7428
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 7429
    .local v6, "id":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 7431
    .local v5, "lastPos":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    .line 7432
    .local v12, "lastPosId":J
    cmp-long v3, v6, v12

    if-eqz v3, :cond_3

    .line 7434
    const/4 v3, 0x0

    add-int/lit8 v4, v5, -0x14

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 7435
    .local v17, "start":I
    add-int/lit8 v3, v5, 0x14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 7436
    .local v10, "end":I
    const/4 v11, 0x0

    .line 7437
    .local v11, "found":Z
    move/from16 v16, v17

    .local v16, "searchPos":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v10, :cond_0

    .line 7438
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v14

    .line 7439
    .local v14, "searchId":J
    cmp-long v3, v6, v14

    if-nez v3, :cond_2

    .line 7440
    const/4 v11, 0x1

    .line 7441
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 7442
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 7447
    .end local v14    # "searchId":J
    :cond_0
    if-nez v11, :cond_1

    .line 7448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v6, v7}, Landroid/util/LongSparseArray;->delete(J)V

    .line 7449
    add-int/lit8 v9, v9, -0x1

    .line 7450
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedItemCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedItemCount:I

    .line 7451
    const/4 v2, 0x1

    .line 7452
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMultiChoiceModeCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;

    if-eqz v3, :cond_1

    .line 7453
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMultiChoiceModeCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 7427
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 7437
    .restart local v10    # "end":I
    .restart local v11    # "found":Z
    .restart local v14    # "searchId":J
    .restart local v16    # "searchPos":I
    .restart local v17    # "start":I
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 7458
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v14    # "searchId":J
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 7462
    .end local v5    # "lastPos":I
    .end local v6    # "id":J
    .end local v12    # "lastPosId":J
    :cond_4
    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_5

    .line 7463
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidate()V

    .line 7465
    :cond_5
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 3612
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method createPositionScroller()Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;
    .locals 1

    .prologue
    .line 6586
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V

    return-object v0
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 18
    .param p1, "ev"    # Landroid/view/DragEvent;

    .prologue
    .line 4790
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    .line 4792
    .local v2, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v5

    .line 4793
    .local v5, "cd":Landroid/content/ClipDescription;
    if-eqz v5, :cond_0

    const-string v13, "cropUri"

    invoke-virtual {v5}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 4794
    :cond_0
    invoke-super/range {p0 .. p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    .line 4942
    :goto_0
    return v13

    .line 4798
    :cond_1
    const/4 v13, 0x1

    if-ne v2, v13, :cond_4

    .line 4799
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragScrollWorkingZonePx:I

    if-gtz v13, :cond_2

    .line 4800
    const/4 v13, 0x1

    const/high16 v14, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mContext:Landroid/content/Context;

    .line 4802
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    .line 4800
    invoke-static {v13, v14, v15}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v13

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragScrollWorkingZonePx:I

    .line 4804
    :cond_2
    invoke-super/range {p0 .. p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    if-nez v13, :cond_3

    :cond_3
    const/4 v13, 0x1

    goto :goto_0

    .line 4807
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v13

    float-to-int v11, v13

    .line 4808
    .local v11, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v13

    float-to-int v12, v13

    .line 4809
    .local v12, "y":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v7

    .line 4810
    .local v7, "childCount":I
    const/4 v8, 0x0

    .line 4811
    .local v8, "contentRight":I
    const/4 v10, 0x0

    .line 4812
    .local v10, "lastChildRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v9

    .line 4816
    .local v9, "count":I
    if-eqz v7, :cond_5

    .line 4817
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v8

    .line 4821
    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    add-int/2addr v13, v9

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    if-ge v13, v14, :cond_f

    const/4 v4, 0x1

    .line 4823
    .local v4, "canScrollRight":Z
    :goto_1
    if-nez v4, :cond_7

    if-lez v9, :cond_7

    .line 4824
    add-int/lit8 v13, v9, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4825
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getRight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v15

    if-gt v13, v14, :cond_6

    .line 4826
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v15

    if-le v13, v14, :cond_10

    :cond_6
    const/4 v4, 0x1

    .line 4830
    .end local v6    # "child":Landroid/view/View;
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    if-lez v13, :cond_11

    const/4 v3, 0x1

    .line 4832
    .local v3, "canScrollLeft":Z
    :goto_3
    if-nez v3, :cond_8

    .line 4833
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v13

    if-lez v13, :cond_8

    .line 4834
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4835
    .restart local v6    # "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    if-ge v13, v14, :cond_12

    const/4 v3, 0x1

    .line 4840
    .end local v6    # "child":Landroid/view/View;
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragScrollWorkingZonePx:I

    if-le v11, v13, :cond_9

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragScrollWorkingZonePx:I

    sub-int v13, v8, v13

    if-lt v11, v13, :cond_a

    :cond_9
    if-lez v12, :cond_a

    .line 4841
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getBottom()I

    move-result v13

    if-gt v12, v13, :cond_a

    if-nez v3, :cond_13

    if-nez v4, :cond_13

    .line 4843
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 4844
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->removeMessages(I)V

    .line 4847
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsHoverOverscrolled:Z

    const/4 v14, 0x1

    if-eq v13, v14, :cond_c

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollStartTime:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_d

    .line 4848
    :cond_c
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsHoverOverscrolled:Z

    .line 4851
    :cond_d
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRecognitionStartTime:J

    .line 4852
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollStartTime:J

    .line 4853
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverAreaEnter:Z

    .line 4856
    const/4 v13, 0x2

    if-ne v2, v13, :cond_e

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsDragScrolled:Z

    if-eqz v13, :cond_e

    .line 4857
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsDragScrolled:Z

    .line 4861
    :cond_e
    invoke-super/range {p0 .. p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    goto/16 :goto_0

    .line 4821
    .end local v3    # "canScrollLeft":Z
    .end local v4    # "canScrollRight":Z
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 4826
    .restart local v4    # "canScrollRight":Z
    .restart local v6    # "child":Landroid/view/View;
    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 4830
    .end local v6    # "child":Landroid/view/View;
    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 4835
    .restart local v3    # "canScrollLeft":Z
    .restart local v6    # "child":Landroid/view/View;
    :cond_12
    const/4 v3, 0x0

    goto :goto_4

    .line 4865
    .end local v6    # "child":Landroid/view/View;
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    if-nez v13, :cond_14

    .line 4866
    new-instance v13, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    .line 4868
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverAreaEnter:Z

    if-nez v13, :cond_15

    .line 4869
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollStartTime:J

    .line 4871
    :cond_15
    packed-switch v2, :pswitch_data_0

    .line 4942
    :cond_16
    :goto_5
    invoke-super/range {p0 .. p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    goto/16 :goto_0

    .line 4873
    :pswitch_0
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverAreaEnter:Z

    .line 4874
    if-ltz v11, :cond_17

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragScrollWorkingZonePx:I

    if-gt v11, v13, :cond_17

    .line 4876
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_16

    .line 4877
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsDragScrolled:Z

    .line 4878
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRecognitionStartTime:J

    .line 4879
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollDirection:I

    .line 4880
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 4882
    :cond_17
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragScrollWorkingZonePx:I

    sub-int v13, v8, v13

    if-lt v11, v13, :cond_16

    if-gt v11, v8, :cond_16

    .line 4884
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_16

    .line 4885
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsDragScrolled:Z

    .line 4886
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRecognitionStartTime:J

    .line 4887
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollDirection:I

    .line 4888
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 4894
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverAreaEnter:Z

    if-nez v13, :cond_18

    .line 4895
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverAreaEnter:Z

    .line 4898
    :cond_18
    if-ltz v11, :cond_19

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragScrollWorkingZonePx:I

    if-gt v11, v13, :cond_19

    .line 4900
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_16

    .line 4901
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsDragScrolled:Z

    .line 4902
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRecognitionStartTime:J

    .line 4903
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollDirection:I

    .line 4904
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    .line 4906
    :cond_19
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragScrollWorkingZonePx:I

    sub-int v13, v8, v13

    if-lt v11, v13, :cond_16

    if-gt v11, v8, :cond_16

    .line 4908
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_16

    .line 4909
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsDragScrolled:Z

    .line 4910
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRecognitionStartTime:J

    .line 4911
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollDirection:I

    .line 4912
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    .line 4919
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsDragScrolled:Z

    if-eqz v13, :cond_1a

    .line 4920
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsDragScrolled:Z

    .line 4927
    :cond_1a
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 4928
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->removeMessages(I)V

    .line 4930
    :cond_1b
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsDragScrolled:Z

    .line 4932
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRecognitionStartTime:J

    .line 4933
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollStartTime:J

    .line 4934
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsHoverOverscrolled:Z

    .line 4935
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverAreaEnter:Z

    goto/16 :goto_5

    .line 4871
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3089
    const/4 v4, 0x0

    .line 3090
    .local v4, "saveCount":I
    const/4 v7, 0x0

    .line 3091
    .local v7, "trackChildLeft":I
    const/4 v2, 0x0

    .line 3092
    .local v2, "firstChildPosition":I
    const/4 v3, 0x0

    .line 3095
    .local v3, "lastChildPosition":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getFlagClipToPadding()Z

    move-result v0

    .line 3096
    .local v0, "clipToPadding":Z
    if-eqz v0, :cond_0

    .line 3097
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3098
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getScrollX()I

    move-result v5

    .line 3099
    .local v5, "scrollX":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getScrollY()I

    move-result v6

    .line 3100
    .local v6, "scrollY":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingLeft()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingTop()I

    move-result v9

    add-int/2addr v9, v6

    .line 3101
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getRight()I

    move-result v10

    add-int/2addr v10, v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getLeft()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    .line 3102
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getBottom()I

    move-result v11

    add-int/2addr v11, v6

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getTop()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingBottom()I

    move-result v12

    sub-int/2addr v11, v12

    .line 3100
    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 3103
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setFlagClipToPadding(Z)V

    .line 3106
    .end local v5    # "scrollX":I
    .end local v6    # "scrollY":I
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDrawSelectorOnTop:Z

    .line 3107
    .local v1, "drawSelectorOnTop":Z
    if-nez v1, :cond_1

    .line 3108
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 3111
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3113
    if-eqz v1, :cond_2

    .line 3114
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 3117
    :cond_2
    if-eqz v0, :cond_3

    .line 3118
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3119
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setFlagClipToPadding(Z)V

    .line 3122
    :cond_3
    iget-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsDragBlockEnabled:Z

    if-eqz v8, :cond_4

    .line 3123
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockLeft:I

    if-nez v8, :cond_5

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockTop:I

    if-nez v8, :cond_5

    .line 3144
    :cond_4
    :goto_0
    return-void

    .line 3126
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getFirstVisiblePosition()I

    move-result v2

    .line 3127
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getLastVisiblePosition()I

    move-result v3

    .line 3129
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTrackedChildPosition:I

    if-lt v8, v2, :cond_7

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTrackedChildPosition:I

    if-gt v8, v3, :cond_7

    .line 3130
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTrackedChildPosition:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTrackedChild:Landroid/view/View;

    .line 3131
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTrackedChild:Landroid/view/View;

    if-eqz v8, :cond_6

    .line 3132
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTrackedChild:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 3134
    :cond_6
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDistanceFromTrackedChildLeft:I

    add-int/2addr v8, v7

    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragStartX:I

    .line 3137
    :cond_7
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragStartX:I

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragEndX:I

    if-ge v8, v9, :cond_8

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragStartX:I

    :goto_1
    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockLeft:I

    .line 3138
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragEndX:I

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragStartX:I

    if-le v8, v9, :cond_9

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragEndX:I

    :goto_2
    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockRight:I

    .line 3140
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockRect:Landroid/graphics/Rect;

    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockLeft:I

    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockTop:I

    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockRight:I

    iget v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockBottom:I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 3141
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockImage:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3142
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 3137
    :cond_8
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragEndX:I

    goto :goto_1

    .line 3138
    :cond_9
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragStartX:I

    goto :goto_2
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4439
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 4442
    .local v5, "action":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoveringEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsPenPressed:Z

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    .line 4443
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->onHoverDrawableState(Landroid/view/MotionEvent;)V

    .line 4450
    :cond_1
    invoke-static {}, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewReflector;->isTextViewHovered()Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mNewTextViewHoverState:Z

    .line 4451
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mNewTextViewHoverState:Z

    move/from16 v22, v0

    if-nez v22, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOldTextViewHoverState:Z

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsDragBlockEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_8

    .line 4452
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 4453
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsNeedPenSelectIconSet:Z

    .line 4458
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mNewTextViewHoverState:Z

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOldTextViewHoverState:Z

    .line 4461
    const/16 v22, 0x9

    move/from16 v0, v22

    if-ne v5, v0, :cond_a

    .line 4462
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v19

    .line 4464
    .local v19, "toolType":I
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mNeedsHoverScroll:Z

    .line 4467
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollEnable:Z

    move/from16 v22, v0

    if-nez v22, :cond_2

    .line 4468
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mNeedsHoverScroll:Z

    .line 4472
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mNeedsHoverScroll:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    const/16 v22, 0x2

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 4474
    invoke-static {}, Lcom/samsung/android/support/sesl/core/provider/SeslSettingsReflector$SeslSystemReflector;->getField_SEM_PEN_HOVERING()Ljava/lang/String;

    move-result-object v4

    .line 4476
    .local v4, "PEN_HOVERING":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    const/4 v14, 0x1

    .line 4479
    .local v14, "isHoveringOn":Z
    :goto_1
    const/4 v13, 0x0

    .line 4481
    .local v13, "isCarModeOn":Z
    if-eqz v14, :cond_3

    if-eqz v13, :cond_4

    .line 4482
    :cond_3
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mNeedsHoverScroll:Z

    .line 4485
    :cond_4
    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsDragBlockEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsPenSelectPointerSetted:Z

    move/from16 v22, v0

    if-nez v22, :cond_5

    const/16 v22, 0x2

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 4486
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 4487
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->getField_HOVERING_PENSELECT_POINTER_01()I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 4489
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsPenSelectPointerSetted:Z

    .line 4494
    .end local v4    # "PEN_HOVERING":Ljava/lang/String;
    .end local v13    # "isCarModeOn":Z
    .end local v14    # "isHoveringOn":Z
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mNeedsHoverScroll:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    const/16 v22, 0x3

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 4495
    const/16 v16, 0x0

    .line 4496
    .local v16, "isMouseHoveringOn":Z
    const/4 v15, 0x0

    .line 4498
    .local v15, "isMouseHoverListScrollOn":Z
    if-eqz v16, :cond_6

    if-nez v15, :cond_7

    .line 4499
    :cond_6
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mNeedsHoverScroll:Z

    .line 4519
    .end local v15    # "isMouseHoverListScrollOn":Z
    .end local v16    # "isMouseHoveringOn":Z
    .end local v19    # "toolType":I
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mNeedsHoverScroll:Z

    move/from16 v22, v0

    if-nez v22, :cond_f

    .line 4520
    invoke-super/range {p0 .. p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v22

    .line 4777
    :goto_3
    return v22

    .line 4455
    :cond_8
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsNeedPenSelectIconSet:Z

    goto/16 :goto_0

    .line 4476
    .restart local v4    # "PEN_HOVERING":Ljava/lang/String;
    .restart local v19    # "toolType":I
    :cond_9
    const/4 v14, 0x0

    goto :goto_1

    .line 4502
    .end local v4    # "PEN_HOVERING":Ljava/lang/String;
    .end local v19    # "toolType":I
    :cond_a
    const/16 v22, 0x7

    move/from16 v0, v22

    if-ne v5, v0, :cond_e

    .line 4503
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsDragBlockEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsPenSelectPointerSetted:Z

    move/from16 v22, v0

    if-nez v22, :cond_b

    const/16 v22, 0x0

    .line 4504
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsNeedPenSelectIconSet:Z

    move/from16 v22, v0

    if-eqz v22, :cond_d

    .line 4505
    :cond_c
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->getField_HOVERING_PENSELECT_POINTER_01()I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 4506
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsPenSelectPointerSetted:Z

    goto :goto_2

    .line 4507
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsDragBlockEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsPenSelectPointerSetted:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_7

    .line 4508
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->getField_HOVERING_SPENICON_DEFAULT()I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 4509
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_2

    .line 4511
    :cond_e
    const/16 v22, 0xa

    move/from16 v0, v22

    if-ne v5, v0, :cond_7

    .line 4512
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsPenSelectPointerSetted:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    .line 4513
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->getField_HOVERING_SPENICON_DEFAULT()I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 4514
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_2

    .line 4524
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    .line 4525
    .local v20, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    .line 4526
    .local v21, "y":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v9

    .line 4527
    .local v9, "childCount":I
    const/4 v10, 0x0

    .line 4528
    .local v10, "contentLeft":I
    const/4 v11, 0x0

    .line 4529
    .local v11, "contentRight":I
    const/16 v18, 0x0

    .line 4530
    .local v18, "lastChildRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v12

    .line 4535
    .local v12, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v22, v0

    if-nez v22, :cond_10

    .line 4536
    new-instance v22, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    .line 4539
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverLeftAreaWidth:I

    move/from16 v22, v0

    if-lez v22, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRightAreaWidth:I

    move/from16 v22, v0

    if-gtz v22, :cond_12

    .line 4540
    :cond_11
    const/16 v22, 0x1

    const/high16 v23, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    .line 4542
    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    .line 4540
    invoke-static/range {v22 .. v24}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v22

    const/high16 v23, 0x3f000000    # 0.5f

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverLeftAreaWidth:I

    .line 4544
    const/16 v22, 0x1

    const/high16 v23, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    .line 4546
    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    .line 4544
    invoke-static/range {v22 .. v24}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v22

    const/high16 v23, 0x3f000000    # 0.5f

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRightAreaWidth:I

    .line 4549
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsEnabledPaddingInHoverScroll:Z

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_25

    .line 4550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v10, v0, Landroid/graphics/Rect;->left:I

    .line 4551
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    sub-int v11, v22, v23

    .line 4557
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsRTL:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2a

    .line 4559
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    move/from16 v22, v0

    if-lez v22, :cond_26

    const/4 v7, 0x1

    .line 4561
    .local v7, "canScrollRight":Z
    :goto_5
    if-nez v7, :cond_14

    if-lez v12, :cond_14

    .line 4562
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 4563
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getRight()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_13

    .line 4564
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_27

    :cond_13
    const/4 v7, 0x1

    .line 4567
    .end local v8    # "child":Landroid/view/View;
    :cond_14
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    move/from16 v22, v0

    add-int v22, v22, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_28

    const/4 v6, 0x1

    .line 4569
    .local v6, "canScrollLeft":Z
    :goto_7
    if-nez v6, :cond_15

    if-lez v12, :cond_15

    .line 4570
    add-int/lit8 v22, v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 4571
    .restart local v8    # "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_29

    const/4 v6, 0x1

    .line 4591
    .end local v8    # "child":Landroid/view/View;
    :cond_15
    :goto_8
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_31

    const/16 v17, 0x1

    .line 4593
    .local v17, "isPossibleTooltype":Z
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverLeftAreaWidth:I

    move/from16 v22, v0

    add-int v22, v22, v10

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRightAreaWidth:I

    move/from16 v22, v0

    sub-int v22, v11, v22

    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_1b

    :cond_16
    if-lez v21, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getBottom()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_1b

    if-nez v6, :cond_17

    if-eqz v7, :cond_1b

    :cond_17
    move/from16 v0, v20

    if-lt v0, v10, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverLeftAreaWidth:I

    move/from16 v22, v0

    add-int v22, v22, v10

    move/from16 v0, v20

    move/from16 v1, v22

    if-gt v0, v1, :cond_18

    if-nez v6, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsHoverOverscrolled:Z

    move/from16 v22, v0

    if-nez v22, :cond_1b

    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRightAreaWidth:I

    move/from16 v22, v0

    sub-int v22, v11, v22

    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_19

    move/from16 v0, v20

    if-gt v0, v11, :cond_19

    if-nez v7, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsHoverOverscrolled:Z

    move/from16 v22, v0

    if-nez v22, :cond_1b

    :cond_19
    if-eqz v17, :cond_1a

    .line 4597
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1b

    :cond_1a
    if-eqz v17, :cond_1b

    .line 4598
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isLockScreenMode()Z

    move-result v22

    if-eqz v22, :cond_32

    .line 4600
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v22

    if-eqz v22, :cond_1c

    .line 4601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->removeMessages(I)V

    .line 4602
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->getField_HOVERING_SPENICON_DEFAULT()I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 4605
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v22

    if-eqz v22, :cond_1d

    .line 4606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->removeMessages(I)V

    .line 4609
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverLeftAreaWidth:I

    move/from16 v22, v0

    add-int v22, v22, v10

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRightAreaWidth:I

    move/from16 v22, v0

    sub-int v22, v11, v22

    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_1f

    :cond_1e
    if-lez v21, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getBottom()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_20

    .line 4610
    :cond_1f
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsHoverOverscrolled:Z

    .line 4613
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverAreaEnter:Z

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollStartTime:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-eqz v22, :cond_22

    .line 4614
    :cond_21
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->getField_HOVERING_SPENICON_DEFAULT()I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 4617
    :cond_22
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRecognitionStartTime:J

    .line 4618
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollStartTime:J

    .line 4619
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverAreaEnter:Z

    .line 4620
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsSendHoverScrollState:Z

    .line 4622
    const/16 v22, 0xa

    move/from16 v0, v22

    if-ne v5, v0, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollStateForListener:I

    move/from16 v22, v0

    if-eqz v22, :cond_23

    .line 4623
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollStateForListener:I

    .line 4624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$OnScrollListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_23

    .line 4625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$OnScrollListener;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;I)V

    .line 4630
    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCstate:I

    move/from16 v22, v0

    if-eqz v22, :cond_24

    .line 4631
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCstate:I

    .line 4632
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->postInvalidateOnAnimation()V

    .line 4635
    :cond_24
    invoke-super/range {p0 .. p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v22

    goto/16 :goto_3

    .line 4553
    .end local v6    # "canScrollLeft":Z
    .end local v7    # "canScrollRight":Z
    .end local v17    # "isPossibleTooltype":Z
    :cond_25
    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mExtraPaddingInLeftHoverArea:I

    .line 4554
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mExtraPaddingInRightHoverArea:I

    move/from16 v23, v0

    sub-int v11, v22, v23

    goto/16 :goto_4

    .line 4559
    :cond_26
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 4564
    .restart local v7    # "canScrollRight":Z
    .restart local v8    # "child":Landroid/view/View;
    :cond_27
    const/4 v7, 0x0

    goto/16 :goto_6

    .line 4567
    .end local v8    # "child":Landroid/view/View;
    :cond_28
    const/4 v6, 0x0

    goto/16 :goto_7

    .line 4571
    .restart local v6    # "canScrollLeft":Z
    .restart local v8    # "child":Landroid/view/View;
    :cond_29
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 4575
    .end local v6    # "canScrollLeft":Z
    .end local v7    # "canScrollRight":Z
    .end local v8    # "child":Landroid/view/View;
    :cond_2a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    move/from16 v22, v0

    add-int v22, v22, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_2d

    const/4 v7, 0x1

    .line 4577
    .restart local v7    # "canScrollRight":Z
    :goto_a
    if-nez v7, :cond_2c

    if-lez v12, :cond_2c

    .line 4578
    add-int/lit8 v22, v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 4579
    .restart local v8    # "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getRight()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_2b

    .line 4580
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_2e

    :cond_2b
    const/4 v7, 0x1

    .line 4583
    .end local v8    # "child":Landroid/view/View;
    :cond_2c
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    move/from16 v22, v0

    if-lez v22, :cond_2f

    const/4 v6, 0x1

    .line 4585
    .restart local v6    # "canScrollLeft":Z
    :goto_c
    if-nez v6, :cond_15

    if-lez v12, :cond_15

    .line 4586
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 4587
    .restart local v8    # "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_30

    const/4 v6, 0x1

    :goto_d
    goto/16 :goto_8

    .line 4575
    .end local v6    # "canScrollLeft":Z
    .end local v7    # "canScrollRight":Z
    .end local v8    # "child":Landroid/view/View;
    :cond_2d
    const/4 v7, 0x0

    goto :goto_a

    .line 4580
    .restart local v7    # "canScrollRight":Z
    .restart local v8    # "child":Landroid/view/View;
    :cond_2e
    const/4 v7, 0x0

    goto :goto_b

    .line 4583
    .end local v8    # "child":Landroid/view/View;
    :cond_2f
    const/4 v6, 0x0

    goto :goto_c

    .line 4587
    .restart local v6    # "canScrollLeft":Z
    .restart local v8    # "child":Landroid/view/View;
    :cond_30
    const/4 v6, 0x0

    goto :goto_d

    .line 4591
    .end local v8    # "child":Landroid/view/View;
    :cond_31
    const/16 v17, 0x0

    goto/16 :goto_9

    .line 4638
    .restart local v17    # "isPossibleTooltype":Z
    :cond_32
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverAreaEnter:Z

    move/from16 v22, v0

    if-nez v22, :cond_33

    .line 4639
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollStartTime:J

    .line 4642
    :cond_33
    packed-switch v5, :pswitch_data_0

    .line 4777
    :cond_34
    :goto_e
    :pswitch_0
    const/16 v22, 0x1

    goto/16 :goto_3

    .line 4644
    :pswitch_1
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverAreaEnter:Z

    .line 4646
    move/from16 v0, v20

    if-lt v0, v10, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverLeftAreaWidth:I

    move/from16 v22, v0

    add-int v22, v22, v10

    move/from16 v0, v20

    move/from16 v1, v22

    if-gt v0, v1, :cond_35

    .line 4648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v22

    if-nez v22, :cond_34

    .line 4649
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRecognitionStartTime:J

    .line 4651
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->getField_HOVERING_SCROLLICON_POINTER_07()I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 4653
    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollDirection:I

    .line 4654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 4657
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isQCSupported()Z

    move-result v22

    if-eqz v22, :cond_34

    const/16 v22, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->canScrollVertically(I)Z

    move-result v22

    if-eqz v22, :cond_34

    .line 4658
    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setupQuickController(I)V

    .line 4659
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCstate:I

    goto :goto_e

    .line 4662
    :cond_35
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRightAreaWidth:I

    move/from16 v22, v0

    sub-int v22, v11, v22

    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_34

    move/from16 v0, v20

    if-gt v0, v11, :cond_34

    .line 4664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v22

    if-nez v22, :cond_34

    .line 4665
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRecognitionStartTime:J

    .line 4667
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->getField_HOVERING_SCROLLICON_POINTER_03()I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 4669
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollDirection:I

    .line 4670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 4673
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isQCSupported()Z

    move-result v22

    if-eqz v22, :cond_34

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->canScrollVertically(I)Z

    move-result v22

    if-eqz v22, :cond_34

    .line 4674
    const/16 v22, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setupQuickController(I)V

    .line 4675
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCstate:I

    goto/16 :goto_e

    .line 4682
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverAreaEnter:Z

    move/from16 v22, v0

    if-nez v22, :cond_36

    .line 4683
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverAreaEnter:Z

    .line 4684
    const/16 v22, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 4685
    invoke-super/range {p0 .. p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v22

    goto/16 :goto_3

    .line 4688
    :cond_36
    move/from16 v0, v20

    if-lt v0, v10, :cond_39

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverLeftAreaWidth:I

    move/from16 v22, v0

    add-int v22, v22, v10

    move/from16 v0, v20

    move/from16 v1, v22

    if-gt v0, v1, :cond_39

    .line 4690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v22

    if-nez v22, :cond_34

    .line 4691
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRecognitionStartTime:J

    .line 4694
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsHoverOverscrolled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollDirection:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_38

    .line 4696
    :cond_37
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->getField_HOVERING_SCROLLICON_POINTER_07()I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 4699
    :cond_38
    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollDirection:I

    .line 4700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 4703
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isQCSupported()Z

    move-result v22

    if-eqz v22, :cond_34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCstate:I

    move/from16 v22, v0

    if-nez v22, :cond_34

    const/16 v22, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->canScrollVertically(I)Z

    move-result v22

    if-eqz v22, :cond_34

    .line 4704
    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setupQuickController(I)V

    .line 4705
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCstate:I

    goto/16 :goto_e

    .line 4708
    :cond_39
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRightAreaWidth:I

    move/from16 v22, v0

    sub-int v22, v11, v22

    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_3c

    move/from16 v0, v20

    if-gt v0, v11, :cond_3c

    .line 4710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v22

    if-nez v22, :cond_34

    .line 4711
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRecognitionStartTime:J

    .line 4714
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsHoverOverscrolled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollDirection:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3b

    .line 4716
    :cond_3a
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->getField_HOVERING_SCROLLICON_POINTER_03()I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 4719
    :cond_3b
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollDirection:I

    .line 4720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 4723
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isQCSupported()Z

    move-result v22

    if-eqz v22, :cond_34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCstate:I

    move/from16 v22, v0

    if-nez v22, :cond_34

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->canScrollVertically(I)Z

    move-result v22

    if-eqz v22, :cond_34

    .line 4724
    const/16 v22, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setupQuickController(I)V

    .line 4725
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCstate:I

    goto/16 :goto_e

    .line 4730
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v22

    if-eqz v22, :cond_3d

    .line 4731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->removeMessages(I)V

    .line 4735
    :cond_3d
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->getField_HOVERING_SPENICON_DEFAULT()I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 4737
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRecognitionStartTime:J

    .line 4738
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollStartTime:J

    .line 4739
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsHoverOverscrolled:Z

    .line 4740
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverAreaEnter:Z

    .line 4741
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsSendHoverScrollState:Z

    goto/16 :goto_e

    .line 4747
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v22

    if-eqz v22, :cond_3e

    .line 4748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->removeMessages(I)V

    .line 4752
    :cond_3e
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslPointerIconReflector;->getField_HOVERING_SPENICON_DEFAULT()I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 4754
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRecognitionStartTime:J

    .line 4755
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollStartTime:J

    .line 4756
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsHoverOverscrolled:Z

    .line 4757
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverAreaEnter:Z

    .line 4758
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsSendHoverScrollState:Z

    .line 4761
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCstate:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3f

    .line 4765
    :cond_3f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollStateForListener:I

    move/from16 v22, v0

    if-eqz v22, :cond_40

    .line 4766
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollStateForListener:I

    .line 4767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$OnScrollListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_40

    .line 4768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$OnScrollListener;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;I)V

    .line 4772
    :cond_40
    invoke-super/range {p0 .. p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v22

    goto/16 :goto_3

    .line 4642
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 3967
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 32
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4951
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v25, v0

    .line 4952
    .local v25, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v26, v0

    .line 4953
    .local v26, "y":I
    const/4 v12, 0x0

    .line 4954
    .local v12, "contentLeft":I
    const/4 v13, 0x0

    .line 4955
    .local v13, "contentRight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 4956
    .local v6, "action":I
    const/16 v20, 0x0

    .line 4958
    .local v20, "needToScroll":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    if-nez v27, :cond_0

    .line 4959
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragSelectedItemArray:Ljava/util/ArrayList;

    .line 4962
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v27, v0

    if-nez v27, :cond_1

    .line 4963
    new-instance v27, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    .line 4966
    :cond_1
    invoke-static {}, Lcom/samsung/android/support/sesl/core/widget/SeslTextViewReflector;->isTextSelectionProgressing()Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsTextSelectionStarted:Z

    .line 4967
    invoke-static {}, Lcom/samsung/android/support/sesl/core/text/SeslMultiSelectionReflector;->isNeedToScroll()Z

    move-result v20

    .line 4969
    const/16 v27, 0xd3

    move/from16 v0, v27

    if-ne v6, v0, :cond_2

    .line 4970
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsNeedPenSelection:Z

    .line 4971
    const/16 v18, 0x0

    .line 4974
    .local v18, "isCarModeOn":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "car_mode_on"

    invoke-static/range {v27 .. v28}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    const/16 v18, 0x1

    .line 4979
    :goto_0
    if-eqz v18, :cond_2

    .line 4980
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsNeedPenSelection:Z

    .line 4984
    .end local v18    # "isCarModeOn":Z
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsTextSelectionStarted:Z

    move/from16 v27, v0

    if-eqz v27, :cond_3

    .line 4985
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsNeedPenSelection:Z

    .line 4988
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverLeftAreaWidth:I

    move/from16 v27, v0

    if-lez v27, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRightAreaWidth:I

    move/from16 v27, v0

    if-gtz v27, :cond_5

    .line 4989
    :cond_4
    const/16 v27, 0x1

    const/high16 v28, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    .line 4991
    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v29

    .line 4989
    invoke-static/range {v27 .. v29}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v27

    const/high16 v28, 0x3f000000    # 0.5f

    add-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverLeftAreaWidth:I

    .line 4993
    const/16 v27, 0x1

    const/high16 v28, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    .line 4995
    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v29

    .line 4993
    invoke-static/range {v27 .. v29}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v27

    const/high16 v28, 0x3f000000    # 0.5f

    add-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRightAreaWidth:I

    .line 4998
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsEnabledPaddingInHoverScroll:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    .line 4999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v12, v0, Landroid/graphics/Rect;->left:I

    .line 5000
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    sub-int v13, v27, v28

    .line 5006
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsEnabledPaddingInHoverScroll:Z

    move/from16 v27, v0

    if-eqz v27, :cond_9

    move/from16 v0, v25

    if-lt v0, v12, :cond_6

    move/from16 v0, v25

    if-le v0, v13, :cond_9

    .line 5007
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v27

    const/16 v28, 0xd4

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_9

    .line 5008
    const/16 v27, 0x1

    .line 5338
    :goto_2
    return v27

    .line 4974
    .restart local v18    # "isCarModeOn":Z
    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 4975
    :catch_0
    move-exception v16

    .line 4976
    .local v16, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual/range {v16 .. v16}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 5002
    .end local v16    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v18    # "isCarModeOn":Z
    :cond_8
    const/4 v12, 0x0

    .line 5003
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v13

    goto :goto_1

    .line 5011
    :cond_9
    sparse-switch v6, :sswitch_data_0

    .line 5338
    :cond_a
    :goto_3
    :sswitch_0
    invoke-super/range {p0 .. p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v27

    goto :goto_2

    .line 5014
    :sswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCstate:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    .line 5015
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsQCShown:Z

    move/from16 v27, v0

    if-eqz v27, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v27

    if-eqz v27, :cond_c

    .line 5016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_b

    .line 5017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->removeMessages(I)V

    .line 5021
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 5023
    const/16 v27, 0x2

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCstate:I

    .line 5024
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->postInvalidateOnAnimation()V

    .line 5025
    const/16 v27, 0x1

    goto :goto_2

    .line 5028
    :cond_c
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCstate:I

    goto :goto_3

    .line 5037
    :sswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCstate:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    .line 5039
    const/16 v27, 0x1

    goto/16 :goto_2

    .line 5044
    :sswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsNeedPenSelection:Z

    move/from16 v27, v0

    if-eqz v27, :cond_28

    .line 5045
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v14

    .line 5047
    .local v14, "count":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsfirstMoveEvent:Z

    move/from16 v27, v0

    if-eqz v27, :cond_11

    .line 5048
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragStartX:I

    .line 5049
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragStartY:I

    .line 5050
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-super {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->notifyMultiSelectedStart(II)V

    .line 5051
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsPenPressed:Z

    .line 5053
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->pointToPosition(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTrackedChildPosition:I

    .line 5055
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTrackedChildPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_20

    .line 5056
    const/16 v23, 0x0

    .line 5057
    .local v23, "oldDistanceFromLeft":I
    const/16 v24, 0x0

    .line 5058
    .local v24, "oldDistanceFromRight":I
    const/16 v21, 0x0

    .line 5059
    .local v21, "newDistanceFromLeft":I
    const/16 v22, 0x0

    .line 5061
    .local v22, "newDistanceFromRight":I
    add-int/lit8 v17, v14, -0x1

    .local v17, "i":I
    :goto_4
    if-ltz v17, :cond_d

    .line 5062
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5063
    .local v7, "child":Landroid/view/View;
    if-eqz v7, :cond_1d

    .line 5064
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 5065
    .local v9, "childLeft":I
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v10

    .line 5068
    .local v10, "childRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragStartX:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v9, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragStartX:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-gt v0, v10, :cond_1c

    .line 5069
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTrackedChild:Landroid/view/View;

    .line 5070
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getFirstVisiblePosition()I

    move-result v27

    add-int v27, v27, v17

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTrackedChildPosition:I

    .line 5097
    .end local v7    # "child":Landroid/view/View;
    .end local v9    # "childLeft":I
    .end local v10    # "childRight":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTrackedChild:Landroid/view/View;

    move-object/from16 v27, v0

    if-nez v27, :cond_f

    .line 5098
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCloseChildPositionByLeft:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getFirstVisiblePosition()I

    move-result v28

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCloseChildByLeft:Landroid/view/View;

    .line 5099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCloseChildByLeft:Landroid/view/View;

    move-object/from16 v27, v0

    if-eqz v27, :cond_e

    .line 5100
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragStartX:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCloseChildByLeft:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLeft()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDistanceFromCloseChildLeft:I

    .line 5103
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCloseChildPositionByRight:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getFirstVisiblePosition()I

    move-result v28

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCloseChildByRight:Landroid/view/View;

    .line 5104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCloseChildByRight:Landroid/view/View;

    move-object/from16 v27, v0

    if-eqz v27, :cond_f

    .line 5105
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragStartX:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCloseChildByRight:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLeft()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDistanceFromCloseChildRight:I

    .line 5112
    .end local v17    # "i":I
    .end local v21    # "newDistanceFromLeft":I
    .end local v22    # "newDistanceFromRight":I
    .end local v23    # "oldDistanceFromLeft":I
    .end local v24    # "oldDistanceFromRight":I
    :cond_f
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTrackedChild:Landroid/view/View;

    move-object/from16 v27, v0

    if-eqz v27, :cond_10

    .line 5113
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragStartX:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTrackedChild:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLeft()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDistanceFromTrackedChildLeft:I

    .line 5115
    :cond_10
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsfirstMoveEvent:Z

    .line 5118
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragStartX:I

    move/from16 v27, v0

    if-nez v27, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragStartY:I

    move/from16 v27, v0

    if-nez v27, :cond_12

    .line 5119
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragStartX:I

    .line 5120
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragStartY:I

    .line 5121
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-super {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->notifyMultiSelectedStart(II)V

    .line 5122
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsPenPressed:Z

    .line 5125
    :cond_12
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragEndX:I

    .line 5126
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragEndY:I

    .line 5128
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragEndX:I

    move/from16 v27, v0

    if-gez v27, :cond_21

    .line 5129
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragEndX:I

    .line 5134
    :cond_13
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->pointToPosition(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragSelectedViewPosition:I

    .line 5136
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragStartY:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragEndY:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragStartY:I

    move/from16 v27, v0

    :goto_7
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockTop:I

    .line 5137
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragStartX:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragEndX:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragStartX:I

    move/from16 v27, v0

    :goto_8
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockLeft:I

    .line 5138
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragEndY:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragStartY:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragEndY:I

    move/from16 v27, v0

    :goto_9
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockBottom:I

    .line 5139
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragEndX:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragStartX:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragEndX:I

    move/from16 v27, v0

    :goto_a
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockRight:I

    .line 5141
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_b
    move/from16 v0, v17

    if-ge v0, v14, :cond_27

    .line 5142
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5143
    .restart local v7    # "child":Landroid/view/View;
    if-eqz v7, :cond_1b

    .line 5144
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 5145
    .restart local v9    # "childLeft":I
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    .line 5146
    .local v11, "childTop":I
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v10

    .line 5147
    .restart local v10    # "childRight":I
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 5149
    .local v8, "childBottom":I
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v27

    if-nez v27, :cond_1b

    .line 5150
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockTop:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v11, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockLeft:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v9, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockBottom:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v8, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockRight:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v10, :cond_1a

    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockTop:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v9, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockBottom:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v8, :cond_17

    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockTop:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v11, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockBottom:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-gt v0, v11, :cond_17

    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockTop:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v8, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockBottom:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v8, :cond_26

    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockLeft:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v11, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockRight:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v10, :cond_1a

    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockLeft:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-gt v0, v9, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockRight:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-gt v0, v9, :cond_1a

    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockLeft:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v10, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockRight:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v10, :cond_26

    .line 5154
    :cond_1a
    add-int/lit8 v27, v9, 0x1

    add-int/lit8 v28, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->pointToPosition(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragSelectedViewPosition:I

    .line 5155
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragSelectedViewPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragSelectedViewPosition:I

    move/from16 v28, v0

    invoke-interface/range {v27 .. v28}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v27

    if-eqz v27, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragSelectedViewPosition:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_1b

    .line 5156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragSelectedViewPosition:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5157
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragSelectedViewPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->addToPressItemListArray(II)V

    .line 5158
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragSelectedViewPosition:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragSelectedViewPosition:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getItemIdAtPosition(I)J

    move-result-wide v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->notifyMultiSelectState(Landroid/view/View;IJ)Z

    .line 5141
    .end local v8    # "childBottom":I
    .end local v9    # "childLeft":I
    .end local v10    # "childRight":I
    .end local v11    # "childTop":I
    :cond_1b
    :goto_c
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_b

    .line 5075
    .restart local v9    # "childLeft":I
    .restart local v10    # "childRight":I
    .restart local v21    # "newDistanceFromLeft":I
    .restart local v22    # "newDistanceFromRight":I
    .restart local v23    # "oldDistanceFromLeft":I
    .restart local v24    # "oldDistanceFromRight":I
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragStartX:I

    move/from16 v27, v0

    sub-int v27, v27, v9

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v21

    .line 5076
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragStartX:I

    move/from16 v27, v0

    sub-int v27, v27, v10

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v22

    .line 5078
    add-int/lit8 v27, v14, -0x1

    move/from16 v0, v17

    move/from16 v1, v27

    if-ne v0, v1, :cond_1e

    .line 5079
    add-int/lit8 v27, v14, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getFirstVisiblePosition()I

    move-result v28

    add-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCloseChildPositionByLeft:I

    .line 5080
    add-int/lit8 v27, v14, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getFirstVisiblePosition()I

    move-result v28

    add-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCloseChildPositionByRight:I

    .line 5081
    move/from16 v23, v21

    .line 5082
    move/from16 v24, v22

    .line 5061
    .end local v9    # "childLeft":I
    .end local v10    # "childRight":I
    :cond_1d
    :goto_d
    add-int/lit8 v17, v17, -0x1

    goto/16 :goto_4

    .line 5084
    .restart local v9    # "childLeft":I
    .restart local v10    # "childRight":I
    :cond_1e
    move/from16 v0, v21

    move/from16 v1, v23

    if-gt v0, v1, :cond_1f

    .line 5085
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getFirstVisiblePosition()I

    move-result v27

    add-int v27, v27, v17

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCloseChildPositionByLeft:I

    .line 5086
    move/from16 v23, v21

    .line 5089
    :cond_1f
    move/from16 v0, v22

    move/from16 v1, v24

    if-gt v0, v1, :cond_1d

    .line 5090
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getFirstVisiblePosition()I

    move-result v27

    add-int v27, v27, v17

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCloseChildPositionByRight:I

    .line 5091
    move/from16 v24, v22

    goto :goto_d

    .line 5109
    .end local v7    # "child":Landroid/view/View;
    .end local v9    # "childLeft":I
    .end local v10    # "childRight":I
    .end local v17    # "i":I
    .end local v21    # "newDistanceFromLeft":I
    .end local v22    # "newDistanceFromRight":I
    .end local v23    # "oldDistanceFromLeft":I
    .end local v24    # "oldDistanceFromRight":I
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTrackedChildPosition:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getFirstVisiblePosition()I

    move-result v28

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTrackedChild:Landroid/view/View;

    goto/16 :goto_5

    .line 5130
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragEndX:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v13, :cond_13

    .line 5131
    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragEndX:I

    goto/16 :goto_6

    .line 5136
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragEndY:I

    move/from16 v27, v0

    goto/16 :goto_7

    .line 5137
    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragEndX:I

    move/from16 v27, v0

    goto/16 :goto_8

    .line 5138
    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragStartY:I

    move/from16 v27, v0

    goto/16 :goto_9

    .line 5139
    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragStartX:I

    move/from16 v27, v0

    goto/16 :goto_a

    .line 5161
    .restart local v7    # "child":Landroid/view/View;
    .restart local v8    # "childBottom":I
    .restart local v9    # "childLeft":I
    .restart local v10    # "childRight":I
    .restart local v11    # "childTop":I
    .restart local v17    # "i":I
    :cond_26
    add-int/lit8 v27, v9, 0x1

    add-int/lit8 v28, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->pointToPosition(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragSelectedViewPosition:I

    .line 5162
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragSelectedViewPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragSelectedViewPosition:I

    move/from16 v28, v0

    invoke-interface/range {v27 .. v28}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v27

    if-eqz v27, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragSelectedViewPosition:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1b

    .line 5163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragSelectedViewPosition:I

    move/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5164
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragSelectedViewPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->addToPressItemListArray(II)V

    .line 5165
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragSelectedViewPosition:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragSelectedViewPosition:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getItemIdAtPosition(I)J

    move-result-wide v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->notifyMultiSelectState(Landroid/view/View;IJ)Z

    goto/16 :goto_c

    .line 5171
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childBottom":I
    .end local v9    # "childLeft":I
    .end local v10    # "childRight":I
    .end local v11    # "childTop":I
    :cond_27
    const/16 v20, 0x1

    .line 5174
    .end local v14    # "count":I
    .end local v17    # "i":I
    :cond_28
    if-eqz v20, :cond_31

    .line 5175
    add-int/lit8 v27, v12, 0x0

    move/from16 v0, v25

    move/from16 v1, v27

    if-lt v0, v1, :cond_2c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverLeftAreaWidth:I

    move/from16 v27, v0

    add-int v27, v27, v12

    move/from16 v0, v25

    move/from16 v1, v27

    if-gt v0, v1, :cond_2c

    .line 5176
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverAreaEnter:Z

    move/from16 v27, v0

    if-nez v27, :cond_29

    .line 5177
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverAreaEnter:Z

    .line 5178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollStartTime:J

    .line 5180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$OnScrollListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_29

    .line 5181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$OnScrollListener;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;I)V

    .line 5185
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v27

    if-nez v27, :cond_2a

    .line 5186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRecognitionStartTime:J

    .line 5187
    const/16 v27, 0x2

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollDirection:I

    .line 5188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 5222
    :cond_2a
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsDragBlockEnabled:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2b

    .line 5223
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->invalidate()V

    .line 5231
    :cond_2b
    :goto_f
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPreviousTextViewScroll:Z

    goto/16 :goto_3

    .line 5190
    :cond_2c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRightAreaWidth:I

    move/from16 v27, v0

    sub-int v27, v13, v27

    move/from16 v0, v25

    move/from16 v1, v27

    if-lt v0, v1, :cond_2e

    move/from16 v0, v25

    if-gt v0, v13, :cond_2e

    .line 5191
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverAreaEnter:Z

    move/from16 v27, v0

    if-nez v27, :cond_2d

    .line 5192
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverAreaEnter:Z

    .line 5193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollStartTime:J

    .line 5195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$OnScrollListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2d

    .line 5196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$OnScrollListener;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;I)V

    .line 5200
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v27

    if-nez v27, :cond_2a

    .line 5201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRecognitionStartTime:J

    .line 5202
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollDirection:I

    .line 5203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    .line 5206
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverAreaEnter:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$OnScrollListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2f

    .line 5207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$OnScrollListener;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;I)V

    .line 5210
    :cond_2f
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollStartTime:J

    .line 5211
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRecognitionStartTime:J

    .line 5212
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverAreaEnter:Z

    .line 5215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_30

    .line 5216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->removeMessages(I)V

    .line 5219
    :cond_30
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsHoverOverscrolled:Z

    goto/16 :goto_e

    .line 5225
    :cond_31
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPreviousTextViewScroll:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2b

    .line 5227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_2b

    .line 5228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->removeMessages(I)V

    goto/16 :goto_f

    .line 5236
    :sswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCstate:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_34

    .line 5238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_32

    .line 5239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->removeMessages(I)V

    .line 5242
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_33

    .line 5243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->removeMessages(I)V

    .line 5246
    :cond_33
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsHoverOverscrolled:Z

    .line 5249
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCstate:I

    .line 5250
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->postInvalidateOnAnimation()V

    .line 5251
    const/16 v27, 0x1

    goto/16 :goto_2

    .line 5257
    :cond_34
    :sswitch_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsTextSelectionStarted:Z

    move/from16 v27, v0

    if-nez v27, :cond_3c

    .line 5258
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverAreaEnter:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$OnScrollListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_35

    .line 5259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$OnScrollListener;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;I)V

    .line 5262
    :cond_35
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverRecognitionStartTime:J

    .line 5263
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollStartTime:J

    .line 5264
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverAreaEnter:Z

    .line 5265
    const/16 v19, 0x0

    .line 5267
    .local v19, "isNeedActionMode":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragSelectedItemSize:I

    .line 5269
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragSelectedItemSize:I

    move/from16 v27, v0

    if-eqz v27, :cond_3c

    .line 5270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v27, v0

    if-eqz v27, :cond_3b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceMode:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceMode:I

    move/from16 v27, v0

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3b

    .line 5272
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_37
    :goto_10
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_38

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 5273
    .local v15, "dragSelectedViewPosition":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v28, v0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v29

    invoke-interface/range {v28 .. v29}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_37

    .line 5274
    const/16 v19, 0x1

    goto :goto_10

    .line 5278
    .end local v15    # "dragSelectedViewPosition":Ljava/lang/Integer;
    :cond_38
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceMode:I

    move/from16 v27, v0

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_39

    .line 5279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move-object/from16 v27, v0

    if-nez v27, :cond_39

    const/16 v27, 0x1

    move/from16 v0, v19

    move/from16 v1, v27

    if-ne v0, v1, :cond_39

    .line 5280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMultiChoiceModeCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 5284
    :cond_39
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsOnClickEnabled:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3b

    .line 5285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_3a
    :goto_11
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_3b

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 5286
    .restart local v15    # "dragSelectedViewPosition":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v28, v0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v29

    invoke-interface/range {v28 .. v29}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_3a

    .line 5287
    const/16 v28, 0x0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v29

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v30

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getItemIdAtPosition(I)J

    move-result-wide v30

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    move-wide/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_11

    .line 5292
    .end local v15    # "dragSelectedViewPosition":Ljava/lang/Integer;
    :cond_3b
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-super {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->notifyMultiSelectedStop(II)V

    .line 5296
    .end local v19    # "isNeedActionMode":Z
    :cond_3c
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsPenPressed:Z

    .line 5297
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsfirstMoveEvent:Z

    .line 5298
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragSelectedViewPosition:I

    .line 5300
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragStartX:I

    .line 5301
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragStartY:I

    .line 5302
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragEndX:I

    .line 5303
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragEndY:I

    .line 5305
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockLeft:I

    .line 5306
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockTop:I

    .line 5307
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockRight:I

    .line 5308
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragBlockBottom:I

    .line 5310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    .line 5311
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDragSelectedItemSize:I

    .line 5312
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTrackedChild:Landroid/view/View;

    .line 5313
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDistanceFromTrackedChildLeft:I

    .line 5315
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsCloseChildSetted:Z

    .line 5316
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOldHoverScrollDirection:I

    .line 5317
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCloseChildByLeft:Landroid/view/View;

    .line 5318
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCloseChildPositionByLeft:I

    .line 5319
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDistanceFromCloseChildLeft:I

    .line 5320
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCloseChildByRight:Landroid/view/View;

    .line 5321
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCloseChildPositionByRight:I

    .line 5322
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDistanceFromCloseChildRight:I

    .line 5324
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsDragBlockEnabled:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3d

    .line 5325
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->invalidate()V

    .line 5329
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 5330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverHandler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$HoverScrollHandler;->removeMessages(I)V

    goto/16 :goto_3

    .line 5011
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_4
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0xd3 -> :sswitch_0
        0xd4 -> :sswitch_5
        0xd5 -> :sswitch_3
    .end sparse-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    .line 6019
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 6020
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v5, :cond_3

    .line 6021
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getScrollX()I

    move-result v3

    .line 6022
    .local v3, "scrollX":I
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    .line 6023
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 6024
    .local v2, "restoreCount":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getHeight()I

    move-result v1

    .line 6026
    .local v1, "height":I
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v5, v3

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6027
    .local v0, "edgeX":I
    int-to-float v5, v0

    int-to-float v6, v1

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6028
    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 6029
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v6

    invoke-virtual {v5, v1, v6}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 6030
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6031
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    .line 6032
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getHeight()I

    move-result v6

    .line 6031
    invoke-virtual {p0, v8, v8, v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->invalidate(IIII)V

    .line 6034
    :cond_0
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 6036
    .end local v0    # "edgeX":I
    .end local v1    # "height":I
    .end local v2    # "restoreCount":I
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_3

    .line 6037
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 6038
    .restart local v2    # "restoreCount":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v4

    .line 6039
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getHeight()I

    move-result v1

    .line 6041
    .restart local v1    # "height":I
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLastPositionDistanceGuess:I

    add-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6042
    .restart local v0    # "edgeX":I
    int-to-float v5, v0

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6043
    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 6044
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v1, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 6045
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6046
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    .line 6047
    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v6

    .line 6048
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getHeight()I

    move-result v7

    .line 6046
    invoke-virtual {p0, v5, v8, v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->invalidate(IIII)V

    .line 6050
    :cond_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 6055
    .end local v0    # "edgeX":I
    .end local v1    # "height":I
    .end local v2    # "restoreCount":I
    .end local v3    # "scrollX":I
    .end local v4    # "width":I
    :cond_3
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCstate:I

    if-eqz v5, :cond_4

    .line 6056
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->drawQuickController(Landroid/graphics/Canvas;)V

    .line 6058
    :cond_4
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 3383
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->drawableStateChanged()V

    .line 3384
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->updateSelectorState()V

    .line 3385
    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method abstract fillGapRTL(Z)V
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 9721
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 9722
    return-void
.end method

.method findClosestMotionRow(I)I
    .locals 3
    .param p1, "x"    # I

    .prologue
    const/4 v2, -0x1

    .line 7270
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 7271
    .local v0, "childCount":I
    if-nez v0, :cond_1

    move v1, v2

    .line 7276
    :cond_0
    :goto_0
    return v1

    .line 7275
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->findMotionRow(I)I

    move-result v1

    .line 7276
    .local v1, "motionRow":I
    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x1

    goto :goto_0
.end method

.method abstract findMotionRow(I)I
.end method

.method public findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 2
    .param p1, "accessibilityId"    # I

    .prologue
    .line 1982
    invoke-static {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->getAccessibilityViewId(Landroid/view/View;)I

    move-result v0

    .line 1983
    .local v0, "getAccessibilityViewId":I
    if-ne p1, v0, :cond_0

    .line 1995
    .end local p0    # "this":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;
    :goto_0
    return-object p0

    .line 1990
    .restart local p0    # "this":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDataChanged:Z

    if-eqz v1, :cond_1

    .line 1991
    const/4 p0, 0x0

    goto :goto_0

    .line 1995
    :cond_1
    invoke-static {p0, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->findViewByAccessibilityIdTraversal(Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    goto :goto_0
.end method

.method public fling(I)V
    .locals 1
    .param p1, "velocityX"    # I

    .prologue
    .line 5956
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 5957
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    .line 5959
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->reportScrollStateChange(I)V

    .line 5960
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->start(I)V

    .line 5961
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 8173
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 8179
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 8184
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "focusedView"    # Landroid/view/View;

    .prologue
    .line 2663
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2664
    .local v0, "viewParent":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    if-eq v0, p0, :cond_0

    move-object p1, v0

    .line 2665
    check-cast p1, Landroid/view/View;

    .line 2666
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 2669
    :cond_0
    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 2670
    const/4 p1, 0x0

    .line 2673
    .end local p1    # "focusedView":Landroid/view/View;
    :cond_1
    return-object p1
.end method

.method protected getBottomPaddingOffset()I
    .locals 1

    .prologue
    .line 3173
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getFlagClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingBottom()I

    move-result v0

    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 8255
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 1276
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    .line 1340
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_2

    .line 1341
    :cond_0
    const/4 v4, 0x0

    new-array v3, v4, [J

    .line 1352
    :cond_1
    return-object v3

    .line 1344
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1345
    .local v2, "idStates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1346
    .local v0, "count":I
    new-array v3, v0, [J

    .line 1348
    .local v3, "ids":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1349
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 1348
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1308
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 1312
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 1325
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 1326
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1328
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 1558
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceMode:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 3803
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 2061
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2062
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 2065
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2066
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2071
    :goto_0
    return-void

    .line 2069
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 7212
    const/4 v0, 0x0

    return v0
.end method

.method protected getGroupFlags(Landroid/view/ViewGroup;)I
    .locals 1
    .param p1, "callerInstance"    # Landroid/view/ViewGroup;

    .prologue
    .line 9163
    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->getField_mGroupFlags(Landroid/view/ViewGroup;)I

    move-result v0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 7202
    const/4 v0, 0x0

    return v0
.end method

.method public getHorizontalScrollbarHeight()I
    .locals 2

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1800
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getHorizontalScrollbarHeight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1802
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getHorizontalScrollbarHeight()I

    move-result v0

    goto :goto_0
.end method

.method protected getItemCount()I
    .locals 2

    .prologue
    .line 6700
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 6701
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

.method protected getLeftFadingEdgeStrength()F
    .locals 6

    .prologue
    .line 2557
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 2558
    .local v0, "count":I
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getLeftFadingEdgeStrength()F

    move-result v1

    .line 2559
    .local v1, "fadeEdge":F
    if-nez v0, :cond_1

    .line 2572
    .end local v1    # "fadeEdge":F
    :cond_0
    :goto_0
    return v1

    .line 2562
    .restart local v1    # "fadeEdge":F
    :cond_1
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsRTL:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_4

    .line 2563
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 2562
    :cond_3
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    if-gtz v4, :cond_2

    .line 2568
    :cond_4
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsRTL:Z

    if-eqz v4, :cond_5

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 2571
    .local v3, "left":I
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 2572
    .local v2, "fadeLength":F
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingLeft()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingLeft()I

    move-result v4

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_0

    .line 2569
    .end local v2    # "fadeLength":F
    .end local v3    # "left":I
    :cond_5
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    .restart local v3    # "left":I
    goto :goto_1
.end method

.method protected getLeftPaddingOffset()I
    .locals 1

    .prologue
    .line 3155
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getFlagClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingLeft()I

    move-result v0

    neg-int v0, v0

    goto :goto_0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 2749
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 2761
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 2773
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 2737
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 2578
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 2579
    .local v0, "count":I
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getRightFadingEdgeStrength()F

    move-result v1

    .line 2580
    .local v1, "fadeEdge":F
    if-nez v0, :cond_1

    .line 2593
    .end local v1    # "fadeEdge":F
    :cond_0
    :goto_0
    return v1

    .line 2583
    .restart local v1    # "fadeEdge":F
    :cond_1
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsRTL:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    if-lez v5, :cond_4

    .line 2584
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 2583
    :cond_3
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-lt v5, v6, :cond_2

    .line 2588
    :cond_4
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsRTL:Z

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    .line 2591
    .local v3, "right":I
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v4

    .line 2592
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v5

    int-to-float v2, v5

    .line 2593
    .local v2, "fadeLength":F
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingRight()I

    move-result v5

    sub-int v5, v4, v5

    if-le v3, v5, :cond_0

    sub-int v5, v3, v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v1, v5, v2

    goto :goto_0

    .line 2589
    .end local v2    # "fadeLength":F
    .end local v3    # "right":I
    .end local v4    # "width":I
    :cond_5
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    .restart local v3    # "right":I
    goto :goto_1
.end method

.method protected getRightPaddingOffset()I
    .locals 1

    .prologue
    .line 3167
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getFlagClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingRight()I

    move-result v0

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2721
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 2722
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectedPosition:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2724
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

    .line 1942
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChoiceMode()I

    move-result v0

    .line 1943
    .local v0, "choiceMode":I
    packed-switch v0, :pswitch_data_0

    .line 1952
    :goto_0
    :pswitch_0
    return v1

    .line 1947
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1950
    :pswitch_2
    const/4 v1, 0x2

    goto :goto_0

    .line 1943
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
    .line 3299
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 8223
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2402
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2403
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2405
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTopPaddingOffset()I
    .locals 1

    .prologue
    .line 3161
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getFlagClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingTop()I

    move-result v0

    neg-int v0, v0

    goto :goto_0
.end method

.method public getTouchSlop()I
    .locals 1

    .prologue
    .line 1084
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchSlop:I

    return v0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 8218
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTranscriptMode:I

    return v0
.end method

.method getWidthForPosition(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 9097
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getFirstVisiblePosition()I

    move-result v1

    .line 9098
    .local v1, "firstVisiblePosition":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 9099
    .local v0, "childCount":I
    sub-int v2, p1, v1

    .line 9100
    .local v2, "index":I
    if-ltz v2, :cond_0

    if-ge v2, v0, :cond_0

    .line 9102
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 9103
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 9110
    :goto_0
    return v4

    .line 9106
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v3

    .line 9107
    .restart local v3    # "view":Landroid/view/View;
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHeightMeasureSpec:I

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/View;->measure(II)V

    .line 9108
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 9109
    .local v4, "width":I
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;

    invoke-virtual {v5, v3, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

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

    .line 7472
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    .line 7473
    .local v1, "count":I
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLastHandledItemCount:I

    .line 7474
    .local v3, "lastHandledItemCount":I
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    iput v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLastHandledItemCount:I

    .line 7477
    iget-boolean v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsMultiFocusEnabled:Z

    if-ne v10, v9, :cond_0

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_0

    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOldAdapterItemCount:I

    if-eq v10, v11, :cond_0

    .line 7478
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPressItemListArray:Ljava/util/ArrayList;

    .line 7479
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->resetPressItemListArray()V

    .line 7480
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    iput v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOldAdapterItemCount:I

    .line 7483
    :cond_0
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceMode:I

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 7484
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->confirmCheckedPositionsById()V

    .line 7488
    :cond_1
    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;

    invoke-virtual {v10}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->clearTransientStateViews()V

    .line 7490
    if-lez v1, :cond_10

    .line 7495
    iget-boolean v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mNeedSync:Z

    if-eqz v10, :cond_9

    .line 7497
    iput-boolean v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mNeedSync:Z

    .line 7498
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingSync:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;

    .line 7500
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTranscriptMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_3

    .line 7501
    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLayoutMode:I

    .line 7620
    :cond_2
    :goto_0
    return-void

    .line 7503
    :cond_3
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTranscriptMode:I

    if-ne v10, v9, :cond_8

    .line 7504
    iget-boolean v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mForceTranscriptScroll:Z

    if-eqz v10, :cond_4

    .line 7505
    iput-boolean v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mForceTranscriptScroll:Z

    .line 7506
    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLayoutMode:I

    goto :goto_0

    .line 7509
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 7510
    .local v0, "childCount":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingRight()I

    move-result v11

    sub-int v5, v10, v11

    .line 7512
    .local v5, "listRight":I
    iget-boolean v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsRTL:Z

    if-eqz v10, :cond_5

    invoke-virtual {p0, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7515
    .local v2, "lastChild":Landroid/view/View;
    :goto_1
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    .line 7516
    .local v4, "lastRight":I
    :goto_2
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    add-int/2addr v10, v0

    if-lt v10, v3, :cond_7

    if-gt v4, v5, :cond_7

    .line 7518
    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLayoutMode:I

    goto :goto_0

    .line 7513
    .end local v2    # "lastChild":Landroid/view/View;
    .end local v4    # "lastRight":I
    :cond_5
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "lastChild":Landroid/view/View;
    goto :goto_1

    :cond_6
    move v4, v5

    .line 7515
    goto :goto_2

    .line 7523
    .restart local v4    # "lastRight":I
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->awakenScrollBars()Z

    .line 7526
    .end local v0    # "childCount":I
    .end local v2    # "lastChild":Landroid/view/View;
    .end local v4    # "lastRight":I
    .end local v5    # "listRight":I
    :cond_8
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSyncMode:I

    packed-switch v10, :pswitch_data_0

    .line 7574
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isInTouchMode()Z

    move-result v10

    if-nez v10, :cond_f

    .line 7576
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getSelectedItemPosition()I

    move-result v6

    .line 7579
    .local v6, "newPos":I
    if-lt v6, v1, :cond_a

    .line 7580
    add-int/lit8 v6, v1, -0x1

    .line 7582
    :cond_a
    if-gez v6, :cond_b

    .line 7583
    const/4 v6, 0x0

    .line 7587
    :cond_b
    invoke-virtual {p0, v6, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 7589
    .local v7, "selectablePos":I
    if-ltz v7, :cond_e

    .line 7590
    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 7528
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isInTouchMode()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 7533
    iput v14, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLayoutMode:I

    .line 7534
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSyncPosition:I

    goto :goto_0

    .line 7540
    :cond_c
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->findSyncPosition()I

    move-result v6

    .line 7541
    .restart local v6    # "newPos":I
    if-ltz v6, :cond_9

    .line 7543
    invoke-virtual {p0, v6, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 7544
    .restart local v7    # "selectablePos":I
    if-ne v7, v6, :cond_9

    .line 7546
    iput v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSyncPosition:I

    .line 7548
    iget-wide v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSyncHeight:J

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_d

    .line 7551
    iput v14, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLayoutMode:I

    .line 7559
    :goto_3
    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 7555
    :cond_d
    const/4 v8, 0x2

    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLayoutMode:I

    goto :goto_3

    .line 7567
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_1
    iput v14, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLayoutMode:I

    .line 7568
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSyncPosition:I

    goto/16 :goto_0

    .line 7594
    .restart local v6    # "newPos":I
    .restart local v7    # "selectablePos":I
    :cond_e
    invoke-virtual {p0, v6, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 7595
    if-ltz v7, :cond_10

    .line 7596
    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setNextSelectedPositionInt(I)V

    goto/16 :goto_0

    .line 7603
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :cond_f
    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mResurrectToPosition:I

    if-gez v10, :cond_2

    .line 7611
    :cond_10
    iget-boolean v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mStackFromBottom:Z

    if-eqz v10, :cond_11

    :goto_4
    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLayoutMode:I

    .line 7612
    iput v13, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectedPosition:I

    .line 7613
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectedRowId:J

    .line 7614
    iput v13, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mNextSelectedPosition:I

    .line 7615
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mNextSelectedRowId:J

    .line 7616
    iput-boolean v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mNeedSync:Z

    .line 7617
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingSync:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;

    .line 7618
    iput v13, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectorPosition:I

    .line 7619
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->checkSelectionChanged()V

    goto/16 :goto_0

    :cond_11
    move v8, v9

    .line 7611
    goto :goto_4

    .line 7526
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    .prologue
    .line 8071
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 7227
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectedPosition:I

    if-eq v0, v2, :cond_2

    .line 7228
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 7229
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectedPosition:I

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mResurrectToPosition:I

    .line 7231
    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mNextSelectedPosition:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1

    .line 7232
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mNextSelectedPosition:I

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mResurrectToPosition:I

    .line 7234
    :cond_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setSelectedPositionInt(I)V

    .line 7235
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 7236
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectedLeft:I

    .line 7238
    :cond_2
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 7283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDataChanged:Z

    .line 7284
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->rememberSyncState()V

    .line 7285
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->requestLayout()V

    .line 7286
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->invalidate()V

    .line 7287
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1891
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    if-eqz v0, :cond_0

    .line 1892
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;->onScroll(III)V

    .line 1894
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1895
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$OnScrollListener;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$OnScrollListener;->onScroll(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;III)V

    .line 1897
    :cond_1
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->onScrollChanged(IIII)V

    .line 1898
    return-void
.end method

.method public isFastScrollAlwaysVisible()Z
    .locals 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1790
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    if-nez v2, :cond_2

    .line 1791
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScrollEnabled:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScrollAlwaysVisible:Z

    if-eqz v2, :cond_1

    .line 1793
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1791
    goto :goto_0

    .line 1793
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;->isAlwaysShowEnabled()Z

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
    .line 1813
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    if-nez v0, :cond_0

    .line 1814
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScrollEnabled:Z

    .line 1816
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;->isEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method protected isHorizontalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 1840
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isFastScrollEnabled()Z

    move-result v0

    return v0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 7734
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFiltered:Z

    return v0
.end method

.method public isInScrollingContainer()Z
    .locals 2

    .prologue
    .line 10484
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 10485
    .local v0, "p":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 10486
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10487
    const/4 v1, 0x1

    .line 10491
    :goto_1
    return v1

    .line 10489
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 10491
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isItemChecked(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1291
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1292
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1295
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLayoutRtl(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 9170
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public isMultiFocusEnabled()Z
    .locals 1

    .prologue
    .line 10164
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsMultiFocusEnabled:Z

    return v0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 1

    .prologue
    .line 3149
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getFlagClipToPadding()Z

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
    .line 2009
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSetCustomMultiChoiceMode()Z
    .locals 1

    .prologue
    .line 1650
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCustomMultiChoiceMode:Z

    return v0
.end method

.method protected isShowingScrollbar()Z
    .locals 1

    .prologue
    .line 6690
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScrollEnabled:Z

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
    .line 1874
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2086
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2056
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isUsingAdapterView()Z
    .locals 1

    .prologue
    .line 6711
    const/4 v0, 0x1

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 3428
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->jumpDrawablesToCurrentState()V

    .line 3429
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 3430
    :cond_0
    return-void
.end method

.method keyPressed()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 3307
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isClickable()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3344
    :cond_0
    :goto_0
    return-void

    .line 3311
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3312
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3313
    .local v3, "selectorRect":Landroid/graphics/Rect;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3314
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3316
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectedPosition:I

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3318
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_3

    .line 3319
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3320
    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3322
    :cond_3
    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setPressed(Z)V

    .line 3324
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isLongClickable()Z

    move-result v1

    .line 3325
    .local v1, "longClickable":Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3326
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_4

    .line 3327
    if-eqz v1, :cond_5

    .line 3328
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .line 3329
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    .line 3328
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 3334
    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDataChanged:Z

    if-nez v5, :cond_0

    .line 3335
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingCheckForKeyLongPress:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForKeyLongPress;

    if-nez v5, :cond_6

    .line 3336
    new-instance v5, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForKeyLongPress;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForKeyLongPress;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$1;)V

    iput-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingCheckForKeyLongPress:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForKeyLongPress;

    .line 3340
    :goto_2
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingCheckForKeyLongPress:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 3341
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingCheckForKeyLongPress:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3331
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_5
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1

    .line 3338
    :cond_6
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingCheckForKeyLongPress:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForKeyLongPress;

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 2655
    return-void
.end method

.method public notifyKeyPressState(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1514
    const/4 v0, 0x0

    .line 1516
    .local v0, "handledNotifyKeyPress":Z
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsShiftkeyPressed:Z

    if-eqz v1, :cond_0

    .line 1517
    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsShiftkeyPressed:Z

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-super/range {v1 .. v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->notifyKeyPress(Landroid/view/View;IJZ)Z

    move-result v0

    .line 1519
    :cond_0
    return v0
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "isScrap"    # [Z

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2791
    aput-boolean v10, p2, v10

    .line 2795
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;

    invoke-virtual {v8, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v4

    .line 2796
    .local v4, "transientView":Landroid/view/View;
    if-eqz v4, :cond_4

    .line 2797
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;

    .line 2800
    .local v2, "params":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    iget v7, v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;->viewType:I

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 2801
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p1, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 2803
    .local v5, "updatedView":Landroid/view/View;
    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapterHasStableIds:Z

    if-eqz v7, :cond_0

    .line 2804
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 2806
    .local v6, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v6, :cond_2

    .line 2807
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;

    .line 2813
    .local v1, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    :goto_0
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    iput-wide v8, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;->itemId:J

    .line 2814
    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2818
    .end local v1    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    .end local v6    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    if-eq v5, v4, :cond_1

    .line 2819
    invoke-direct {p0, v5, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 2820
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;

    invoke-virtual {v7, v5, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2825
    .end local v5    # "updatedView":Landroid/view/View;
    :cond_1
    aput-boolean v11, p2, v10

    .line 2829
    invoke-static {v4}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->dispatchFinishTemporaryDetach(Landroid/view/View;)V

    .line 2890
    .end local v2    # "params":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    .end local v4    # "transientView":Landroid/view/View;
    :goto_1
    return-object v4

    .line 2808
    .restart local v2    # "params":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    .restart local v4    # "transientView":Landroid/view/View;
    .restart local v5    # "updatedView":Landroid/view/View;
    .restart local v6    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 2809
    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;

    .restart local v1    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    goto :goto_0

    .end local v1    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    :cond_3
    move-object v1, v6

    .line 2811
    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;

    .restart local v1    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    goto :goto_0

    .line 2833
    .end local v1    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    .end local v2    # "params":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    .end local v5    # "updatedView":Landroid/view/View;
    .end local v6    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;

    invoke-virtual {v8, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v3

    .line 2834
    .local v3, "scrapView":Landroid/view/View;
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2835
    .local v0, "child":Landroid/view/View;
    if-eqz v3, :cond_5

    .line 2836
    if-eq v0, v3, :cond_6

    .line 2838
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;

    invoke-virtual {v8, v3, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 2856
    :cond_5
    :goto_2
    if-nez v0, :cond_9

    .line 2857
    const-string v8, "SeslHorizAbsListView"

    const-string v9, " try again to check child on obtainview"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2858
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8, p1, v7, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2859
    if-nez v0, :cond_9

    .line 2860
    const-string v8, "SeslHorizAbsListView"

    const-string v9, " child is null again"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    const-string v8, "SeslHorizAbsListView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " position = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    const-string v8, "SeslHorizAbsListView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " mAdapter ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2863
    const-string v8, "SeslHorizAbsListView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " getChildCount = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    const-string v8, "SeslHorizAbsListView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " mAdapter.getCount = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v7

    .line 2865
    goto/16 :goto_1

    .line 2840
    :cond_6
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x18

    if-lt v8, v9, :cond_7

    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->isTemporarilyDetached(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2841
    :cond_7
    aput-boolean v11, p2, v10

    .line 2845
    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->dispatchFinishTemporaryDetach(Landroid/view/View;)V

    goto/16 :goto_2

    .line 2850
    :cond_8
    aput-boolean v10, p2, v10

    goto/16 :goto_2

    .line 2869
    :cond_9
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCacheColorHint:I

    if-eqz v7, :cond_a

    .line 2870
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCacheColorHint:I

    invoke-virtual {v0, v7}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 2873
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v7

    if-nez v7, :cond_b

    .line 2874
    invoke-virtual {v0, v11}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 2877
    :cond_b
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 2880
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAccessibilityDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$ListItemAccessibilityDelegate;

    if-nez v7, :cond_c

    .line 2881
    new-instance v7, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$ListItemAccessibilityDelegate;

    invoke-direct {v7, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$ListItemAccessibilityDelegate;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V

    iput-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAccessibilityDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$ListItemAccessibilityDelegate;

    .line 2885
    :cond_c
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAccessibilityDelegate:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$ListItemAccessibilityDelegate;

    invoke-virtual {v0, v7}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    move-object v4, v0

    .line 2890
    goto/16 :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 3434
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->onAttachedToWindow()V

    .line 3436
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3437
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3439
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mGlobalLayoutListenerAddedFilter:Z

    if-nez v1, :cond_0

    .line 3440
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3443
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AdapterDataSetObserver;

    if-nez v1, :cond_1

    .line 3444
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AdapterDataSetObserver;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AdapterDataSetObserver;

    .line 3445
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3448
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDataChanged:Z

    .line 3449
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOldItemCount:I

    .line 3450
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    .line 3453
    :cond_1
    invoke-virtual {p0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    if-eqz v1, :cond_2

    .line 3457
    :cond_2
    return-void
.end method

.method public onCancelPendingInputEvents()V
    .locals 1

    .prologue
    .line 3617
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->onCancelPendingInputEvents()V

    .line 3618
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPerformClick:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;

    if-eqz v0, :cond_0

    .line 3619
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPerformClick:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3621
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingCheckForTap:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;

    if-eqz v0, :cond_1

    .line 3622
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingCheckForTap:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3624
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingCheckForLongPress:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForLongPress;

    if-eqz v0, :cond_2

    .line 3625
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingCheckForLongPress:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForLongPress;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3627
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingCheckForKeyLongPress:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForKeyLongPress;

    if-eqz v0, :cond_3

    .line 3628
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingCheckForKeyLongPress:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForKeyLongPress;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3630
    :cond_3
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .param p1, "extraSpace"    # I

    .prologue
    .line 3390
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    .line 3392
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 3418
    :cond_0
    :goto_0
    return-object v3

    .line 3398
    :cond_1
    sget-object v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 3403
    .local v1, "enabledState":I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 3404
    .local v3, "state":[I
    const/4 v0, -0x1

    .line 3405
    .local v0, "enabledPos":I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 3406
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 3407
    move v0, v2

    .line 3413
    :cond_2
    if-ltz v0, :cond_0

    .line 3414
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 3405
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 7829
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7830
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPublicInputConnection:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$InputConnectionWrapper;

    if-nez v0, :cond_0

    .line 7831
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 7832
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$InputConnectionWrapper;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$InputConnectionWrapper;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;Landroid/view/inputmethod/EditorInfo;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPublicInputConnection:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$InputConnectionWrapper;

    .line 7834
    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 7835
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 7836
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPublicInputConnection:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$InputConnectionWrapper;

    .line 7838
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

    .line 3461
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->onDetachedFromWindow()V

    .line 3463
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsDetaching:Z

    .line 3466
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->dismissPopup()V

    .line 3469
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->clear()V

    .line 3471
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3472
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3473
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 3474
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3475
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 3478
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 3479
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3480
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AdapterDataSetObserver;

    .line 3483
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    if-eqz v1, :cond_2

    .line 3484
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3487
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;

    if-eqz v1, :cond_3

    .line 3488
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;->stop()V

    .line 3491
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_4

    .line 3492
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3495
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPerformClick:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;

    if-eqz v1, :cond_5

    .line 3496
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPerformClick:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PerformClick;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3499
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    .line 3500
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3501
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3504
    :cond_6
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    if-eq v1, v4, :cond_7

    .line 3505
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    .line 3509
    :cond_7
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCstate:I

    if-eqz v1, :cond_8

    .line 3510
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCstate:I

    .line 3513
    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->releaseAllBoosters()V

    .line 3514
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsDetaching:Z

    .line 3515
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .param p1, "hint"    # I

    .prologue
    .line 7624
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->onDisplayHint(I)V

    .line 7625
    sparse-switch p1, :sswitch_data_0

    .line 7637
    :cond_0
    :goto_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPopupHidden:Z

    .line 7638
    return-void

    .line 7627
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7628
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->dismissPopup()V

    goto :goto_0

    .line 7632
    :sswitch_1
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7633
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->showPopup()V

    goto :goto_0

    .line 7637
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 7625
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
    .line 8165
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 8166
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mResurrectToPosition:I

    .line 8167
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->resurrectSelection()Z

    .line 8169
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2410
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2411
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectedPosition:I

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2412
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 2415
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDataChanged:Z

    .line 2416
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOldItemCount:I

    .line 2417
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    .line 2419
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->resurrectSelection()Z

    .line 2421
    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 5920
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 5921
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 5942
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    :goto_0
    return v4

    .line 5923
    :pswitch_0
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 5924
    const/16 v5, 0xa

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 5926
    .local v2, "hscroll":F
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 5927
    .local v3, "outValue":Landroid/util/TypedValue;
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x101004d

    invoke-virtual {v5, v6, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 5929
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    .line 5931
    .local v1, "horizontalScrollFactor":F
    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-eqz v5, :cond_0

    .line 5933
    mul-float v5, v2, v1

    float-to-int v0, v5

    .line 5934
    .local v0, "delta":I
    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->trackMotionScroll(II)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 5921
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 8076
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8078
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPopupHidden:Z

    if-nez v0, :cond_0

    .line 8079
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->showPopup()V

    .line 8088
    :cond_0
    :goto_0
    return-void

    .line 8083
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8084
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1921
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1922
    const-class v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1923
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v2, 0x1

    .line 1927
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1928
    const-class v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1929
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1930
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getFirstVisiblePosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 1931
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1932
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1934
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 1935
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1936
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1939
    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v2, 0x1

    .line 2981
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 2982
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    if-nez v0, :cond_1

    .line 3008
    :cond_0
    :goto_0
    return-void

    .line 2987
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2988
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    goto :goto_0

    .line 2992
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getSelectedItemPosition()I

    move-result v1

    if-ne p2, v1, :cond_5

    .line 2993
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 2994
    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2999
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3000
    const/16 v1, 0x10

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3001
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 3004
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3005
    const/16 v1, 0x20

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3006
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    goto :goto_0

    .line 2996
    :cond_5
    const/4 v1, 0x4

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_1
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 6099
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6100
    const/4 v0, 0x1

    .line 6103
    :goto_0
    return v0

    :cond_0
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

    .line 6108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 6111
    .local v0, "actionMasked":I
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;

    if-eqz v9, :cond_0

    .line 6112
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;->stop()V

    .line 6115
    :cond_0
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsDetaching:Z

    if-nez v9, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isAttachedToWindow()Z

    move-result v9

    if-nez v9, :cond_3

    :cond_1
    move v7, v8

    .line 6197
    :cond_2
    :goto_0
    return v7

    .line 6123
    :cond_3
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    invoke-virtual {v9, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 6127
    :cond_4
    packed-switch v0, :pswitch_data_0

    :cond_5
    :goto_1
    :pswitch_0
    move v7, v8

    .line 6197
    goto :goto_0

    .line 6129
    :pswitch_1
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    .line 6130
    .local v3, "touchMode":I
    const/4 v9, 0x6

    if-eq v3, v9, :cond_6

    const/4 v9, 0x5

    if-ne v3, v9, :cond_7

    .line 6131
    :cond_6
    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionCorrection:I

    goto :goto_0

    .line 6135
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v5, v9

    .line 6136
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v6, v9

    .line 6137
    .local v6, "y":I
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mActivePointerId:I

    .line 6139
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->findMotionRow(I)I

    move-result v1

    .line 6140
    .local v1, "motionPosition":I
    if-eq v3, v11, :cond_8

    if-ltz v1, :cond_8

    .line 6143
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    sub-int v9, v1, v9

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 6144
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v9

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionViewOriginalLeft:I

    .line 6145
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionX:I

    .line 6146
    iput v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionY:I

    .line 6147
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionPosition:I

    .line 6148
    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    .line 6149
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->clearScrollingCache()V

    .line 6151
    .end local v4    # "v":Landroid/view/View;
    :cond_8
    const/high16 v9, -0x80000000

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLastX:I

    .line 6152
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->initOrResetVelocityTracker()V

    .line 6153
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 6154
    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mNestedXOffset:I

    .line 6155
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->startNestedScroll(I)Z

    .line 6156
    if-ne v3, v11, :cond_5

    goto :goto_0

    .line 6163
    .end local v1    # "motionPosition":I
    .end local v3    # "touchMode":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :pswitch_2
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    packed-switch v9, :pswitch_data_1

    goto :goto_1

    .line 6165
    :pswitch_3
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 6166
    .local v2, "pointerIndex":I
    if-ne v2, v10, :cond_9

    .line 6167
    const/4 v2, 0x0

    .line 6168
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mActivePointerId:I

    .line 6170
    :cond_9
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    float-to-int v5, v9

    .line 6171
    .restart local v5    # "x":I
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->initVelocityTrackerIfNotExists()V

    .line 6172
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 6173
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v9, v9

    const/4 v10, 0x0

    invoke-direct {p0, v5, v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto/16 :goto_0

    .line 6183
    .end local v2    # "pointerIndex":I
    .end local v5    # "x":I
    :pswitch_4
    iput v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    .line 6184
    iput v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mActivePointerId:I

    .line 6185
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->recycleVelocityTracker()V

    .line 6186
    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->reportScrollStateChange(I)V

    .line 6187
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->stopNestedScroll()V

    goto/16 :goto_1

    .line 6192
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 6127
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

    .line 6163
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method onJumpScrollToTopFinished()V
    .locals 2

    .prologue
    .line 5814
    const-string v0, "SeslHorizAbsListView"

    const-string v1, "onJumpScrollToTopFinished()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5815
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 3849
    sparse-switch p1, :sswitch_data_0

    .line 3864
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 3852
    :sswitch_0
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsCtrlkeyPressed:Z

    goto :goto_0

    .line 3856
    :sswitch_1
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsShiftkeyPressed:Z

    goto :goto_0

    .line 3859
    :sswitch_2
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsCtrlkeyPressed:Z

    if-ne v0, v1, :cond_0

    .line 3860
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->resetPressItemListArray()V

    goto :goto_0

    .line 3849
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
    const/4 v7, -0x1

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 3869
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectedPosition:I

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3870
    .local v2, "selectedview":Landroid/view/View;
    const/4 v0, 0x0

    .line 3871
    .local v0, "currentview":Landroid/view/View;
    const/4 v1, 0x0

    .line 3872
    .local v1, "isConfirmKey":Z
    const/16 v5, 0x17

    if-eq p1, v5, :cond_0

    const/16 v5, 0x42

    if-eq p1, v5, :cond_0

    const/16 v5, 0xa0

    if-ne p1, v5, :cond_1

    .line 3875
    :cond_0
    const/4 v1, 0x1

    .line 3879
    :cond_1
    if-eqz v1, :cond_4

    .line 3880
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 3960
    :goto_0
    return v4

    .line 3883
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectedPosition:I

    if-ltz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectedPosition:I

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3885
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 3887
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectedPosition:I

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3888
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_3

    .line 3889
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectedPosition:I

    iget-wide v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectedRowId:J

    invoke-virtual {p0, v3, v5, v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 3890
    invoke-virtual {v3, v8}, Landroid/view/View;->setPressed(Z)V

    .line 3892
    :cond_3
    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setPressed(Z)V

    goto :goto_0

    .line 3897
    .end local v3    # "view":Landroid/view/View;
    :cond_4
    sparse-switch p1, :sswitch_data_0

    .line 3960
    :cond_5
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_0

    .line 3903
    :sswitch_0
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsShiftkeyPressed:Z

    if-ne v5, v4, :cond_6

    .line 3904
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOldKeyCode:I

    if-nez v5, :cond_8

    .line 3905
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOldKeyCode:I

    .line 3911
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectedPosition:I

    if-ltz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectedPosition:I

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 3913
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 3915
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCurrentFocusPosition:I

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3917
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsShiftkeyPressed:Z

    if-ne v5, v4, :cond_7

    if-eqz v2, :cond_7

    .line 3918
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCurrentKeyCode:I

    if-nez v4, :cond_9

    .line 3919
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->resetPressItemListArray()V

    .line 3920
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCurrentFocusPosition:I

    iget-wide v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v4, v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->notifyKeyPressState(Landroid/view/View;IJ)Z

    .line 3921
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectedPosition:I

    iget-wide v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectedRowId:J

    invoke-virtual {p0, v2, v4, v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->notifyKeyPressState(Landroid/view/View;IJ)Z

    .line 3924
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCurrentFocusPosition:I

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectedPosition:I

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->addToPressItemListArray(II)V

    .line 3925
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCurrentFocusPosition:I

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPressedPoint:I

    .line 3934
    :cond_7
    :goto_3
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCurrentKeyCode:I

    if-eqz v4, :cond_5

    .line 3935
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCurrentKeyCode:I

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOldKeyCode:I

    goto :goto_1

    .line 3907
    :cond_8
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCurrentKeyCode:I

    goto :goto_2

    .line 3927
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->resetPressItemListArray()V

    .line 3928
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectedPosition:I

    iget-wide v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectedRowId:J

    invoke-virtual {p0, v2, v4, v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->notifyKeyPressState(Landroid/view/View;IJ)Z

    .line 3930
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPressedPoint:I

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectedPosition:I

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->addToPressItemListArray(II)V

    goto :goto_3

    .line 3942
    :sswitch_1
    iput-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsCtrlkeyPressed:Z

    goto :goto_1

    .line 3946
    :sswitch_2
    iput-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsShiftkeyPressed:Z

    .line 3947
    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOldKeyCode:I

    .line 3948
    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCurrentKeyCode:I

    .line 3949
    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPressedPoint:I

    .line 3950
    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSecondPressedPoint:I

    goto :goto_1

    .line 3953
    :sswitch_3
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsCtrlkeyPressed:Z

    if-ne v5, v4, :cond_5

    .line 3954
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->resetPressItemListArray()V

    goto/16 :goto_1

    .line 3897
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
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 2628
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->onLayout(ZIIII)V

    .line 2630
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mInLayout:Z

    .line 2632
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 2633
    .local v0, "childCount":I
    if-eqz p1, :cond_1

    .line 2634
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2635
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 2634
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2637
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->markChildrenDirty()V

    .line 2640
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->layoutChildren()V

    .line 2641
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mInLayout:Z

    .line 2643
    sub-int v2, p4, p2

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOverscrollMax:I

    .line 2646
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    if-eqz v2, :cond_2

    .line 2647
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;->onItemCountChanged(II)V

    .line 2649
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2599
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_0

    .line 2600
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->useDefaultSelector()V

    .line 2602
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    .line 2603
    .local v3, "listPadding":Landroid/graphics/Rect;
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectionLeftPadding:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->left:I

    .line 2604
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectionTopPadding:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingTop()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->top:I

    .line 2605
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectionRightPadding:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->right:I

    .line 2606
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectionBottomPadding:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->bottom:I

    .line 2609
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTranscriptMode:I

    if-ne v7, v5, :cond_1

    .line 2610
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 2611
    .local v0, "childCount":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingRight()I

    move-result v8

    sub-int v4, v7, v8

    .line 2613
    .local v4, "listRight":I
    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsRTL:Z

    if-eqz v7, :cond_2

    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2616
    .local v1, "lastChild":Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    .line 2617
    .local v2, "lastRight":I
    :goto_1
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    add-int/2addr v7, v0

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLastHandledItemCount:I

    if-lt v7, v8, :cond_4

    if-gt v2, v4, :cond_4

    :goto_2
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mForceTranscriptScroll:Z

    .line 2620
    .end local v0    # "childCount":I
    .end local v1    # "lastChild":Landroid/view/View;
    .end local v2    # "lastRight":I
    .end local v4    # "listRight":I
    :cond_1
    return-void

    .line 2614
    .restart local v0    # "childCount":I
    .restart local v4    # "listRight":I
    :cond_2
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "lastChild":Landroid/view/View;
    goto :goto_0

    :cond_3
    move v2, v4

    .line 2616
    goto :goto_1

    .restart local v2    # "lastRight":I
    :cond_4
    move v5, v6

    .line 2617
    goto :goto_2
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 3
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 6002
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 6003
    .local v0, "childCount":I
    if-nez p4, :cond_2

    if-lez v0, :cond_2

    float-to-int v1, p2

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->canScrollList(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6004
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMinimumVelocity:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 6005
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->reportScrollStateChange(I)V

    .line 6006
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    if-nez v1, :cond_0

    .line 6007
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    .line 6009
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6010
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    float-to-int v2, p2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->start(I)V

    .line 6012
    :cond_1
    const/4 v1, 0x1

    .line 6014
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p0, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->dispatchNestedFling(FFZ)Z

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
    const/4 v2, 0x0

    .line 5986
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 5987
    .local v6, "motionIndex":I
    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5988
    .local v7, "motionView":Landroid/view/View;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 5989
    .local v8, "oldLeft":I
    :goto_0
    if-eqz v7, :cond_0

    neg-int v0, p4

    neg-int v4, p4

    invoke-virtual {p0, v0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->trackMotionScroll(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5990
    :cond_0
    move v3, p4

    .line 5991
    .local v3, "myUnconsumed":I
    const/4 v1, 0x0

    .line 5992
    .local v1, "myConsumed":I
    if-eqz v7, :cond_1

    .line 5993
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v1, v0, v8

    .line 5994
    sub-int/2addr v3, v1

    .line 5996
    :cond_1
    const/4 v5, 0x0

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->dispatchNestedScroll(IIII[I)Z

    .line 5998
    .end local v1    # "myConsumed":I
    .end local v3    # "myUnconsumed":I
    :cond_2
    return-void

    .end local v8    # "oldLeft":I
    :cond_3
    move v8, v2

    .line 5988
    goto :goto_0
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 5976
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 5977
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->startNestedScroll(I)Z

    .line 5978
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 5904
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getScrollX()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 5905
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getScrollY()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->onScrollChanged(IIII)V

    .line 5908
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setScrollX(I)V

    .line 5911
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 5912
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 5914
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->awakenScrollBars()Z

    .line 5916
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

    .line 2307
    instance-of v2, p1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;

    if-eqz v2, :cond_4

    move-object v0, p1

    .line 2308
    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;

    .line 2319
    .local v0, "ss":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2320
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDataChanged:Z

    .line 2322
    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->width:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSyncHeight:J

    .line 2324
    iget-wide v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->selectedId:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_6

    .line 2325
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mNeedSync:Z

    .line 2326
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingSync:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;

    .line 2327
    iget-wide v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->selectedId:J

    iput-wide v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSyncRowId:J

    .line 2328
    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->position:I

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSyncPosition:I

    .line 2329
    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->viewLeft:I

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSpecificTop:I

    .line 2330
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSyncMode:I

    .line 2344
    :cond_0
    :goto_1
    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setFilterText(Ljava/lang/String;)V

    .line 2346
    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_1

    .line 2347
    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2350
    :cond_1
    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_2

    .line 2351
    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2354
    :cond_2
    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->checkedItemCount:I

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedItemCount:I

    .line 2356
    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->inActionMode:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMultiChoiceModeCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;

    if-eqz v2, :cond_3

    .line 2358
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMultiChoiceModeCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 2361
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->requestLayout()V

    .line 2362
    .end local v0    # "ss":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;
    :goto_2
    return-void

    .line 2309
    :cond_4
    instance-of v2, p1, Landroid/os/Bundle;

    if-eqz v2, :cond_5

    move-object v1, p1

    .line 2310
    check-cast v1, Landroid/os/Bundle;

    .line 2311
    .local v1, "wrappedSavedState":Landroid/os/Bundle;
    const-class v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 2312
    const-string v2, "com.sec.android.touchwiz.widget.SeslAbsHorizontalListView.SavedState"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;

    .line 2313
    .restart local v0    # "ss":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;
    goto :goto_0

    .line 2315
    .end local v0    # "ss":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;
    .end local v1    # "wrappedSavedState":Landroid/os/Bundle;
    :cond_5
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_2

    .line 2331
    .restart local v0    # "ss":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;
    :cond_6
    iget-wide v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->firstId:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    .line 2332
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setSelectedPositionInt(I)V

    .line 2334
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 2335
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectorPosition:I

    .line 2336
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mNeedSync:Z

    .line 2337
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingSync:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;

    .line 2338
    iget-wide v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->firstId:J

    iput-wide v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSyncRowId:J

    .line 2339
    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->position:I

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSyncPosition:I

    .line 2340
    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->viewLeft:I

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSpecificTop:I

    .line 2341
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSyncMode:I

    goto :goto_1
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 3591
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->onRtlPropertiesChanged(I)V

    .line 3593
    invoke-virtual {p0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsRTL:Z

    .line 3595
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    if-eqz v0, :cond_0

    .line 3598
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 18

    .prologue
    .line 2210
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->dismissPopup()V

    .line 2212
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v11

    .line 2214
    .local v11, "superState":Landroid/os/Parcelable;
    new-instance v10, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;

    invoke-direct {v10, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2216
    .local v10, "ss":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingSync:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;

    if-eqz v15, :cond_0

    .line 2218
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingSync:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;

    iget-wide v0, v15, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->selectedId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v10, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->selectedId:J

    .line 2219
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingSync:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;

    iget-wide v0, v15, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->firstId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v10, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->firstId:J

    .line 2220
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingSync:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;

    iget v15, v15, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->viewLeft:I

    iput v15, v10, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->viewLeft:I

    .line 2221
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingSync:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;

    iget v15, v15, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->position:I

    iput v15, v10, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->position:I

    .line 2222
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingSync:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;

    iget v15, v15, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->width:I

    iput v15, v10, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->width:I

    .line 2223
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingSync:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;

    iget-object v15, v15, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->filter:Ljava/lang/String;

    iput-object v15, v10, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->filter:Ljava/lang/String;

    .line 2224
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingSync:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;

    iget-boolean v15, v15, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->inActionMode:Z

    iput-boolean v15, v10, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->inActionMode:Z

    .line 2225
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingSync:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;

    iget v15, v15, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->checkedItemCount:I

    iput v15, v10, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->checkedItemCount:I

    .line 2226
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingSync:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;

    iget-object v15, v15, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v15, v10, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2227
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingSync:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;

    iget-object v15, v15, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v15, v10, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2300
    .end local v10    # "ss":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;
    :goto_0
    return-object v10

    .line 2231
    .restart local v10    # "ss":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v15

    if-lez v15, :cond_3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    if-lez v15, :cond_3

    const/4 v5, 0x1

    .line 2232
    .local v5, "haveChildren":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getSelectedItemId()J

    move-result-wide v8

    .line 2233
    .local v8, "selectedId":J
    iput-wide v8, v10, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->selectedId:J

    .line 2234
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v15

    iput v15, v10, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->width:I

    .line 2236
    const-wide/16 v16, 0x0

    cmp-long v15, v8, v16

    if-ltz v15, :cond_4

    .line 2238
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectedLeft:I

    iput v15, v10, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->viewLeft:I

    .line 2239
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getSelectedItemPosition()I

    move-result v15

    iput v15, v10, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->position:I

    .line 2240
    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    iput-wide v0, v10, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->firstId:J

    .line 2267
    :goto_2
    const/4 v15, 0x0

    iput-object v15, v10, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->filter:Ljava/lang/String;

    .line 2268
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFiltered:Z

    if-eqz v15, :cond_1

    .line 2269
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    .line 2270
    .local v12, "textFilter":Landroid/widget/EditText;
    if-eqz v12, :cond_1

    .line 2271
    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 2272
    .local v3, "filterText":Landroid/text/Editable;
    if-eqz v3, :cond_1

    .line 2273
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v10, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->filter:Ljava/lang/String;

    .line 2278
    .end local v3    # "filterText":Landroid/text/Editable;
    .end local v12    # "textFilter":Landroid/widget/EditText;
    :cond_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceMode:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v15, :cond_7

    const/4 v15, 0x1

    :goto_3
    iput-boolean v15, v10, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->inActionMode:Z

    .line 2280
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v15, :cond_2

    .line 2281
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v15

    iput-object v15, v10, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2283
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v15, :cond_9

    .line 2284
    new-instance v7, Landroid/util/LongSparseArray;

    invoke-direct {v7}, Landroid/util/LongSparseArray;-><init>()V

    .line 2285
    .local v7, "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v15}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    .line 2286
    .local v2, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    if-ge v6, v2, :cond_8

    .line 2287
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v15, v6}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v15, v6}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1, v15}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2286
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 2231
    .end local v2    # "count":I
    .end local v5    # "haveChildren":Z
    .end local v6    # "i":I
    .end local v7    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v8    # "selectedId":J
    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2242
    .restart local v5    # "haveChildren":Z
    .restart local v8    # "selectedId":J
    :cond_4
    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    if-lez v15, :cond_6

    .line 2252
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 2253
    .local v13, "v":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v15

    iput v15, v10, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->viewLeft:I

    .line 2254
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    .line 2255
    .local v4, "firstPos":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    if-lt v4, v15, :cond_5

    .line 2256
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    add-int/lit8 v4, v15, -0x1

    .line 2258
    :cond_5
    iput v4, v10, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->position:I

    .line 2259
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v15, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v10, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->firstId:J

    goto/16 :goto_2

    .line 2261
    .end local v4    # "firstPos":I
    .end local v13    # "v":Landroid/view/View;
    :cond_6
    const/4 v15, 0x0

    iput v15, v10, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->viewLeft:I

    .line 2262
    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    iput-wide v0, v10, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->firstId:J

    .line 2263
    const/4 v15, 0x0

    iput v15, v10, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->position:I

    goto/16 :goto_2

    .line 2278
    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 2289
    .restart local v2    # "count":I
    .restart local v6    # "i":I
    .restart local v7    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_8
    iput-object v7, v10, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2291
    .end local v2    # "count":I
    .end local v6    # "i":I
    .end local v7    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_9
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedItemCount:I

    iput v15, v10, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;->checkedItemCount:I

    .line 2297
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 2298
    .local v14, "wrappedSavedState":Landroid/os/Bundle;
    const-string v15, "com.sec.android.touchwiz.widget.SeslAbsHorizontalListView.SavedState"

    invoke-virtual {v14, v15, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object v10, v14

    .line 2300
    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 3178
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDataChanged:Z

    .line 3180
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->rememberSyncState()V

    .line 3183
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    if-eqz v0, :cond_1

    .line 3184
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;->onSizeChanged(IIII)V

    .line 3186
    :cond_1
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 5968
    and-int/lit8 v0, p3, 0x1

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

    .line 8115
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8116
    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->createTextFilter(Z)V

    .line 8117
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 8118
    .local v1, "length":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 8119
    .local v2, "showing":Z
    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 8121
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->showPopup()V

    .line 8122
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFiltered:Z

    .line 8128
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    .line 8129
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 8131
    .local v0, "f":Landroid/widget/Filter;
    if-eqz v0, :cond_3

    .line 8132
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 8139
    .end local v0    # "f":Landroid/widget/Filter;
    .end local v1    # "length":I
    .end local v2    # "showing":Z
    :cond_1
    return-void

    .line 8123
    .restart local v1    # "length":I
    .restart local v2    # "showing":Z
    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 8125
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->dismissPopup()V

    .line 8126
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFiltered:Z

    goto :goto_0

    .line 8134
    .restart local v0    # "f":Landroid/widget/Filter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 5353
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isEnabled()Z

    move-result v11

    if-nez v11, :cond_2

    .line 5356
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isClickable()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isLongClickable()Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    move v9, v10

    .line 5455
    :cond_1
    :goto_0
    return v9

    .line 5359
    :cond_2
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;

    if-eqz v11, :cond_3

    .line 5360
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;

    invoke-virtual {v11}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;->stop()V

    .line 5363
    :cond_3
    iget-boolean v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsDetaching:Z

    if-nez v11, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isAttachedToWindow()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 5371
    const/4 v11, 0x2

    invoke-virtual {p0, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->startNestedScroll(I)Z

    .line 5373
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    if-eqz v11, :cond_4

    .line 5374
    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    invoke-virtual {v11, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 5375
    .local v4, "intercepted":Z
    if-eqz v4, :cond_4

    move v9, v10

    .line 5376
    goto :goto_0

    .line 5380
    .end local v4    # "intercepted":Z
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->initVelocityTrackerIfNotExists()V

    .line 5381
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 5383
    .local v6, "vtev":Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 5384
    .local v0, "actionMasked":I
    if-nez v0, :cond_5

    .line 5385
    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mNestedXOffset:I

    .line 5387
    :cond_5
    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mNestedXOffset:I

    int-to-float v11, v11

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 5388
    packed-switch v0, :pswitch_data_0

    .line 5451
    :cond_6
    :goto_1
    :pswitch_0
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_7

    .line 5452
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, v6}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5454
    :cond_7
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    move v9, v10

    .line 5455
    goto :goto_0

    .line 5390
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->onTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 5395
    :pswitch_2
    invoke-direct {p0, p1, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 5400
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->onTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 5405
    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->onTouchCancel()V

    goto :goto_1

    .line 5410
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 5411
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionX:I

    .line 5412
    .local v7, "x":I
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionY:I

    .line 5413
    .local v8, "y":I
    invoke-virtual {p0, v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->pointToPosition(II)I

    move-result v5

    .line 5414
    .local v5, "motionPosition":I
    if-ltz v5, :cond_8

    .line 5416
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5417
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v9

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionViewOriginalLeft:I

    .line 5418
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionPosition:I

    .line 5419
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v9

    if-nez v9, :cond_6

    .line 5420
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->layoutChildren()V

    goto :goto_1

    .line 5423
    .end local v1    # "child":Landroid/view/View;
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->layoutChildren()V

    goto :goto_1

    .line 5431
    .end local v5    # "motionPosition":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 5432
    .local v3, "index":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 5433
    .local v2, "id":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    float-to-int v7, v11

    .line 5434
    .restart local v7    # "x":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    float-to-int v8, v11

    .line 5435
    .restart local v8    # "y":I
    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionCorrection:I

    .line 5436
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mActivePointerId:I

    .line 5437
    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionX:I

    .line 5438
    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionY:I

    .line 5439
    invoke-virtual {p0, v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->pointToPosition(II)I

    move-result v5

    .line 5440
    .restart local v5    # "motionPosition":I
    if-ltz v5, :cond_9

    .line 5442
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5443
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v9

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionViewOriginalLeft:I

    .line 5444
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionPosition:I

    .line 5446
    .end local v1    # "child":Landroid/view/View;
    :cond_9
    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLastX:I

    goto/16 :goto_1

    .line 5388
    nop

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
    .line 4329
    if-eqz p1, :cond_2

    .line 4331
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->hideSelector()V

    .line 4335
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 4338
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->layoutChildren()V

    .line 4340
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->updateSelectorState()V

    .line 4362
    :cond_1
    :goto_0
    return-void

    .line 4342
    :cond_2
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    .line 4343
    .local v0, "touchMode":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 4344
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 4345
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->endFling()V

    .line 4347
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;

    if-eqz v1, :cond_5

    .line 4348
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;->stop()V

    .line 4351
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getScrollX()I

    move-result v1

    if-eqz v1, :cond_1

    .line 4352
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setScrollX(I)V

    .line 4354
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_6

    .line 4355
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 4357
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->finishGlows()V

    .line 4358
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->invalidate()V

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 9711
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 9712
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverPosition:I

    .line 9714
    if-nez p2, :cond_0

    .line 9718
    :goto_0
    return-void

    .line 9716
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->releaseAllBoosters()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3519
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->onWindowFocusChanged(Z)V

    .line 3524
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHasWindowFocusForMotion:Z

    .line 3526
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    .line 3528
    .local v0, "touchMode":I
    :goto_0
    if-nez p1, :cond_6

    .line 3529
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 3530
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    if-eqz v3, :cond_1

    .line 3531
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3534
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->endFling()V

    .line 3535
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;

    if-eqz v3, :cond_0

    .line 3536
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;->stop()V

    .line 3538
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getScrollY()I

    move-result v3

    if-eqz v3, :cond_1

    .line 3541
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setScrollY(I)V

    .line 3544
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->finishGlows()V

    .line 3545
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->invalidate()V

    .line 3549
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->dismissPopup()V

    .line 3551
    if-ne v0, v2, :cond_2

    .line 3553
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectedPosition:I

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mResurrectToPosition:I

    .line 3557
    :cond_2
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCstate:I

    if-eqz v2, :cond_3

    .line 3558
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCstate:I

    .line 3582
    :cond_3
    :goto_1
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLastTouchMode:I

    .line 3584
    if-nez p1, :cond_4

    .line 3585
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->releaseAllBoosters()V

    .line 3587
    :cond_4
    return-void

    .end local v0    # "touchMode":I
    :cond_5
    move v0, v2

    .line 3526
    goto :goto_0

    .line 3561
    .restart local v0    # "touchMode":I
    :cond_6
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFiltered:Z

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPopupHidden:Z

    if-nez v3, :cond_7

    .line 3563
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->showPopup()V

    .line 3567
    :cond_7
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLastTouchMode:I

    if-eq v0, v3, :cond_3

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLastTouchMode:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 3569
    if-ne v0, v2, :cond_8

    .line 3571
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->resurrectSelection()Z

    goto :goto_1

    .line 3575
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->hideSelector()V

    .line 3576
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLayoutMode:I

    .line 3577
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->layoutChildren()V

    goto :goto_1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0xc8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1958
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1977
    :goto_0
    return v1

    .line 1961
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v1, v2

    .line 1977
    goto :goto_0

    .line 1963
    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 1964
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v3

    .line 1965
    .local v0, "viewportWidth":I
    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->smoothScrollBy(II)V

    goto :goto_0

    .end local v0    # "viewportWidth":I
    :cond_1
    move v1, v2

    .line 1968
    goto :goto_0

    .line 1970
    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    if-lez v3, :cond_2

    .line 1971
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v3

    .line 1972
    .restart local v0    # "viewportWidth":I
    neg-int v2, v0

    invoke-virtual {p0, v2, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->smoothScrollBy(II)V

    goto :goto_0

    .end local v0    # "viewportWidth":I
    :cond_2
    move v1, v2

    .line 1975
    goto :goto_0

    .line 1961
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1450
    const/4 v8, 0x0

    .line 1451
    .local v8, "handled":Z
    const/4 v9, 0x0

    .line 1452
    .local v9, "handledNotifykeyPress":Z
    const/4 v7, 0x1

    .line 1454
    .local v7, "dispatchItemClick":Z
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceMode:I

    if-eqz v3, :cond_4

    .line 1455
    const/4 v8, 0x1

    .line 1456
    const/4 v0, 0x0

    .line 1458
    .local v0, "checkedStateChanged":Z
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_9

    .line 1460
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_6

    move v6, v1

    .line 1461
    .local v6, "checked":Z
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1462
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1463
    if-eqz v6, :cond_7

    .line 1464
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1469
    :cond_1
    :goto_1
    if-eqz v6, :cond_8

    .line 1470
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedItemCount:I

    .line 1474
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    .line 1475
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMultiChoiceModeCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1477
    const/4 v7, 0x0

    .line 1479
    :cond_2
    const/4 v0, 0x1

    .line 1496
    .end local v6    # "checked":Z
    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    .line 1497
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->updateOnScreenCheckedViews()V

    .line 1501
    .end local v0    # "checkedStateChanged":Z
    :cond_4
    if-eqz v7, :cond_5

    .line 1502
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    or-int/2addr v8, v1

    .line 1505
    :cond_5
    return v8

    .restart local v0    # "checkedStateChanged":Z
    :cond_6
    move v6, v2

    .line 1460
    goto :goto_0

    .line 1466
    .restart local v6    # "checked":Z
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 1472
    :cond_8
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1480
    .end local v6    # "checked":Z
    :cond_9
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceMode:I

    if-ne v3, v1, :cond_3

    .line 1481
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_c

    move v6, v1

    .line 1482
    .restart local v6    # "checked":Z
    :goto_4
    if-eqz v6, :cond_d

    .line 1483
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1484
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1485
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1486
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1487
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v5, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1489
    :cond_a
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedItemCount:I

    .line 1493
    :cond_b
    :goto_5
    const/4 v0, 0x1

    goto :goto_3

    .end local v6    # "checked":Z
    :cond_c
    move v6, v2

    .line 1481
    goto :goto_4

    .line 1490
    .restart local v6    # "checked":Z
    :cond_d
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1491
    :cond_e
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedItemCount:I

    goto :goto_5
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .prologue
    const/4 v1, 0x3

    const/4 v6, 0x1

    .line 3769
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceMode:I

    if-ne v0, v1, :cond_2

    .line 3770
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMultiChoiceModeCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;

    .line 3771
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    .line 3773
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    .line 3774
    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsDragBlockEnabled:Z

    .line 3776
    :cond_0
    invoke-virtual {p0, p2, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setItemChecked(IZ)V

    .line 3778
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslHapticFeedbackConstantsReflector;->getField_VIBE_COMMON_A()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->performHapticFeedback(I)Z

    .line 3798
    :cond_1
    :goto_0
    return v6

    .line 3783
    :cond_2
    const/4 v6, 0x0

    .line 3784
    .local v6, "handled":Z
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOnItemLongClickListener:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_3

    .line 3785
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOnItemLongClickListener:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 3788
    :cond_3
    if-nez v6, :cond_4

    .line 3789
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3790
    invoke-super {p0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 3792
    :cond_4
    if-eqz v6, :cond_1

    .line 3793
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getSeslEnableVibrationAtLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3795
    invoke-static {}, Lcom/samsung/android/support/sesl/core/view/SeslHapticFeedbackConstantsReflector;->getField_VIBE_COMMON_A()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->performHapticFeedback(I)Z

    goto :goto_0
.end method

.method public pointToColId(II)J
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 4011
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->pointToPosition(II)I

    move-result v0

    .line 4012
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 4013
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 4015
    :goto_0
    return-wide v2

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x0

    .line 3978
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3979
    .local v4, "frame":Landroid/graphics/Rect;
    if-nez v4, :cond_0

    .line 3980
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3981
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 3983
    :cond_0
    instance-of v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;

    if-eqz v6, :cond_3

    move-object v6, p0

    check-cast v6, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;

    iget v2, v6, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDividerHeight:I

    .line 3984
    .local v2, "dividerHeight":I
    :goto_0
    if-lez v2, :cond_1

    move-object v6, p0

    check-cast v6, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;

    iget-object v6, v6, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    const/4 v3, 0x1

    .line 3986
    .local v3, "drawDividers":Z
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v1

    .line 3987
    .local v1, "count":I
    add-int/lit8 v5, v1, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_5

    .line 3988
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3989
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    .line 3990
    invoke-virtual {v0, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 3991
    if-eqz v3, :cond_2

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 3993
    :cond_2
    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3994
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    add-int/2addr v6, v5

    .line 3998
    .end local v0    # "child":Landroid/view/View;
    :goto_2
    return v6

    .end local v1    # "count":I
    .end local v2    # "dividerHeight":I
    .end local v3    # "drawDividers":Z
    .end local v5    # "i":I
    :cond_3
    move v2, v3

    .line 3983
    goto :goto_0

    .line 3987
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "count":I
    .restart local v2    # "dividerHeight":I
    .restart local v3    # "drawDividers":Z
    .restart local v5    # "i":I
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 3998
    .end local v0    # "child":Landroid/view/View;
    :cond_5
    const/4 v6, -0x1

    goto :goto_2
.end method

.method positionSelector(ILandroid/view/View;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    .line 3036
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 3037
    return-void
.end method

.method positionSelectorLikeFocus(ILandroid/view/View;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    .line 3025
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectorPosition:I

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 3026
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3027
    .local v6, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    .line 3028
    .local v4, "x":F
    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    .line 3029
    .local v5, "y":F
    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 3033
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "bounds":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 3031
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->positionSelector(ILandroid/view/View;)V

    goto :goto_0
.end method

.method positionSelectorLikeTouch(ILandroid/view/View;FF)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 3014
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->positionSelectorLikeFocus(ILandroid/view/View;)V

    .line 3016
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 3017
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 3019
    :cond_0
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
    .line 8266
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v1

    .line 8267
    .local v1, "childCount":I
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;

    invoke-static {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->access$4000(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;)Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecyclerListener;

    move-result-object v3

    .line 8270
    .local v3, "listener":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8271
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8272
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;

    .line 8274
    .local v4, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;

    iget v6, v4, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8275
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8276
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 8277
    if-eqz v3, :cond_0

    .line 8279
    invoke-interface {v3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 8270
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8283
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$LayoutParams;
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;

    invoke-virtual {v5, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 8284
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->removeAllViewsInLayout()V

    .line 8285
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    .prologue
    .line 7246
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectedPosition:I

    .line 7247
    .local v0, "position":I
    if-gez v0, :cond_0

    .line 7248
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mResurrectToPosition:I

    .line 7250
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7251
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 7252
    return v0
.end method

.method public registerDoubleTapMotion()V
    .locals 1

    .prologue
    .line 1013
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->registerMotionListener()V

    .line 1014
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setMotionEvent(Z)V

    .line 1015
    return-void
.end method

.method public registerTiltMotion()V
    .locals 0

    .prologue
    .line 1049
    return-void
.end method

.method rememberSyncState()V
    .locals 1

    .prologue
    .line 10455
    invoke-virtual {p0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->rememberSyncStateHorizontal(Z)V

    .line 10456
    return-void
.end method

.method removePendingCallbacks()V
    .locals 2

    .prologue
    .line 5841
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 5842
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 5843
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingCheckForTap:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForTap;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5844
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingCheckForLongPress:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$CheckForLongPress;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5846
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    .line 5847
    return-void
.end method

.method reportScrollStateChange(I)V
    .locals 4
    .param p1, "newState"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 6251
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLastScrollState:I

    if-eq p1, v0, :cond_4

    .line 6253
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCstate:I

    if-ne v0, v2, :cond_1

    .line 6255
    :cond_0
    invoke-static {v1}, Lcom/samsung/android/support/sesl/core/os/SeslDVFSHelperReflector;->onScrollEvent(Z)V

    .line 6256
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDVFSLockAcquired:Z

    .line 6258
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCstate:I

    if-eq v0, v2, :cond_3

    .line 6259
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLastScrollState:I

    if-nez v0, :cond_2

    .line 6262
    invoke-static {v3}, Lcom/samsung/android/support/sesl/core/os/SeslDVFSHelperReflector;->onScrollEvent(Z)V

    .line 6263
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDVFSLockAcquired:Z

    .line 6265
    :cond_2
    if-nez p1, :cond_3

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLastScrollState:I

    if-eqz v0, :cond_3

    .line 6267
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_3

    .line 6269
    invoke-static {v1}, Lcom/samsung/android/support/sesl/core/os/SeslDVFSHelperReflector;->onScrollEvent(Z)V

    .line 6270
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDVFSLockAcquired:Z

    .line 6275
    :cond_3
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLastScrollState:I

    .line 6276
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$OnScrollListener;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mQCstate:I

    if-eq v0, v2, :cond_4

    .line 6278
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$OnScrollListener;->onScrollStateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;I)V

    .line 6281
    :cond_4
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 6091
    if-eqz p1, :cond_0

    .line 6092
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->recycleVelocityTracker()V

    .line 6094
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->requestDisallowInterceptTouchEvent(Z)V

    .line 6095
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2425
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 2426
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->requestLayout()V

    .line 2428
    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 2104
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2105
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->resetList()V

    .line 2106
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->requestLayout()V

    .line 2107
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->invalidate()V

    .line 2109
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 2434
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->removeAllViewsInLayout()V

    .line 2435
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    .line 2437
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDataChanged:Z

    .line 2438
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 2439
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mNeedSync:Z

    .line 2440
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPendingSync:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SavedState;

    .line 2441
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOldSelectedPosition:I

    .line 2442
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOldSelectedRowId:J

    .line 2443
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setSelectedPositionInt(I)V

    .line 2444
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 2445
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectedLeft:I

    .line 2446
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectorPosition:I

    .line 2447
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2448
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->invalidate()V

    .line 2449
    return-void
.end method

.method public resetPressItemListArray()V
    .locals 2

    .prologue
    .line 10224
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_1

    .line 10234
    :cond_0
    :goto_0
    return-void

    .line 10227
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 10229
    .local v0, "checkCount":I
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPressItemListArray:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 10232
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPressItemListArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 10233
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->invalidate()V

    goto :goto_0
.end method

.method resurrectSelection()Z
    .locals 19

    .prologue
    .line 7314
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v2

    .line 7316
    .local v2, "childCount":I
    if-gtz v2, :cond_0

    .line 7317
    const/16 v17, 0x0

    .line 7419
    :goto_0
    return v17

    .line 7320
    :cond_0
    const/4 v12, 0x0

    .line 7321
    .local v12, "selectedLeft":I
    const/4 v14, 0x0

    .line 7323
    .local v14, "selectedRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 7324
    .local v3, "childrenLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getRight()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getLeft()I

    move-result v18

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 7325
    .local v4, "childrenRight":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    .line 7326
    .local v5, "firstPosition":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mResurrectToPosition:I

    .line 7327
    .local v15, "toPosition":I
    const/4 v10, 0x1

    .line 7329
    .local v10, "rightSide":Z
    if-lt v15, v5, :cond_4

    add-int v17, v5, v2

    move/from16 v0, v17

    if-ge v15, v0, :cond_4

    .line 7330
    move v13, v15

    .line 7332
    .local v13, "selectedPos":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v13, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 7333
    .local v11, "selected":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 7334
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v14

    .line 7337
    if-ge v12, v3, :cond_3

    .line 7338
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v17

    add-int v12, v3, v17

    .line 7399
    .end local v11    # "selected":Landroid/view/View;
    :cond_1
    :goto_1
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mResurrectToPosition:I

    .line 7400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 7402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;->stop()V

    .line 7404
    :cond_2
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    .line 7405
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->clearScrollingCache()V

    .line 7406
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsRTL:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSpecificTop:I

    .line 7408
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result v13

    .line 7409
    if-lt v13, v5, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v13, v0, :cond_d

    .line 7410
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLayoutMode:I

    .line 7411
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->updateSelectorState()V

    .line 7412
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setSelectionInt(I)V

    .line 7413
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->invokeOnItemScrollListener()V

    .line 7417
    :goto_3
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->reportScrollStateChange(I)V

    .line 7419
    if-ltz v13, :cond_e

    const/16 v17, 0x1

    goto/16 :goto_0

    .line 7339
    .restart local v11    # "selected":Landroid/view/View;
    :cond_3
    if-le v14, v4, :cond_1

    .line 7340
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    sub-int v17, v4, v17

    .line 7341
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v18

    sub-int v12, v17, v18

    goto :goto_1

    .line 7344
    .end local v11    # "selected":Landroid/view/View;
    .end local v13    # "selectedPos":I
    :cond_4
    if-ge v15, v5, :cond_8

    .line 7346
    move v13, v5

    .line 7347
    .restart local v13    # "selectedPos":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    if-ge v6, v2, :cond_1

    .line 7348
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 7349
    .local v16, "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 7350
    .local v8, "left":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v9

    .line 7352
    .local v9, "right":I
    if-nez v6, :cond_6

    .line 7354
    move v12, v8

    .line 7355
    move v14, v9

    .line 7357
    if-gtz v5, :cond_5

    if-ge v8, v3, :cond_6

    .line 7360
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v17

    add-int v3, v3, v17

    .line 7363
    :cond_6
    if-lt v8, v3, :cond_7

    .line 7365
    add-int v13, v5, v6

    .line 7366
    move v12, v8

    .line 7367
    move v14, v9

    .line 7368
    goto/16 :goto_1

    .line 7347
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 7372
    .end local v6    # "i":I
    .end local v8    # "left":I
    .end local v9    # "right":I
    .end local v13    # "selectedPos":I
    .end local v16    # "v":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    .line 7373
    .local v7, "itemCount":I
    const/4 v10, 0x0

    .line 7374
    add-int v17, v5, v2

    add-int/lit8 v13, v17, -0x1

    .line 7376
    .restart local v13    # "selectedPos":I
    add-int/lit8 v6, v2, -0x1

    .restart local v6    # "i":I
    :goto_5
    if-ltz v6, :cond_1

    .line 7377
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 7378
    .restart local v16    # "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 7379
    .restart local v8    # "left":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v9

    .line 7381
    .restart local v9    # "right":I
    add-int/lit8 v17, v2, -0x1

    move/from16 v0, v17

    if-ne v6, v0, :cond_a

    .line 7382
    move v12, v8

    .line 7383
    move v14, v9

    .line 7384
    add-int v17, v5, v2

    move/from16 v0, v17

    if-lt v0, v7, :cond_9

    if-le v9, v4, :cond_a

    .line 7385
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    .line 7389
    :cond_a
    if-gt v9, v4, :cond_b

    .line 7390
    add-int v13, v5, v6

    .line 7391
    move v12, v8

    .line 7392
    move v14, v9

    .line 7393
    goto/16 :goto_1

    .line 7376
    :cond_b
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 7407
    .end local v6    # "i":I
    .end local v7    # "itemCount":I
    .end local v8    # "left":I
    .end local v9    # "right":I
    .end local v16    # "v":Landroid/view/View;
    :cond_c
    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSpecificTop:I

    goto/16 :goto_2

    .line 7415
    :cond_d
    const/4 v13, -0x1

    goto/16 :goto_3

    .line 7419
    :cond_e
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method resurrectSelectionIfNeeded()Z
    .locals 1

    .prologue
    .line 7294
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7295
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->updateSelectorState()V

    .line 7296
    const/4 v0, 0x1

    .line 7298
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollListBy(I)V
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 6877
    neg-int v0, p1

    neg-int v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->trackMotionScroll(II)Z

    .line 6878
    return-void
.end method

.method public semSetSelection(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 6722
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 6729
    :goto_0
    return-void

    .line 6725
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsRTL:Z

    if-eqz v0, :cond_1

    .line 6726
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v1

    sub-int p1, v0, v1

    .line 6728
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setSelection(I)V

    goto :goto_0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 3
    .param p1, "eventType"    # I

    .prologue
    .line 1905
    const/16 v2, 0x1000

    if-ne p1, v2, :cond_1

    .line 1906
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1907
    .local v0, "firstVisiblePosition":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getLastVisiblePosition()I

    move-result v1

    .line 1908
    .local v1, "lastVisiblePosition":I
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLastAccessibilityScrollEventFromIndex:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLastAccessibilityScrollEventToIndex:I

    if-ne v2, v1, :cond_0

    .line 1917
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "lastVisiblePosition":I
    :goto_0
    return-void

    .line 1912
    .restart local v0    # "firstVisiblePosition":I
    .restart local v1    # "lastVisiblePosition":I
    :cond_0
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLastAccessibilityScrollEventFromIndex:I

    .line 1913
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLastAccessibilityScrollEventToIndex:I

    .line 1916
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "lastVisiblePosition":I
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v11, 0x3c

    const/16 v10, 0x3b

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 7746
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->acceptFilter()Z

    move-result v6

    if-nez v6, :cond_1

    move v2, v5

    .line 7821
    :cond_0
    :goto_0
    return v2

    .line 7750
    :cond_1
    const/4 v2, 0x0

    .line 7751
    .local v2, "handled":Z
    const/4 v3, 0x1

    .line 7752
    .local v3, "okToSend":Z
    sparse-switch p1, :sswitch_data_0

    .line 7784
    :goto_1
    if-eqz v3, :cond_0

    .line 7785
    invoke-direct {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->createTextFilter(Z)V

    .line 7787
    move-object v1, p3

    .line 7788
    .local v1, "forwardEvent":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 7789
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-static {p3, v6, v7, v5}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 7792
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 7793
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 7795
    :pswitch_0
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 7796
    if-eq p1, v10, :cond_3

    if-ne p1, v11, :cond_7

    .line 7797
    :cond_3
    iput-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsShiftkeyPressed:Z

    goto :goto_0

    .line 7759
    .end local v0    # "action":I
    .end local v1    # "forwardEvent":Landroid/view/KeyEvent;
    :sswitch_0
    const/4 v3, 0x0

    .line 7760
    goto :goto_1

    .line 7762
    :sswitch_1
    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFiltered:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 7763
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_6

    .line 7764
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_6

    .line 7765
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    .line 7766
    .local v4, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v4, :cond_4

    .line 7767
    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 7769
    :cond_4
    const/4 v2, 0x1

    .line 7776
    .end local v4    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_5
    :goto_2
    const/4 v3, 0x0

    .line 7777
    goto :goto_1

    .line 7770
    :cond_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-ne v6, v8, :cond_5

    .line 7771
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_5

    .line 7772
    const/4 v2, 0x1

    .line 7773
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 7780
    :sswitch_2
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFiltered:Z

    goto :goto_1

    .line 7798
    .restart local v0    # "action":I
    .restart local v1    # "forwardEvent":Landroid/view/KeyEvent;
    :cond_7
    const/16 v5, 0x71

    if-eq p1, v5, :cond_8

    const/16 v5, 0x72

    if-ne p1, v5, :cond_0

    .line 7799
    :cond_8
    iput-boolean v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsCtrlkeyPressed:Z

    goto/16 :goto_0

    .line 7804
    :pswitch_1
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v6, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 7805
    if-eq p1, v10, :cond_9

    if-ne p1, v11, :cond_a

    .line 7806
    :cond_9
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsShiftkeyPressed:Z

    .line 7807
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOldKeyCode:I

    .line 7808
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCurrentKeyCode:I

    .line 7809
    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPressedPoint:I

    .line 7810
    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSecondPressedPoint:I

    goto/16 :goto_0

    .line 7811
    :cond_a
    const/16 v6, 0x71

    if-eq p1, v6, :cond_b

    const/16 v6, 0x72

    if-ne p1, v6, :cond_0

    .line 7812
    :cond_b
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsCtrlkeyPressed:Z

    goto/16 :goto_0

    .line 7817
    :pswitch_2
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 7752
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 7793
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 122
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 1237
    if-eqz p1, :cond_0

    .line 1238
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapterHasStableIds:Z

    .line 1239
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapterHasStableIds:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 1241
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1245
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    .line 1246
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1249
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_2

    .line 1250
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1254
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsMultiFocusEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_3

    .line 1255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPressItemListArray:Ljava/util/ArrayList;

    .line 1256
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->resetPressItemListArray()V

    .line 1257
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOldAdapterItemCount:I

    .line 1260
    :cond_3
    return-void
.end method

.method public setAlwaysDisableHoverHighlight(Z)V
    .locals 0
    .param p1, "disabled"    # Z

    .prologue
    .line 5859
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAlwaysDisableHoverHighlight:Z

    .line 5860
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 8237
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCacheColorHint:I

    if-eq p1, v2, :cond_1

    .line 8238
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCacheColorHint:I

    .line 8239
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 8240
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 8241
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 8240
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8243
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->setCacheColorHint(I)V

    .line 8245
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 5
    .param p1, "choiceMode"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1571
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceMode:I

    .line 1572
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1573
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1574
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1576
    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceMode:I

    if-eqz v0, :cond_3

    .line 1577
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 1578
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v3}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1580
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1581
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v3}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1584
    :cond_2
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceMode:I

    if-ne v0, v4, :cond_3

    .line 1585
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->clearChoices()V

    .line 1586
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setLongClickable(Z)V

    .line 1590
    :cond_3
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 1591
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsDragBlockEnabled:Z

    .line 1598
    :cond_4
    :goto_0
    return-void

    .line 1592
    :cond_5
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceMode:I

    if-ne v0, v4, :cond_6

    .line 1593
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsDragBlockEnabled:Z

    goto :goto_0

    .line 1594
    :cond_6
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceMode:I

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceMode:I

    if-ne v0, v2, :cond_4

    .line 1595
    :cond_7
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsDragBlockEnabled:Z

    goto :goto_0
.end method

.method public setCurrentOrientationModeForTiltMotion(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 1042
    return-void
.end method

.method public setCustomMultiChoiceMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1641
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCustomMultiChoiceMode:Z

    .line 1642
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .param p1, "onTop"    # Z

    .prologue
    .line 3262
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDrawSelectorOnTop:Z

    .line 3263
    return-void
.end method

.method public setEnableDragBlock(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 10157
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsDragBlockEnabled:Z

    .line 10158
    return-void
.end method

.method public setEnableHoverDrawable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1103
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoveringEnabled:Z

    .line 1104
    return-void
.end method

.method public setEnableMultiFocus(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 10150
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsMultiFocusEnabled:Z

    .line 10151
    return-void
.end method

.method public setEnableOnclickInMultiSelectMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 10171
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsOnClickEnabled:Z

    .line 10172
    return-void
.end method

.method public setEnablePaddingInHoverScroll(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 4416
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsEnabledPaddingInHoverScroll:Z

    .line 4417
    return-void
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 1749
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScrollAlwaysVisible:Z

    if-eq v0, p1, :cond_1

    .line 1750
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScrollEnabled:Z

    if-nez v0, :cond_0

    .line 1751
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setFastScrollEnabled(Z)V

    .line 1754
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScrollAlwaysVisible:Z

    .line 1756
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1757
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    .line 1767
    :cond_1
    :goto_0
    return-void

    .line 1759
    :cond_2
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$2;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1688
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1689
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScrollEnabled:Z

    .line 1691
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1692
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setFastScrollerEnabledUiThread(Z)V

    .line 1702
    :cond_0
    :goto_0
    return-void

    .line 1694
    :cond_1
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFastScrollStyle(I)V
    .locals 1
    .param p1, "styleResId"    # I

    .prologue
    .line 1727
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    if-nez v0, :cond_0

    .line 1728
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScrollStyle:I

    .line 1732
    :goto_0
    return-void

    .line 1730
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;->setStyle(I)V

    goto :goto_0
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .param p1, "filterText"    # Ljava/lang/String;

    .prologue
    .line 2377
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2378
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->createTextFilter(Z)V

    .line 2381
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2382
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 2383
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    .line 2385
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 2386
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 2387
    .local v0, "f":Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 2391
    .end local v0    # "f":Landroid/widget/Filter;
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFiltered:Z

    .line 2392
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDataSetObserver:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AdapterDataSetObserver;->clearSavedState()V

    .line 2395
    :cond_1
    return-void
.end method

.method public setForcedClick(Z)V
    .locals 0
    .param p1, "force"    # Z

    .prologue
    .line 3659
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mForcedClick:Z

    .line 3660
    return-void
.end method

.method public setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    .line 6550
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 6551
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    .line 6553
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->access$2000(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;)Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslOverScroller;->setFriction(F)V

    .line 6554
    return-void
.end method

.method public setHorizontalScrollbarPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    if-eqz v0, :cond_0

    .line 1823
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;->setScrollbarPosition(I)V

    .line 1825
    :cond_0
    return-void
.end method

.method public setHoverScrollDelay(I)V
    .locals 0
    .param p1, "hoverdelay"    # I

    .prologue
    .line 4409
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->HOVERSCROLL_DELAY:I

    .line 4410
    return-void
.end method

.method public setHoverScrollMode(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 4385
    if-eqz p1, :cond_0

    .line 4386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollEnable:Z

    .line 4390
    :goto_0
    return-void

    .line 4388
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mHoverScrollEnable:Z

    goto :goto_0
.end method

.method public setHoverScrollSpeed(I)V
    .locals 1
    .param p1, "hoverspeed"    # I

    .prologue
    .line 4399
    int-to-float v0, p1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->HOVERSCROLL_SPEED:F

    .line 4400
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

    .line 1377
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceMode:I

    if-nez v2, :cond_1

    .line 1446
    :cond_0
    :goto_0
    return-void

    .line 1382
    :cond_1
    if-eqz p2, :cond_4

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceMode:I

    if-ne v2, v6, :cond_4

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v2, :cond_4

    .line 1383
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMultiChoiceModeCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMultiChoiceModeCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;

    .line 1384
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1385
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "SeslAbsHorizontalListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1389
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMultiChoiceModeCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1393
    :cond_4
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceMode:I

    if-ne v2, v6, :cond_c

    .line 1394
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    .line 1395
    .local v7, "oldValue":Z
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1396
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1397
    if-eqz p2, :cond_9

    .line 1398
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v10, v11, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1403
    :cond_6
    :goto_1
    if-eq v7, p2, :cond_a

    move v0, v9

    .line 1404
    .local v0, "itemCheckChanged":Z
    :goto_2
    if-eqz v0, :cond_7

    .line 1405
    if-eqz p2, :cond_b

    .line 1406
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedItemCount:I

    .line 1411
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_8

    .line 1412
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1413
    .local v4, "id":J
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMultiChoiceModeCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1441
    .end local v4    # "id":J
    .end local v7    # "oldValue":Z
    :cond_8
    :goto_4
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mInLayout:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mBlockLayoutRequests:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 1442
    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDataChanged:Z

    .line 1443
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->rememberSyncState()V

    .line 1444
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->requestLayout()V

    goto/16 :goto_0

    .line 1400
    .end local v0    # "itemCheckChanged":Z
    .restart local v7    # "oldValue":Z
    :cond_9
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    :cond_a
    move v0, v1

    .line 1403
    goto :goto_2

    .line 1408
    .restart local v0    # "itemCheckChanged":Z
    :cond_b
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedItemCount:I

    goto :goto_3

    .line 1417
    .end local v0    # "itemCheckChanged":Z
    .end local v7    # "oldValue":Z
    :cond_c
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_10

    move v8, v9

    .line 1420
    .local v8, "updateIds":Z
    :goto_5
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isItemChecked(I)Z

    move-result v2

    if-eq v2, p2, :cond_11

    move v0, v9

    .line 1421
    .restart local v0    # "itemCheckChanged":Z
    :goto_6
    if-nez p2, :cond_d

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1422
    :cond_d
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1423
    if-eqz v8, :cond_e

    .line 1424
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1429
    :cond_e
    if-eqz p2, :cond_12

    .line 1430
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1431
    if-eqz v8, :cond_f

    .line 1432
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1434
    :cond_f
    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedItemCount:I

    goto :goto_4

    .end local v0    # "itemCheckChanged":Z
    .end local v8    # "updateIds":Z
    :cond_10
    move v8, v1

    .line 1417
    goto :goto_5

    .restart local v8    # "updateIds":Z
    :cond_11
    move v0, v1

    .line 1420
    goto :goto_6

    .line 1435
    .restart local v0    # "itemCheckChanged":Z
    :cond_12
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1436
    :cond_13
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mCheckedItemCount:I

    goto/16 :goto_4
.end method

.method public setMotionEvent(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1032
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionEnable:Z

    .line 1033
    return-void
.end method

.method public setMultiChoiceModeListener(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeListener;

    .prologue
    .line 1610
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMultiChoiceModeCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 1611
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMultiChoiceModeCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;

    .line 1613
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMultiChoiceModeCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;->setWrapped(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeListener;)V

    .line 1614
    return-void
.end method

.method public setMultiFocusListItem(II)V
    .locals 1
    .param p1, "startitem"    # I
    .param p2, "enditem"    # I

    .prologue
    .line 10241
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPressItemListArray:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 10246
    :goto_0
    return-void

    .line 10244
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->resetPressItemListArray()V

    .line 10245
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->addToPressItemListArray(II)V

    goto :goto_0
.end method

.method public setOnScrollListener(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$OnScrollListener;

    .prologue
    .line 1883
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$OnScrollListener;

    .line 1884
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->invokeOnItemScrollListener()V

    .line 1885
    return-void
.end method

.method public setOverScrollEffectPadding(II)V
    .locals 0
    .param p1, "topPadding"    # I
    .param p2, "bottomPadding"    # I

    .prologue
    .line 6064
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mGlowPaddingTop:I

    .line 6065
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mGlowPaddingBottom:I

    .line 6066
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 1219
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 1220
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_0

    .line 1221
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1222
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 1223
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    .line 1229
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->setOverScrollMode(I)V

    .line 1230
    return-void

    .line 1226
    :cond_1
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 1227
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method public setRecyclerListener(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecyclerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecyclerListener;

    .prologue
    .line 8306
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;

    invoke-static {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->access$4002(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecyclerListener;)Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecyclerListener;

    .line 8307
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 1829
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->setScrollBarStyle(I)V

    .line 1830
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    if-eqz v0, :cond_0

    .line 1831
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFastScroll:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalFastScroller;->setScrollBarStyle(I)V

    .line 1833
    :cond_0
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "left"    # Landroid/view/View;
    .param p2, "right"    # Landroid/view/View;

    .prologue
    .line 3353
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollLeft:Landroid/view/View;

    .line 3354
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollRight:Landroid/view/View;

    .line 3355
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 2026
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 2027
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->clearScrollingCache()V

    .line 2029
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollingCacheEnabled:Z

    .line 2030
    return-void
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "x"    # I

    .prologue
    .line 9125
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_1

    .line 9153
    :cond_0
    :goto_0
    return-void

    .line 9129
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 9130
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 9131
    if-ltz p1, :cond_2

    .line 9132
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setNextSelectedPositionInt(I)V

    .line 9138
    :cond_2
    :goto_1
    if-ltz p1, :cond_0

    .line 9139
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLayoutMode:I

    .line 9140
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsRTL:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSpecificTop:I

    .line 9143
    :goto_2
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mNeedSync:Z

    if-eqz v0, :cond_3

    .line 9144
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSyncPosition:I

    .line 9145
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSyncRowId:J

    .line 9148
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;

    if-eqz v0, :cond_4

    .line 9149
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;->stop()V

    .line 9151
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->requestLayout()V

    goto :goto_0

    .line 9135
    :cond_5
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mResurrectToPosition:I

    goto :goto_1

    .line 9141
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSpecificTop:I

    goto :goto_2
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
    .line 3273
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 3274
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3277
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 3278
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3279
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3281
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3282
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3283
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3284
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectionLeftPadding:I

    .line 3285
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectionTopPadding:I

    .line 3286
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectionRightPadding:I

    .line 3287
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectionBottomPadding:I

    .line 3288
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3289
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->updateSelectorState()V

    .line 3290
    return-void
.end method

.method public setSeslEnableVibrationAtLongPress(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 976
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mEnableVibrationAtLongPress:Z

    .line 978
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1862
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSmoothScrollbarEnabled:Z

    .line 1863
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .param p1, "stackFromBottom"    # Z

    .prologue
    .line 2097
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 2098
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mStackFromBottom:Z

    .line 2099
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->requestLayoutIfNecessary()V

    .line 2101
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .param p1, "textFilterEnabled"    # Z

    .prologue
    .line 2043
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTextFilterEnabled:Z

    .line 2044
    return-void
.end method

.method public setTiltMotionEvent(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1064
    return-void
.end method

.method public setTiltMotionScrollSpeed(III)V
    .locals 0
    .param p1, "step1"    # I
    .param p2, "step2"    # I
    .param p3, "step3"    # I

    .prologue
    .line 1077
    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 1092
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchSlop:I

    .line 1093
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 8208
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTranscriptMode:I

    .line 8209
    return-void
.end method

.method public setVelocityScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 6563
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mVelocityScale:F

    .line 6564
    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    .prologue
    .line 3216
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isPressed()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isHovered()Z

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
    .line 3223
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isPressed()Z

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

.method public showContextMenu(FFI)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "metaState"    # I

    .prologue
    .line 3808
    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->pointToPosition(II)I

    move-result v1

    .line 3809
    .local v1, "position":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 3810
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 3811
    .local v2, "id":J
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    sub-int v4, v1, v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3812
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 3813
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3814
    invoke-super {p0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    .line 3821
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "id":J
    :goto_0
    return v4

    .line 3817
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3821
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->showContextMenu()Z

    move-result v4

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 3826
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 3827
    .local v3, "longPressPosition":I
    if-ltz v3, :cond_2

    .line 3828
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 3829
    .local v4, "longPressId":J
    const/4 v6, 0x0

    .line 3831
    .local v6, "handled":Z
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOnItemLongClickListener:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 3832
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mOnItemLongClickListener:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 3835
    :cond_0
    if-nez v6, :cond_1

    .line 3836
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    sub-int v0, v3, v0

    .line 3837
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3836
    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 3839
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 3844
    .end local v4    # "longPressId":J
    .end local v6    # "handled":Z
    :cond_1
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public showMultiChoiceMode(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1623
    if-eqz p1, :cond_1

    .line 1624
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMultiChoiceModeCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;

    if-eqz v0, :cond_0

    .line 1625
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMultiChoiceModeCallback:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1633
    :cond_0
    :goto_0
    return-void

    .line 1628
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1629
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1630
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    goto :goto_0
.end method

.method public smoothScrollBy(I)V
    .locals 3
    .param p1, "distance"    # I

    .prologue
    .line 6739
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    if-nez v1, :cond_0

    .line 6740
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    .line 6743
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollRemains:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 6744
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollRemains:Ljava/util/LinkedList;

    .line 6745
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SeslSmoothScrollByMove;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SeslSmoothScrollByMove;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$1;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSmoothScrollByMove:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SeslSmoothScrollByMove;

    .line 6746
    const/high16 v1, 0x43160000    # 150.0f

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDensityScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollAmount:I

    .line 6749
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollRemains:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    .line 6750
    .local v0, "isEmpty":Z
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sget v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollAmount:I

    if-le v1, v2, :cond_3

    .line 6751
    if-lez p1, :cond_2

    .line 6752
    :goto_0
    sget v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollAmount:I

    if-le p1, v1, :cond_3

    .line 6753
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollRemains:Ljava/util/LinkedList;

    sget v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollAmount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 6752
    sget v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollAmount:I

    sub-int/2addr p1, v1

    goto :goto_0

    .line 6756
    :cond_2
    :goto_1
    sget v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollAmount:I

    neg-int v1, v1

    if-ge p1, v1, :cond_3

    .line 6757
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollRemains:Ljava/util/LinkedList;

    sget v2, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollAmount:I

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 6756
    sget v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollAmount:I

    add-int/2addr p1, v1

    goto :goto_1

    .line 6761
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollRemains:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 6762
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSmoothScrollByMove:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$SeslSmoothScrollByMove;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->post(Ljava/lang/Runnable;)Z

    .line 6763
    :cond_4
    return-void
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1, "distance"    # I
    .param p2, "duration"    # I

    .prologue
    .line 6661
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->smoothScrollBy(IIZ)V

    .line 6662
    return-void
.end method

.method smoothScrollBy(IIZ)V
    .locals 10
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    .prologue
    const/4 v9, 0x0

    .line 6767
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    if-nez v7, :cond_0

    .line 6768
    new-instance v7, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    invoke-direct {v7, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V

    iput-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    .line 6772
    :cond_0
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    .line 6773
    .local v1, "firstPos":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v0

    .line 6774
    .local v0, "childCount":I
    add-int v2, v1, v0

    .line 6775
    .local v2, "lastPos":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingLeft()I

    move-result v3

    .line 6776
    .local v3, "leftLimit":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingRight()I

    move-result v8

    sub-int v5, v7, v8

    .line 6780
    .local v5, "rightLimit":I
    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsRTL:Z

    if-eqz v7, :cond_6

    .line 6781
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 6782
    .local v4, "leftView":Landroid/view/View;
    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 6788
    .local v6, "rightView":Landroid/view/View;
    :goto_0
    if-eqz p1, :cond_4

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    if-eqz v7, :cond_4

    if-eqz v0, :cond_4

    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsRTL:Z

    if-nez v7, :cond_1

    if-nez v1, :cond_1

    .line 6789
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    if-ne v7, v3, :cond_1

    if-ltz p1, :cond_4

    :cond_1
    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsRTL:Z

    if-nez v7, :cond_2

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    if-ne v2, v7, :cond_2

    .line 6790
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    if-ne v7, v5, :cond_2

    if-gtz p1, :cond_4

    :cond_2
    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsRTL:Z

    if-eqz v7, :cond_3

    if-nez v1, :cond_3

    .line 6791
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    if-ne v7, v5, :cond_3

    if-gtz p1, :cond_4

    :cond_3
    iget-boolean v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsRTL:Z

    if-eqz v7, :cond_7

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    if-ne v2, v7, :cond_7

    .line 6792
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    if-ne v7, v3, :cond_7

    if-gez p1, :cond_7

    .line 6793
    :cond_4
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->endFling()V

    .line 6794
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;

    if-eqz v7, :cond_5

    .line 6795
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;

    invoke-virtual {v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;->stop()V

    .line 6801
    :cond_5
    :goto_1
    return-void

    .line 6784
    .end local v4    # "leftView":Landroid/view/View;
    .end local v6    # "rightView":Landroid/view/View;
    :cond_6
    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 6785
    .restart local v4    # "leftView":Landroid/view/View;
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "rightView":Landroid/view/View;
    goto :goto_0

    .line 6798
    :cond_7
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->reportScrollStateChange(I)V

    .line 6799
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFlingRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;

    invoke-virtual {v7, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$FlingRunnable;->startScroll(IIZ)V

    goto :goto_1
.end method

.method smoothScrollByOffset(I)V
    .locals 10
    .param p1, "position"    # I

    .prologue
    const/high16 v9, 0x3f400000    # 0.75f

    .line 6807
    const/4 v2, -0x1

    .line 6808
    .local v2, "index":I
    if-gez p1, :cond_3

    .line 6809
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getFirstVisiblePosition()I

    move-result v2

    .line 6814
    :cond_0
    :goto_0
    const/4 v7, -0x1

    if-le v2, v7, :cond_2

    .line 6815
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6816
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 6817
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 6818
    .local v4, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 6820
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int v1, v7, v8

    .line 6821
    .local v1, "childRectArea":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int v5, v7, v8

    .line 6822
    .local v5, "visibleRectArea":I
    int-to-float v7, v5

    int-to-float v8, v1

    div-float v3, v7, v8

    .line 6823
    .local v3, "visibleArea":F
    const/high16 v6, 0x3f400000    # 0.75f

    .line 6824
    .local v6, "visibleThreshold":F
    if-gez p1, :cond_4

    cmpg-float v7, v3, v9

    if-gez v7, :cond_4

    .line 6827
    add-int/lit8 v2, v2, 0x1

    .line 6834
    .end local v1    # "childRectArea":I
    .end local v3    # "visibleArea":F
    .end local v5    # "visibleRectArea":I
    .end local v6    # "visibleThreshold":F
    :cond_1
    :goto_1
    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getCount()I

    move-result v8

    add-int v9, v2, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->smoothScrollToPosition(I)V

    .line 6837
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "visibleRect":Landroid/graphics/Rect;
    :cond_2
    return-void

    .line 6810
    :cond_3
    if-lez p1, :cond_0

    .line 6811
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getLastVisiblePosition()I

    move-result v2

    goto :goto_0

    .line 6828
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

    .line 6831
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public smoothScrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 6595
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 6596
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;

    .line 6598
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;->start(I)V

    .line 6599
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .prologue
    .line 6649
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 6650
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;

    .line 6652
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;->start(II)V

    .line 6653
    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 6632
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 6633
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;

    .line 6635
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;->startWithOffset(II)V

    .line 6636
    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .prologue
    .line 6614
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 6615
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$PositionScroller;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;

    .line 6617
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mPositionScroller:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$AbsPositionScroller;->startWithOffset(III)V

    .line 6618
    return-void
.end method

.method public smoothScrollToPositionWithDuration(II)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "duration"    # I

    .prologue
    .line 6578
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->smoothScrollToPosition(I)V

    .line 6579
    return-void
.end method

.method public stopTiltScrolling()V
    .locals 0

    .prologue
    .line 1071
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 3194
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 3199
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3197
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3194
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .locals 34
    .param p1, "deltaX"    # I
    .param p2, "incrementalDeltaX"    # I

    .prologue
    .line 6922
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v7

    .line 6923
    .local v7, "childCount":I
    if-nez v7, :cond_0

    .line 6924
    const/16 v32, 0x1

    .line 7192
    :goto_0
    return v32

    .line 6927
    :cond_0
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLeft()I

    move-result v13

    .line 6928
    .local v13, "firstLeft":I
    add-int/lit8 v32, v7, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getRight()I

    move-result v21

    .line 6931
    .local v21, "lastRight":I
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getRight()I

    move-result v15

    .line 6932
    .local v15, "firstRight":I
    add-int/lit8 v32, v7, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLeft()I

    move-result v20

    .line 6934
    .local v20, "lastLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    .line 6939
    .local v23, "listPadding":Landroid/graphics/Rect;
    const/4 v10, 0x0

    .line 6940
    .local v10, "effectivePaddingLeft":I
    const/4 v11, 0x0

    .line 6942
    .local v11, "effectivePaddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getFlagClipToPadding()Z

    move-result v32

    if-eqz v32, :cond_1

    .line 6943
    move-object/from16 v0, v23

    iget v10, v0, Landroid/graphics/Rect;->left:I

    .line 6944
    move-object/from16 v0, v23

    iget v11, v0, Landroid/graphics/Rect;->right:I

    .line 6950
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v32

    sub-int v12, v32, v11

    .line 6952
    .local v12, "end":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsRTL:Z

    move/from16 v32, v0

    if-eqz v32, :cond_3

    .line 6953
    sub-int v28, v15, v12

    .line 6954
    .local v28, "spaceAbove":I
    sub-int v29, v10, v20

    .line 6960
    .local v29, "spaceBelow":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v32

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingRight()I

    move-result v33

    sub-int v32, v32, v33

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getPaddingLeft()I

    move-result v33

    sub-int v31, v32, v33

    .line 6961
    .local v31, "width":I
    if-gez p1, :cond_4

    .line 6962
    add-int/lit8 v32, v31, -0x1

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 6967
    :goto_2
    if-gez p2, :cond_5

    .line 6968
    add-int/lit8 v32, v31, -0x1

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 6973
    :goto_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    .line 6976
    .local v14, "firstPosition":I
    if-nez v14, :cond_7

    .line 6977
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsRTL:Z

    move/from16 v32, v0

    if-eqz v32, :cond_6

    .line 6978
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v32, v0

    add-int v32, v32, v15

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPositionDistanceGuess:I

    .line 6984
    :goto_4
    add-int v32, v14, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_9

    .line 6986
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsRTL:Z

    move/from16 v32, v0

    if-eqz v32, :cond_8

    .line 6987
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    add-int v32, v32, v20

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPositionDistanceGuess:I

    .line 6996
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsRTL:Z

    move/from16 v32, v0

    if-eqz v32, :cond_c

    .line 6997
    add-int v32, v14, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_a

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    move/from16 v0, v20

    move/from16 v1, v32

    if-lt v0, v1, :cond_a

    if-ltz p2, :cond_a

    const/4 v5, 0x1

    .line 6998
    .local v5, "cannotScrollRight":Z
    :goto_6
    if-nez v14, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v32

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move/from16 v0, v32

    if-gt v15, v0, :cond_b

    if-gtz p2, :cond_b

    const/4 v4, 0x1

    .line 7004
    .local v4, "cannotScrollLeft":Z
    :goto_7
    if-nez v5, :cond_2

    if-eqz v4, :cond_10

    .line 7005
    :cond_2
    if-eqz p2, :cond_f

    const/16 v32, 0x1

    goto/16 :goto_0

    .line 6956
    .end local v4    # "cannotScrollLeft":Z
    .end local v5    # "cannotScrollRight":Z
    .end local v14    # "firstPosition":I
    .end local v28    # "spaceAbove":I
    .end local v29    # "spaceBelow":I
    .end local v31    # "width":I
    :cond_3
    sub-int v28, v10, v13

    .line 6957
    .restart local v28    # "spaceAbove":I
    sub-int v29, v21, v12

    .restart local v29    # "spaceBelow":I
    goto/16 :goto_1

    .line 6964
    .restart local v31    # "width":I
    :cond_4
    add-int/lit8 v32, v31, -0x1

    move/from16 v0, v32

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto/16 :goto_2

    .line 6970
    :cond_5
    add-int/lit8 v32, v31, -0x1

    move/from16 v0, v32

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_3

    .line 6980
    .restart local v14    # "firstPosition":I
    :cond_6
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    sub-int v32, v13, v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPositionDistanceGuess:I

    goto/16 :goto_4

    .line 6982
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPositionDistanceGuess:I

    move/from16 v32, v0

    add-int v32, v32, p2

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPositionDistanceGuess:I

    goto/16 :goto_4

    .line 6989
    :cond_8
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v32, v0

    add-int v32, v32, v21

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLastPositionDistanceGuess:I

    goto/16 :goto_5

    .line 6991
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLastPositionDistanceGuess:I

    move/from16 v32, v0

    add-int v32, v32, p2

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mLastPositionDistanceGuess:I

    goto/16 :goto_5

    .line 6997
    :cond_a
    const/4 v5, 0x0

    goto :goto_6

    .line 6998
    .restart local v5    # "cannotScrollRight":Z
    :cond_b
    const/4 v4, 0x0

    goto :goto_7

    .line 7000
    .end local v5    # "cannotScrollRight":Z
    :cond_c
    if-nez v14, :cond_d

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-lt v13, v0, :cond_d

    if-ltz p2, :cond_d

    const/4 v5, 0x1

    .line 7001
    .restart local v5    # "cannotScrollRight":Z
    :goto_8
    add-int v32, v14, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v32

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move/from16 v0, v21

    move/from16 v1, v32

    if-gt v0, v1, :cond_e

    if-gtz p2, :cond_e

    const/4 v4, 0x1

    .restart local v4    # "cannotScrollLeft":Z
    :goto_9
    goto/16 :goto_7

    .line 7000
    .end local v4    # "cannotScrollLeft":Z
    .end local v5    # "cannotScrollRight":Z
    :cond_d
    const/4 v5, 0x0

    goto :goto_8

    .line 7001
    .restart local v5    # "cannotScrollRight":Z
    :cond_e
    const/4 v4, 0x0

    goto :goto_9

    .line 7005
    .restart local v4    # "cannotScrollLeft":Z
    :cond_f
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 7007
    :cond_10
    if-gez p2, :cond_1a

    const/16 v27, 0x1

    .line 7009
    .local v27, "rightSide":Z
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isInTouchMode()Z

    move-result v19

    .line 7010
    .local v19, "inTouchMode":Z
    if-eqz v19, :cond_11

    .line 7011
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->hideSelector()V

    .line 7014
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getHeaderViewsCount()I

    move-result v17

    .line 7015
    .local v17, "headerViewsCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    move/from16 v32, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getFooterViewsCount()I

    move-result v33

    sub-int v16, v32, v33

    .line 7017
    .local v16, "footerViewsStart":I
    const/16 v30, 0x0

    .line 7018
    .local v30, "start":I
    const/4 v9, 0x0

    .line 7020
    .local v9, "count":I
    const/16 v24, 0x1

    .line 7022
    .local v24, "performHaptic":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsRTL:Z

    move/from16 v32, v0

    if-eqz v32, :cond_20

    .line 7023
    if-eqz v27, :cond_1d

    .line 7026
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v22, v0

    .line 7028
    .local v22, "left":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getFlagClipToPadding()Z

    move-result v32

    if-eqz v32, :cond_12

    .line 7029
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    add-int v22, v22, v32

    .line 7031
    :cond_12
    add-int/lit8 v18, v7, -0x1

    .local v18, "i":I
    :goto_b
    if-ltz v18, :cond_13

    .line 7032
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 7033
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v32

    move/from16 v0, v32

    move/from16 v1, v22

    if-lt v0, v1, :cond_1b

    .line 7138
    .end local v6    # "child":Landroid/view/View;
    .end local v22    # "left":I
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionViewOriginalLeft:I

    move/from16 v32, v0

    add-int v32, v32, p1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mMotionViewNewLeft:I

    .line 7140
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mBlockLayoutRequests:Z

    .line 7142
    if-lez v9, :cond_14

    .line 7143
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->detachViewsFromParent(II)V

    .line 7144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->removeSkippedScrap()V

    .line 7149
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->awakenScrollBars()Z

    move-result v32

    if-nez v32, :cond_15

    .line 7150
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->invalidate()V

    .line 7154
    :cond_15
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->semOffsetChildrenLeftAndRight(Landroid/view/ViewGroup;I)V

    .line 7156
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsRTL:Z

    move/from16 v32, v0

    if-eqz v32, :cond_26

    if-nez v27, :cond_26

    .line 7157
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    move/from16 v32, v0

    add-int v32, v32, v9

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    .line 7161
    :cond_16
    :goto_c
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 7162
    .local v3, "absIncrementalDeltaX":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsRTL:Z

    move/from16 v32, v0

    if-eqz v32, :cond_27

    .line 7163
    move/from16 v0, v28

    if-lt v0, v3, :cond_17

    move/from16 v0, v29

    if-ge v0, v3, :cond_18

    .line 7164
    :cond_17
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->fillGapRTL(Z)V

    .line 7173
    :cond_18
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->fullyDetachScrapViews()V

    .line 7174
    if-nez v19, :cond_29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectedPosition:I

    move/from16 v32, v0

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_29

    .line 7175
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectedPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    move/from16 v33, v0

    sub-int v8, v32, v33

    .line 7176
    .local v8, "childIndex":I
    if-ltz v8, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v32

    move/from16 v0, v32

    if-ge v8, v0, :cond_19

    .line 7177
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectedPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v33

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->positionSelector(ILandroid/view/View;)V

    .line 7188
    .end local v8    # "childIndex":I
    :cond_19
    :goto_e
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mBlockLayoutRequests:Z

    .line 7190
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->invokeOnItemScrollListener()V

    .line 7192
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 7007
    .end local v3    # "absIncrementalDeltaX":I
    .end local v9    # "count":I
    .end local v16    # "footerViewsStart":I
    .end local v17    # "headerViewsCount":I
    .end local v18    # "i":I
    .end local v19    # "inTouchMode":Z
    .end local v24    # "performHaptic":Z
    .end local v27    # "rightSide":Z
    .end local v30    # "start":I
    :cond_1a
    const/16 v27, 0x0

    goto/16 :goto_a

    .line 7037
    .restart local v6    # "child":Landroid/view/View;
    .restart local v9    # "count":I
    .restart local v16    # "footerViewsStart":I
    .restart local v17    # "headerViewsCount":I
    .restart local v18    # "i":I
    .restart local v19    # "inTouchMode":Z
    .restart local v22    # "left":I
    .restart local v24    # "performHaptic":Z
    .restart local v27    # "rightSide":Z
    .restart local v30    # "start":I
    :cond_1b
    move/from16 v30, v18

    .line 7038
    add-int/lit8 v9, v9, 0x1

    .line 7039
    add-int v25, v14, v18

    .line 7042
    .local v25, "position":I
    invoke-static {v6}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->clearAccessibilityFocus(Landroid/view/View;)V

    .line 7044
    move/from16 v0, v25

    move/from16 v1, v17

    if-lt v0, v1, :cond_1c

    move/from16 v0, v25

    move/from16 v1, v16

    if-ge v0, v1, :cond_1c

    .line 7047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v25

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 7031
    :cond_1c
    add-int/lit8 v18, v18, -0x1

    goto/16 :goto_b

    .line 7054
    .end local v6    # "child":Landroid/view/View;
    .end local v18    # "i":I
    .end local v22    # "left":I
    .end local v25    # "position":I
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v32

    sub-int v26, v32, p2

    .line 7056
    .local v26, "right":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getFlagClipToPadding()Z

    move-result v32

    if-eqz v32, :cond_1e

    .line 7057
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v32, v0

    sub-int v26, v26, v32

    .line 7059
    :cond_1e
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_f
    move/from16 v0, v18

    if-ge v0, v7, :cond_13

    .line 7060
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 7061
    .restart local v6    # "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v32

    move/from16 v0, v32

    move/from16 v1, v26

    if-le v0, v1, :cond_13

    .line 7065
    add-int/lit8 v9, v9, 0x1

    .line 7066
    add-int v25, v14, v18

    .line 7069
    .restart local v25    # "position":I
    invoke-static {v6}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->clearAccessibilityFocus(Landroid/view/View;)V

    .line 7071
    move/from16 v0, v25

    move/from16 v1, v17

    if-lt v0, v1, :cond_1f

    move/from16 v0, v25

    move/from16 v1, v16

    if-ge v0, v1, :cond_1f

    .line 7075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v25

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 7059
    :cond_1f
    add-int/lit8 v18, v18, 0x1

    goto :goto_f

    .line 7082
    .end local v6    # "child":Landroid/view/View;
    .end local v18    # "i":I
    .end local v25    # "position":I
    .end local v26    # "right":I
    :cond_20
    if-eqz v27, :cond_23

    .line 7084
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v22, v0

    .line 7086
    .restart local v22    # "left":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getFlagClipToPadding()Z

    move-result v32

    if-eqz v32, :cond_21

    .line 7087
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    add-int v22, v22, v32

    .line 7089
    :cond_21
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_10
    move/from16 v0, v18

    if-ge v0, v7, :cond_13

    .line 7090
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 7091
    .restart local v6    # "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v32

    move/from16 v0, v32

    move/from16 v1, v22

    if-ge v0, v1, :cond_13

    .line 7096
    add-int/lit8 v9, v9, 0x1

    .line 7097
    add-int v25, v14, v18

    .line 7100
    .restart local v25    # "position":I
    invoke-static {v6}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->clearAccessibilityFocus(Landroid/view/View;)V

    .line 7102
    move/from16 v0, v25

    move/from16 v1, v17

    if-lt v0, v1, :cond_22

    move/from16 v0, v25

    move/from16 v1, v16

    if-ge v0, v1, :cond_22

    .line 7106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v25

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 7089
    :cond_22
    add-int/lit8 v18, v18, 0x1

    goto :goto_10

    .line 7112
    .end local v6    # "child":Landroid/view/View;
    .end local v18    # "i":I
    .end local v22    # "left":I
    .end local v25    # "position":I
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getWidth()I

    move-result v32

    sub-int v26, v32, p2

    .line 7114
    .restart local v26    # "right":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getFlagClipToPadding()Z

    move-result v32

    if-eqz v32, :cond_24

    .line 7115
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v32, v0

    sub-int v26, v26, v32

    .line 7117
    :cond_24
    add-int/lit8 v18, v7, -0x1

    .restart local v18    # "i":I
    :goto_11
    if-ltz v18, :cond_13

    .line 7118
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 7119
    .restart local v6    # "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v32

    move/from16 v0, v32

    move/from16 v1, v26

    if-le v0, v1, :cond_13

    .line 7122
    move/from16 v30, v18

    .line 7123
    add-int/lit8 v9, v9, 0x1

    .line 7124
    add-int v25, v14, v18

    .line 7127
    .restart local v25    # "position":I
    invoke-static {v6}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->clearAccessibilityFocus(Landroid/view/View;)V

    .line 7129
    move/from16 v0, v25

    move/from16 v1, v17

    if-lt v0, v1, :cond_25

    move/from16 v0, v25

    move/from16 v1, v16

    if-ge v0, v1, :cond_25

    .line 7132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mRecycler:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v25

    invoke-virtual {v0, v6, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 7117
    :cond_25
    add-int/lit8 v18, v18, -0x1

    goto :goto_11

    .line 7158
    .end local v6    # "child":Landroid/view/View;
    .end local v25    # "position":I
    .end local v26    # "right":I
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsRTL:Z

    move/from16 v32, v0

    if-nez v32, :cond_16

    if-eqz v27, :cond_16

    .line 7159
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    move/from16 v32, v0

    add-int v32, v32, v9

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    goto/16 :goto_c

    .line 7167
    .restart local v3    # "absIncrementalDeltaX":I
    :cond_27
    move/from16 v0, v28

    if-lt v0, v3, :cond_28

    move/from16 v0, v29

    if-ge v0, v3, :cond_18

    .line 7168
    :cond_28
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->fillGap(Z)V

    goto/16 :goto_d

    .line 7179
    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectorPosition:I

    move/from16 v32, v0

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_2a

    .line 7180
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectorPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    move/from16 v33, v0

    sub-int v8, v32, v33

    .line 7181
    .restart local v8    # "childIndex":I
    if-ltz v8, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v32

    move/from16 v0, v32

    if-ge v8, v0, :cond_19

    .line 7182
    const/16 v32, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v33

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_e

    .line 7185
    .end local v8    # "childIndex":I
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_e
.end method

.method triggerDoubleFling(I)V
    .locals 4
    .param p1, "initialVelocity"    # I

    .prologue
    .line 5821
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 5822
    .local v0, "adapterCount":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v1

    .line 5824
    .local v1, "visibleItemsCount":I
    if-lez p1, :cond_2

    .line 5825
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getLastVisiblePosition()I

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    if-le v2, v3, :cond_0

    .line 5826
    mul-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setSelection(I)V

    .line 5828
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->smoothScrollToPosition(I)V

    .line 5835
    :cond_1
    :goto_0
    return-void

    .line 5829
    :cond_2
    if-gez p1, :cond_1

    .line 5830
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v3, v1, 0x3

    if-le v2, v3, :cond_3

    .line 5831
    add-int/lit8 v2, v0, -0x1

    mul-int/lit8 v3, v1, 0x3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setSelection(I)V

    .line 5833
    :cond_3
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->smoothScrollToPosition(I)V

    goto :goto_0
.end method

.method triggerJumpScrollToTop()V
    .locals 1

    .prologue
    .line 5798
    sget v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mJumpScrollToTopState:I

    .line 5799
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->triggerDoubleFling(I)V

    .line 5800
    return-void
.end method

.method public unregisterDoubleTapMotion()V
    .locals 1

    .prologue
    .line 1022
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->unregisterMotionListener()V

    .line 1023
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setMotionEvent(Z)V

    .line 1024
    return-void
.end method

.method public unregisterTiltMotion()V
    .locals 0

    .prologue
    .line 1056
    return-void
.end method

.method public updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "edgeeffectCustomEdge"    # Landroid/graphics/drawable/Drawable;
    .param p2, "edgeeffectCustomGlow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1110
    return-void
.end method

.method updateScrollIndicators()V
    .locals 10

    .prologue
    const/4 v7, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2677
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollLeft:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 2679
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v3

    .line 2681
    .local v3, "count":I
    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsRTL:Z

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    add-int/2addr v6, v3

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    if-ge v6, v8, :cond_4

    move v0, v4

    .line 2685
    .local v0, "canScrollLeft":Z
    :goto_0
    if-nez v0, :cond_0

    if-lez v3, :cond_0

    .line 2687
    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsRTL:Z

    if-eqz v6, :cond_7

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2690
    .local v2, "child":Landroid/view/View;
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v6

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    if-ge v6, v8, :cond_8

    move v0, v4

    .line 2694
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    :goto_2
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollLeft:Landroid/view/View;

    if-eqz v0, :cond_9

    move v6, v5

    :goto_3
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2697
    .end local v0    # "canScrollLeft":Z
    .end local v3    # "count":I
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollRight:Landroid/view/View;

    if-eqz v6, :cond_3

    .line 2699
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildCount()I

    move-result v3

    .line 2702
    .restart local v3    # "count":I
    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsRTL:Z

    if-eqz v6, :cond_b

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    if-lez v6, :cond_a

    move v1, v4

    .line 2706
    .local v1, "canScrollRight":Z
    :goto_4
    if-nez v1, :cond_2

    if-lez v3, :cond_2

    .line 2708
    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsRTL:Z

    if-eqz v6, :cond_d

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2711
    .restart local v2    # "child":Landroid/view/View;
    :goto_5
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getRight()I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_e

    move v1, v4

    .line 2714
    .end local v2    # "child":Landroid/view/View;
    :cond_2
    :goto_6
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mScrollRight:Landroid/view/View;

    if-eqz v1, :cond_f

    :goto_7
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2716
    .end local v1    # "canScrollRight":Z
    .end local v3    # "count":I
    :cond_3
    return-void

    .restart local v3    # "count":I
    :cond_4
    move v0, v5

    .line 2681
    goto :goto_0

    .line 2682
    :cond_5
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    if-lez v6, :cond_6

    move v0, v4

    .restart local v0    # "canScrollLeft":Z
    :goto_8
    goto :goto_0

    .end local v0    # "canScrollLeft":Z
    :cond_6
    move v0, v5

    goto :goto_8

    .line 2688
    .restart local v0    # "canScrollLeft":Z
    :cond_7
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "child":Landroid/view/View;
    goto :goto_1

    :cond_8
    move v0, v5

    .line 2690
    goto :goto_2

    .end local v2    # "child":Landroid/view/View;
    :cond_9
    move v6, v7

    .line 2694
    goto :goto_3

    .end local v0    # "canScrollLeft":Z
    :cond_a
    move v1, v5

    .line 2702
    goto :goto_4

    .line 2703
    :cond_b
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    add-int/2addr v6, v3

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mItemCount:I

    if-ge v6, v8, :cond_c

    move v1, v4

    .restart local v1    # "canScrollRight":Z
    :goto_9
    goto :goto_4

    .end local v1    # "canScrollRight":Z
    :cond_c
    move v1, v5

    goto :goto_9

    .line 2709
    .restart local v1    # "canScrollRight":Z
    :cond_d
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "child":Landroid/view/View;
    goto :goto_5

    :cond_e
    move v1, v5

    .line 2711
    goto :goto_6

    .end local v2    # "child":Landroid/view/View;
    :cond_f
    move v5, v7

    .line 2714
    goto :goto_7
.end method

.method updateSelectorState()V
    .locals 4

    .prologue
    .line 3358
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 3359
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->shouldShowSelector()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3361
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->isHovered()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsHoveredByMouse:Z

    if-nez v2, :cond_3

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectorPosition:I

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    if-lt v2, v3, :cond_3

    .line 3362
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectorPosition:I

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3364
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->findEllipsizedTextView(Landroid/view/View;)Z

    move-result v1

    .line 3365
    .local v1, "ellipsized":Z
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mIsPenHovered:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mAlwaysDisableHoverHighlight:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3366
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3367
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 3379
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "ellipsized":Z
    :cond_1
    :goto_0
    return-void

    .line 3369
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "ellipsized":Z
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 3372
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "ellipsized":Z
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 3376
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3423
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mSelector:Landroid/graphics/drawable/Drawable;

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
