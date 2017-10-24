.class public abstract Landroid/widget/SemHorizontalAbsListView;
.super Landroid/widget/AdapterView;
.source "SemHorizontalAbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SemHorizontalAbsListView$1;,
        Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;,
        Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;,
        Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;,
        Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;,
        Landroid/widget/SemHorizontalAbsListView$CheckForTap;,
        Landroid/widget/SemHorizontalAbsListView$FlingRunnable;,
        Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;,
        Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;,
        Landroid/widget/SemHorizontalAbsListView$LayoutParams;,
        Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;,
        Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;,
        Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;,
        Landroid/widget/SemHorizontalAbsListView$OnScrollListener;,
        Landroid/widget/SemHorizontalAbsListView$PerformClick;,
        Landroid/widget/SemHorizontalAbsListView$PositionScroller;,
        Landroid/widget/SemHorizontalAbsListView$RecycleBin;,
        Landroid/widget/SemHorizontalAbsListView$RecyclerListener;,
        Landroid/widget/SemHorizontalAbsListView$SavedState;,
        Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;,
        Landroid/widget/SemHorizontalAbsListView$WindowRunnnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
        "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;"
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

.field private static final SAVED_STATE_KEY_FOR_BUNDLE:Ljava/lang/String; = "android.widget.SemHorizontalAbsListView.SavedState"

.field private static final TAG:Ljava/lang/String; = "SemHorizontalAbsListView"

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

.field private static mSemScrollAmount:I

.field static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:F

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private mAccessibilityDelegate:Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;

.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field mAdapterHasStableIds:Z

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

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mCurrentKeyCode:I

.field private mDVFSLockAcquired:Z

.field mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDeferNotifyDataSetChanged:Z

.field private mDensityScale:F

.field private mDirection:I

.field private mDragScrollWorkingZonePx:I

.field mDrawSelectorOnTop:Z

.field private mEdgeGlowLeft:Landroid/widget/EdgeEffect;

.field private mEdgeGlowRight:Landroid/widget/EdgeEffect;

.field private mEnableVibrationAtLongPress:Z

.field private mExtraPaddingInLeftHoverArea:I

.field private mExtraPaddingInRightHoverArea:I

.field private mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

.field mFastScrollAlwaysVisible:Z

.field mFastScrollEnabled:Z

.field private mFastScrollStyle:I

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field private mFirstPressedPoint:I

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mForceTranscriptScroll:Z

.field private mForcedClick:Z

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mGlowPaddingBottom:I

.field private mGlowPaddingTop:I

.field private mHapticOverScroll:Z

.field private mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

.field private mHasWindowFocusForMotion:Z

.field mHeightMeasureSpec:I

.field public mHoverAreaEnter:Z

.field private mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

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

.field private mIsPenHovered:Z

.field private mIsPenPressed:Z

.field private mIsPenSelectPointerSetted:Z

.field private mIsQCShown:Z

.field mIsRTL:Z

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

.field mMotionPosition:I

.field private mMotionRecognitionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

.field mMotionViewNewLeft:I

.field mMotionViewOriginalLeft:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

.field private mMultiFocusImage:Landroid/graphics/drawable/Drawable;

.field private mNeedsHoverScroll:Z

.field private mNestedXOffset:I

.field private mNewTextViewHoverState:Z

.field private mOldAdapterItemCount:I

.field private mOldHoverScrollDirection:I

.field private mOldKeyCode:I

.field private mOldTextViewHoverState:Z

.field private mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field mOverscrollMax:I

.field private final mOwnerThread:Ljava/lang/Thread;

.field private mPenDragScrollTimeInterval:J

.field private mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

.field private mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

.field private mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

.field private mPointerCount:I

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

.field private mPreviousTextViewScroll:Z

.field private mPublicInputConnection:Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;

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

.field final mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

.field private mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

.field mResurrectToPosition:I

.field private final mScrollConsumed:[I

.field private mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field mScrollLeft:Landroid/view/View;

.field private final mScrollOffset:[I

.field private mScrollProfilingStarted:Z

.field mScrollRight:Landroid/view/View;

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

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

.field private mSemCloseChildByLeft:Landroid/view/View;

.field private mSemCloseChildByRight:Landroid/view/View;

.field private mSemCloseChildPositionByLeft:I

.field private mSemCloseChildPositionByRight:I

.field protected mSemCurrentFocusPosition:I

.field private mSemCustomMultiChoiceMode:Z

.field private mSemDistanceFromCloseChildLeft:I

.field private mSemDistanceFromCloseChildRight:I

.field private mSemDistanceFromTrackedChildLeft:I

.field private mSemDragBlockBottom:I

.field private mSemDragBlockImage:Landroid/graphics/drawable/Drawable;

.field private mSemDragBlockLeft:I

.field private mSemDragBlockRect:Landroid/graphics/Rect;

.field private mSemDragBlockRight:I

.field private mSemDragBlockTop:I

.field private mSemDragEndX:I

.field private mSemDragEndY:I

.field private mSemDragSelectedItemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSemDragSelectedItemSize:I

.field private mSemDragSelectedViewPosition:I

.field private mSemDragStartX:I

.field private mSemDragStartY:I

.field private mSemIsOnClickEnabled:Z

.field private mSemPressItemListArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSemScrollRemains:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSemSmoothScrollByMove:Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;

.field private mSemTrackedChild:Landroid/view/View;

.field private mSemTrackedChildPosition:I

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field private mVelocityScale:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_FINISHING:I

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    return v0
.end method

.method static synthetic -get10(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/SemHorizontalAbsListView$FlingRunnable;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    return-object v0
.end method

.method static synthetic -get11(Landroid/widget/SemHorizontalAbsListView;)Landroid/os/StrictMode$Span;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object v0
.end method

.method static synthetic -get12(Landroid/widget/SemHorizontalAbsListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mForcedClick:Z

    return v0
.end method

.method static synthetic -get13(Landroid/widget/SemHorizontalAbsListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    return v0
.end method

.method static synthetic -get14(Landroid/widget/SemHorizontalAbsListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDetaching:Z

    return v0
.end method

.method static synthetic -get15(Landroid/widget/SemHorizontalAbsListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    return v0
.end method

.method static synthetic -get16(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mJumpScrollToTopState:I

    return v0
.end method

.method static synthetic -get17(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMaximumVelocity:I

    return v0
.end method

.method static synthetic -get18(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic -get19(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    return v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    return v0
.end method

.method static synthetic -get20(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    return v0
.end method

.method static synthetic -get21(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic -get22(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic -get23(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollDirection:I

    return v0
.end method

.method static synthetic -get24(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollFrom:I

    return v0
.end method

.method static synthetic -get25(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollNext:I

    return v0
.end method

.method static synthetic -get26(Landroid/widget/SemHorizontalAbsListView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get27(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollTo:I

    return v0
.end method

.method static synthetic -get28(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollingCount:I

    return v0
.end method

.method static synthetic -get29(Landroid/widget/SemHorizontalAbsListView;)Landroid/view/animation/DecelerateInterpolator;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    return v0
.end method

.method static synthetic -get30(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic -get31(Landroid/widget/SemHorizontalAbsListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCustomMultiChoiceMode:Z

    return v0
.end method

.method static synthetic -get32(Landroid/widget/SemHorizontalAbsListView;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic -get33(Landroid/widget/SemHorizontalAbsListView;)Landroid/view/VelocityTracker;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic -get4(Landroid/widget/SemHorizontalAbsListView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Landroid/widget/SemHorizontalAbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic -get6(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/EdgeEffect;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic -get7(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/EdgeEffect;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic -get8(Landroid/widget/SemHorizontalAbsListView;)Lcom/samsung/android/widget/SemHorizontalFastScroller;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    return-object v0
.end method

.method static synthetic -get9(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    return v0
.end method

.method static synthetic -set0(Landroid/widget/SemHorizontalAbsListView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    return p1
.end method

.method static synthetic -set1(Landroid/widget/SemHorizontalAbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p1
.end method

.method static synthetic -set2(Landroid/widget/SemHorizontalAbsListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsChildViewEnabled:Z

    return p1
.end method

.method static synthetic -set3(Landroid/widget/SemHorizontalAbsListView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mJumpScrollToTopState:I

    return p1
.end method

.method static synthetic -set4(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;)Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;
    .locals 0

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic -set5(Landroid/widget/SemHorizontalAbsListView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollNext:I

    return p1
.end method

.method static synthetic -set6(Landroid/widget/SemHorizontalAbsListView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollingCount:I

    return p1
.end method

.method static synthetic -set7(Landroid/widget/SemHorizontalAbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/EditText;
    .locals 1

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/widget/SemHorizontalAbsListView;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Landroid/widget/SemHorizontalAbsListView;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap11(Landroid/widget/SemHorizontalAbsListView;Z)V
    .locals 0
    .param p1, "alwaysShow"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    return-void
.end method

.method static synthetic -wrap12(Landroid/widget/SemHorizontalAbsListView;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollerEnabledUiThread(Z)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/widget/SemHorizontalAbsListView;IIIIIIIIZ)Z
    .locals 1
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
    invoke-virtual/range {p0 .. p9}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/widget/SemHorizontalAbsListView;II)V
    .locals 0
    .param p1, "firstpoint"    # I
    .param p2, "secondpoint"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->addToPressItemListArray(II)V

    return-void
.end method

.method static synthetic -wrap5(Landroid/widget/SemHorizontalAbsListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->clearScrollingCache()V

    return-void
.end method

.method static synthetic -wrap6(Landroid/widget/SemHorizontalAbsListView;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap7(Landroid/widget/SemHorizontalAbsListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->postOnJumpScrollToFinished()V

    return-void
.end method

.method static synthetic -wrap8(Landroid/widget/SemHorizontalAbsListView;Landroid/view/View;Z)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic -wrap9(Landroid/widget/SemHorizontalAbsListView;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 170
    sput-boolean v1, Landroid/widget/SemHorizontalAbsListView;->DEBUG_VELOCITY_TRACKER_TRACE:Z

    .line 870
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/widget/SemHorizontalAbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 6321
    sput v1, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    .line 6322
    const/4 v0, 0x1

    sput v0, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    .line 6323
    const/4 v0, 0x2

    sput v0, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_FINISHING:I

    .line 7416
    const/16 v0, 0x1f4

    sput v0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 1085
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 162
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 165
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHasWindowFocusForMotion:Z

    .line 167
    iput-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionRecognitionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    .line 306
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    .line 339
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 364
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 369
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mDrawSelectorOnTop:Z

    .line 379
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    .line 384
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 390
    new-instance v1, Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-direct {v1, p0}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    .line 395
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionLeftPadding:I

    .line 400
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionTopPadding:I

    .line 405
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionRightPadding:I

    .line 410
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionBottomPadding:I

    .line 415
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 420
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHeightMeasureSpec:I

    .line 468
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 499
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedLeft:I

    .line 542
    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    .line 562
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    .line 564
    iput-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 590
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mLastTouchMode:I

    .line 593
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollProfilingStarted:Z

    .line 596
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingProfilingStarted:Z

    .line 604
    iput-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 605
    iput-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 653
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mLastScrollState:I

    .line 678
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityScale:F

    .line 680
    new-array v1, v7, [Z

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsScrap:[Z

    .line 682
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    .line 683
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollConsumed:[I

    .line 689
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    .line 699
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    .line 704
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mPointerCount:I

    .line 710
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHapticOverScroll:Z

    .line 760
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    .line 796
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    .line 798
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    .line 808
    iput-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    .line 810
    iput-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionCurrentTime:J

    .line 812
    iput-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 814
    const-wide/16 v2, 0x12c

    iput-wide v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollTimeInterval:J

    .line 816
    const-wide/16 v2, 0x1f4

    iput-wide v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPenDragScrollTimeInterval:J

    .line 818
    iput-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 820
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    .line 825
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    .line 830
    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollEnable:Z

    .line 836
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 838
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsSendHoverScrollState:Z

    .line 843
    const/high16 v1, 0x40c00000    # 6.0f

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_SPEED:F

    .line 853
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    .line 855
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    .line 857
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateForListener:I

    .line 859
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    .line 862
    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoveringEnabled:Z

    .line 864
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInLeftHoverArea:I

    .line 865
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInRightHoverArea:I

    .line 880
    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEnableVibrationAtLongPress:Z

    .line 890
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCustomMultiChoiceMode:Z

    .line 895
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    .line 896
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    .line 897
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    .line 898
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    .line 899
    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsfirstMoveEvent:Z

    .line 901
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    .line 905
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    .line 906
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSecondPressedPoint:I

    .line 907
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mOldAdapterItemCount:I

    .line 908
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    .line 909
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    .line 914
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    .line 918
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsTextSelectionStarted:Z

    .line 919
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelection:Z

    .line 921
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemSize:I

    .line 922
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    .line 923
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    .line 924
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelectIconSet:Z

    .line 925
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mOldTextViewHoverState:Z

    .line 926
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mNewTextViewHoverState:Z

    .line 927
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mPreviousTextViewScroll:Z

    .line 930
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    .line 931
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    .line 932
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    .line 933
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    .line 934
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndY:I

    .line 936
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    .line 937
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    .line 938
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    .line 939
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    .line 941
    iput-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 942
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    .line 943
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromTrackedChildLeft:I

    .line 945
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCloseChildSetted:Z

    .line 946
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mOldHoverScrollDirection:I

    .line 947
    iput-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByLeft:Landroid/view/View;

    .line 948
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByLeft:I

    .line 949
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildLeft:I

    .line 950
    iput-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    .line 951
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    .line 952
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildRight:I

    .line 955
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    .line 957
    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemIsOnClickEnabled:Z

    .line 958
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    .line 1027
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    .line 4135
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mForcedClick:Z

    .line 5310
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    .line 5311
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    .line 6324
    sget v1, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mJumpScrollToTopState:I

    .line 6383
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverPosition:I

    .line 6385
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHoveredOnEllipsizedText:Z

    .line 6386
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoveredByMouse:Z

    .line 7414
    iput-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemSmoothScrollByMove:Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;

    .line 7415
    iput-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    .line 10509
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    .line 10872
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mQCLocation:I

    .line 10873
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    .line 10874
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsQCShown:Z

    .line 10879
    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollingCount:I

    .line 11034
    new-instance v1, Landroid/widget/SemHorizontalAbsListView$1;

    invoke-direct {v1, p0}, Landroid/widget/SemHorizontalAbsListView$1;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    .line 1087
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->initAbsListView()V

    .line 1089
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 1091
    invoke-virtual {p0, v7}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 1092
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1093
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/view/View;->initializeScrollbarsInternal(Landroid/content/res/TypedArray;)V

    .line 1094
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1099
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionRecognitionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-nez v1, :cond_0

    .line 1100
    const-string/jumbo v1, "SemHorizontalAbsListView"

    const-string/jumbo v2, "Get MotionRecognitionManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    const-string/jumbo v1, "motion_recognition"

    .line 1101
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionRecognitionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    .line 1084
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1123
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SemHorizontalAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 1144
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SemHorizontalAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 1181
    invoke-direct/range {p0 .. p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 162
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v14

    const-string/jumbo v15, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v14, v15}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 165
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHasWindowFocusForMotion:Z

    .line 167
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionRecognitionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    .line 306
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    .line 339
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 364
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 369
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mDrawSelectorOnTop:Z

    .line 379
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    .line 384
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 390
    new-instance v14, Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    .line 395
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectionLeftPadding:I

    .line 400
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectionTopPadding:I

    .line 405
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectionRightPadding:I

    .line 410
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectionBottomPadding:I

    .line 415
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 420
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHeightMeasureSpec:I

    .line 468
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 499
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectedLeft:I

    .line 542
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    .line 562
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    .line 564
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 590
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mLastTouchMode:I

    .line 593
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollProfilingStarted:Z

    .line 596
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mFlingProfilingStarted:Z

    .line 604
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 605
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 653
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mLastScrollState:I

    .line 678
    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mVelocityScale:F

    .line 680
    const/4 v14, 0x1

    new-array v14, v14, [Z

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsScrap:[Z

    .line 682
    const/4 v14, 0x2

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    .line 683
    const/4 v14, 0x2

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollConsumed:[I

    .line 689
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    .line 699
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    .line 704
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mPointerCount:I

    .line 710
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHapticOverScroll:Z

    .line 760
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    .line 796
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    .line 798
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    .line 808
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    .line 810
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionCurrentTime:J

    .line 812
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 814
    const-wide/16 v14, 0x12c

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollTimeInterval:J

    .line 816
    const-wide/16 v14, 0x1f4

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mPenDragScrollTimeInterval:J

    .line 818
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 820
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    .line 825
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    .line 830
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollEnable:Z

    .line 836
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 838
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsSendHoverScrollState:Z

    .line 843
    const/high16 v14, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_SPEED:F

    .line 853
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    .line 855
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    .line 857
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateForListener:I

    .line 859
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    .line 862
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoveringEnabled:Z

    .line 864
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInLeftHoverArea:I

    .line 865
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInRightHoverArea:I

    .line 880
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mEnableVibrationAtLongPress:Z

    .line 890
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCustomMultiChoiceMode:Z

    .line 895
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    .line 896
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    .line 897
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    .line 898
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    .line 899
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsfirstMoveEvent:Z

    .line 901
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    .line 905
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    .line 906
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSecondPressedPoint:I

    .line 907
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mOldAdapterItemCount:I

    .line 908
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    .line 909
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    .line 914
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    .line 918
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsTextSelectionStarted:Z

    .line 919
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelection:Z

    .line 921
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemSize:I

    .line 922
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    .line 923
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    .line 924
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelectIconSet:Z

    .line 925
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mOldTextViewHoverState:Z

    .line 926
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mNewTextViewHoverState:Z

    .line 927
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mPreviousTextViewScroll:Z

    .line 930
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    .line 931
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    .line 932
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    .line 933
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    .line 934
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndY:I

    .line 936
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    .line 937
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    .line 938
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    .line 939
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    .line 941
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 942
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    .line 943
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromTrackedChildLeft:I

    .line 945
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsCloseChildSetted:Z

    .line 946
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mOldHoverScrollDirection:I

    .line 947
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByLeft:Landroid/view/View;

    .line 948
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByLeft:I

    .line 949
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildLeft:I

    .line 950
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    .line 951
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    .line 952
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildRight:I

    .line 955
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    .line 957
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemIsOnClickEnabled:Z

    .line 958
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    .line 1027
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    .line 4135
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mForcedClick:Z

    .line 5310
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    .line 5311
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    .line 6324
    sget v14, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mJumpScrollToTopState:I

    .line 6383
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverPosition:I

    .line 6385
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoveredOnEllipsizedText:Z

    .line 6386
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoveredByMouse:Z

    .line 7414
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemSmoothScrollByMove:Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;

    .line 7415
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    .line 10509
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    .line 10872
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mQCLocation:I

    .line 10873
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    .line 10874
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsQCShown:Z

    .line 10879
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollingCount:I

    .line 11034
    new-instance v14, Landroid/widget/SemHorizontalAbsListView$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/SemHorizontalAbsListView$1;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    .line 1183
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->initAbsListView()V

    .line 1185
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 1188
    sget-object v14, Lcom/android/internal/R$styleable;->AbsListView:[I

    .line 1187
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v14, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 1190
    .local v4, "a":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1191
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_0

    .line 1192
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/SemHorizontalAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1196
    :cond_0
    const/4 v14, 0x1

    const/4 v15, 0x0

    .line 1195
    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mDrawSelectorOnTop:Z

    .line 1198
    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 1199
    .local v11, "stackFromBottom":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/SemHorizontalAbsListView;->setStackFromBottom(Z)V

    .line 1201
    const/4 v14, 0x3

    const/4 v15, 0x1

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 1202
    .local v9, "scrollingCacheEnabled":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/SemHorizontalAbsListView;->setScrollingCacheEnabled(Z)V

    .line 1204
    const/4 v14, 0x4

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 1205
    .local v13, "useTextFilter":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/SemHorizontalAbsListView;->setTextFilterEnabled(Z)V

    .line 1207
    const/4 v14, 0x5

    .line 1208
    const/4 v15, 0x0

    .line 1207
    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 1209
    .local v12, "transcriptMode":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/SemHorizontalAbsListView;->setTranscriptMode(I)V

    .line 1211
    const/4 v14, 0x6

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 1213
    .local v5, "color":I
    const/16 v14, 0x8

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 1214
    .local v7, "enableFastScroll":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollEnabled(Z)V

    .line 1216
    const/16 v14, 0xb

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 1217
    .local v8, "fastScrollStyle":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollStyle(I)V

    .line 1219
    const/16 v14, 0x9

    const/4 v15, 0x1

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 1220
    .local v10, "smoothScrollbar":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/SemHorizontalAbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 1223
    const/16 v14, 0xa

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    .line 1222
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 1225
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1230
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionRecognitionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-nez v14, :cond_1

    .line 1231
    const-string/jumbo v14, "SemHorizontalAbsListView"

    const-string/jumbo v15, "Get MotionRecognitionManager"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    const-string/jumbo v14, "motion_recognition"

    .line 1232
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionRecognitionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    .line 1180
    :cond_1
    return-void
.end method

.method private acceptFilter()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2532
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_1

    .line 2533
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2532
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 2533
    goto :goto_0

    :cond_1
    move v0, v1

    .line 2532
    goto :goto_0
.end method

.method private addToPressItemListArray(II)V
    .locals 4
    .param p1, "firstpoint"    # I
    .param p2, "secondpoint"    # I

    .prologue
    .line 10784
    const/4 v0, 0x0

    .line 10786
    .local v0, "checkCount":I
    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    if-nez v2, :cond_0

    .line 10787
    return-void

    .line 10790
    :cond_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    .line 10791
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10792
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10826
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 10783
    return-void

    .line 10794
    :cond_2
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10797
    :cond_3
    if-ge p1, p2, :cond_5

    .line 10798
    sub-int v2, p2, p1

    add-int/lit8 v0, v2, 0x1

    .line 10799
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 10800
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10801
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10805
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 10799
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 10803
    :cond_4
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 10807
    .end local v1    # "i":I
    :cond_5
    if-le p1, p2, :cond_7

    .line 10808
    sub-int v2, p1, p2

    add-int/lit8 v0, v2, 0x1

    .line 10809
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v0, :cond_1

    .line 10810
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 10811
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10815
    :goto_4
    add-int/lit8 p1, p1, -0x1

    .line 10809
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 10813
    :cond_6
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 10818
    .end local v1    # "i":I
    :cond_7
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 10819
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10821
    :cond_8
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private clearScrollingCache()V
    .locals 1

    .prologue
    .line 7592
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7593
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 7594
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$6;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$6;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 7610
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 7591
    :cond_1
    return-void
.end method

.method private contentFits()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1697
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1698
    .local v0, "childCount":I
    if-nez v0, :cond_0

    .line 1699
    return v1

    .line 1700
    :cond_0
    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-eq v0, v3, :cond_1

    .line 1701
    return v2

    .line 1703
    :cond_1
    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v3, :cond_4

    .line 1704
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    if-gt v3, v4, :cond_3

    .line 1705
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lt v3, v4, :cond_2

    .line 1704
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 1705
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1704
    goto :goto_0

    .line 1708
    :cond_4
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lt v3, v4, :cond_5

    .line 1709
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    if-gt v3, v4, :cond_5

    move v2, v1

    .line 1708
    :cond_5
    return v2
.end method

.method private createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 7584
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCachingStarted:Z

    if-eqz v0, :cond_1

    .line 7583
    :cond_0
    :goto_0
    return-void

    .line 7584
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7585
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 7586
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 7587
    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCachingActive:Z

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCachingStarted:Z

    goto :goto_0
.end method

.method private createTextFilter(Z)V
    .locals 5
    .param p1, "animateEntrance"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 8746
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 8747
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 8748
    .local v0, "p":Landroid/widget/PopupWindow;
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 8749
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 8750
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 8751
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 8752
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 8753
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 8754
    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8755
    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 8756
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8757
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 8759
    .end local v0    # "p":Landroid/widget/PopupWindow;
    :cond_0
    if-eqz p1, :cond_1

    .line 8760
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v2, 0x10302e9

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 8745
    :goto_0
    return-void

    .line 8762
    :cond_1
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v2, 0x10302ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private dismissPopup()V
    .locals 1

    .prologue
    .line 8368
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 8369
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 8367
    :cond_0
    return-void
.end method

.method private doScrollToLeftEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 11007
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollDirection:I

    .line 11008
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollFrom:I

    .line 11009
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollTo:I

    .line 11010
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollNext:I

    .line 11011
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollingCount:I

    .line 11013
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-nez v0, :cond_0

    .line 11014
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 11017
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 11006
    return-void
.end method

.method private doScrollToRightEnd()V
    .locals 1

    .prologue
    .line 11021
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollDirection:I

    .line 11022
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollFrom:I

    .line 11023
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollTo:I

    .line 11024
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollNext:I

    .line 11025
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollingCount:I

    .line 11027
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-nez v0, :cond_0

    .line 11028
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 11031
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 11020
    return-void
.end method

.method private drawQuickController(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 10987
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    if-eq v2, v4, :cond_0

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    if-ne v2, v5, :cond_3

    .line 10988
    :cond_0
    iget v1, p0, Landroid/view/View;->mScrollX:I

    .line 10989
    .local v1, "scrollX":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 10990
    .local v0, "restoreCount":I
    int-to-float v2, v1

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10992
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    if-ne v2, v4, :cond_2

    .line 10993
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 10998
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 11000
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsQCShown:Z

    .line 10986
    .end local v0    # "restoreCount":I
    .end local v1    # "scrollX":I
    :goto_1
    return-void

    .line 10994
    .restart local v0    # "restoreCount":I
    .restart local v1    # "scrollX":I
    :cond_2
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    if-ne v2, v5, :cond_1

    .line 10995
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 11002
    .end local v0    # "restoreCount":I
    .end local v1    # "scrollX":I
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsQCShown:Z

    goto :goto_1
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3606
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 3607
    .local v4, "tempSelectorRect":Landroid/graphics/Rect;
    const/4 v0, 0x0

    .line 3608
    .local v0, "selectedChild":Landroid/view/View;
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3609
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3610
    .local v3, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3611
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3615
    .end local v3    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    if-eqz v5, :cond_2

    .line 3617
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v0    # "selectedChild":Landroid/view/View;
    .local v2, "selectedPosition$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3618
    .local v1, "selectedPosition":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3620
    .local v0, "selectedChild":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 3621
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 3622
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3623
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 3605
    .end local v0    # "selectedChild":Landroid/view/View;
    .end local v1    # "selectedPosition":Ljava/lang/Integer;
    .end local v2    # "selectedPosition$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private finishGlows()V
    .locals 1

    .prologue
    .line 9053
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 9054
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 9055
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 9052
    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8
    .param p0, "source"    # Landroid/graphics/Rect;
    .param p1, "dest"    # Landroid/graphics/Rect;
    .param p2, "direction"    # I

    .prologue
    .line 8414
    sparse-switch p2, :sswitch_data_0

    .line 8447
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 8416
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 8417
    .local v4, "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 8418
    .local v5, "sY":I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 8419
    .local v0, "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 8451
    .local v1, "dY":I
    :goto_0
    sub-int v2, v0, v4

    .line 8452
    .local v2, "deltaX":I
    sub-int v3, v1, v5

    .line 8453
    .local v3, "deltaY":I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 8422
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

    .line 8423
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 8424
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 8425
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .restart local v1    # "dY":I
    goto :goto_0

    .line 8428
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 8429
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 8430
    .restart local v5    # "sY":I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 8431
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 8432
    .restart local v1    # "dY":I
    goto :goto_0

    .line 8434
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

    .line 8435
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 8436
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 8437
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .restart local v1    # "dY":I
    goto :goto_0

    .line 8441
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

    .line 8442
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 8443
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 8444
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 8445
    .restart local v1    # "dY":I
    goto :goto_0

    .line 8414
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

.method private getTextFilterInput()Landroid/widget/EditText;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8767
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-nez v1, :cond_0

    .line 8768
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 8770
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v1, 0x1090175

    .line 8769
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 8774
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 8776
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 8777
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 8779
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    return-object v1
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 10528
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 10527
    :cond_0
    :goto_0
    return-void

    .line 10530
    :pswitch_0
    const/4 v5, 0x0

    .line 10532
    .local v5, "offset":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionCurrentTime:J

    .line 10533
    iget-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionCurrentTime:J

    iget-wide v10, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    iput-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    .line 10535
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    if-eqz v7, :cond_1

    iget-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionCurrentTime:J

    iget-wide v10, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    sub-long/2addr v8, v10

    iget-wide v10, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollTimeInterval:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_0

    .line 10537
    :cond_1
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    if-eqz v7, :cond_2

    iget-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionCurrentTime:J

    iget-wide v10, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    sub-long/2addr v8, v10

    iget-wide v10, p0, Landroid/widget/SemHorizontalAbsListView;->mPenDragScrollTimeInterval:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_0

    .line 10541
    :cond_2
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_SPEED:F

    .line 10542
    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 10541
    const/4 v9, 0x1

    invoke-static {v9, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    .line 10542
    const/high16 v8, 0x3f000000    # 0.5f

    .line 10541
    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    .line 10544
    iget-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x2

    cmp-long v7, v8, v10

    if-lez v7, :cond_6

    iget-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x4

    cmp-long v7, v8, v10

    if-gez v7, :cond_6

    .line 10545
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    int-to-double v8, v8

    const-wide v10, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    .line 10552
    :cond_3
    :goto_1
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_9

    .line 10553
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    mul-int/lit8 v5, v7, -0x1

    .line 10554
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    if-nez v7, :cond_8

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    if-eqz v7, :cond_8

    .line 10555
    :goto_2
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    iput-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 10556
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildRight:I

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromTrackedChildLeft:I

    .line 10557
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    .line 10558
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mOldHoverScrollDirection:I

    .line 10559
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCloseChildSetted:Z

    .line 10572
    :cond_4
    :goto_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 10576
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v7, :cond_17

    .line 10577
    if-gez v5, :cond_b

    .line 10578
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v8

    if-ne v7, v8, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    .line 10579
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    .line 10578
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    if-eq v7, v8, :cond_b

    .line 10581
    :cond_5
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    .line 10582
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v8, v8

    const/4 v10, 0x1

    invoke-virtual {v7, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 10546
    :cond_6
    iget-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x4

    cmp-long v7, v8, v10

    if-ltz v7, :cond_7

    iget-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x5

    cmp-long v7, v8, v10

    if-gez v7, :cond_7

    .line 10547
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    int-to-double v8, v8

    const-wide v10, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    goto/16 :goto_1

    .line 10548
    :cond_7
    iget-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x5

    cmp-long v7, v8, v10

    if-ltz v7, :cond_3

    .line 10549
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    int-to-double v8, v8

    const-wide v10, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    goto/16 :goto_1

    .line 10554
    :cond_8
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mOldHoverScrollDirection:I

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    if-eq v7, v8, :cond_4

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCloseChildSetted:Z

    if-eqz v7, :cond_4

    goto/16 :goto_2

    .line 10562
    :cond_9
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    mul-int/lit8 v5, v7, 0x1

    .line 10563
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    if-nez v7, :cond_a

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    if-eqz v7, :cond_a

    .line 10564
    :goto_4
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    iput-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 10565
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildRight:I

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromTrackedChildLeft:I

    .line 10566
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    .line 10567
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mOldHoverScrollDirection:I

    .line 10568
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCloseChildSetted:Z

    goto/16 :goto_3

    .line 10563
    :cond_a
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mOldHoverScrollDirection:I

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    if-eq v7, v8, :cond_4

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCloseChildSetted:Z

    if-eqz v7, :cond_4

    goto :goto_4

    .line 10584
    :cond_b
    if-lez v5, :cond_d

    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v7, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    if-eq v7, v8, :cond_d

    .line 10586
    :cond_c
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    .line 10587
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v8, v8

    const/4 v10, 0x1

    invoke-virtual {v7, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 10591
    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v6

    .line 10592
    .local v6, "overscrollMode":I
    if-eqz v6, :cond_10

    .line 10593
    const/4 v7, 0x1

    if-ne v6, v7, :cond_e

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->contentFits()Z

    move-result v7

    if-eqz v7, :cond_11

    :cond_e
    const/4 v0, 0x0

    .line 10595
    .local v0, "canOverscroll":Z
    :goto_5
    if-eqz v0, :cond_f

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-eqz v7, :cond_12

    .line 10618
    :cond_f
    :goto_6
    if-nez v0, :cond_0

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_0

    .line 10619
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    .line 10592
    .end local v0    # "canOverscroll":Z
    :cond_10
    const/4 v0, 0x1

    goto :goto_5

    .line 10593
    :cond_11
    const/4 v0, 0x1

    goto :goto_5

    .line 10596
    .restart local v0    # "canOverscroll":Z
    :cond_12
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_15

    .line 10598
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 10599
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 10600
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_13

    .line 10601
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 10612
    :cond_13
    :goto_7
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_14

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_16

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 10616
    :cond_14
    :goto_8
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    goto :goto_6

    .line 10603
    :cond_15
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_13

    .line 10605
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 10606
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 10607
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_13

    .line 10608
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_7

    .line 10613
    :cond_16
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_8

    .line 10625
    .end local v0    # "canOverscroll":Z
    .end local v6    # "overscrollMode":I
    :cond_17
    if-gez v5, :cond_19

    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v7, :cond_18

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    if-eq v7, v8, :cond_19

    .line 10626
    :cond_18
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    .line 10627
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v8, v8

    const/4 v10, 0x1

    invoke-virtual {v7, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 10629
    :cond_19
    if-lez v5, :cond_1b

    .line 10630
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v8

    if-ne v7, v8, :cond_1a

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    .line 10631
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    .line 10630
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    if-eq v7, v8, :cond_1b

    .line 10633
    :cond_1a
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    .line 10634
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v8, v8

    const/4 v10, 0x1

    invoke-virtual {v7, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 10637
    :cond_1b
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v6

    .line 10638
    .restart local v6    # "overscrollMode":I
    if-eqz v6, :cond_1e

    .line 10639
    const/4 v7, 0x1

    if-ne v6, v7, :cond_1c

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->contentFits()Z

    move-result v7

    if-eqz v7, :cond_1f

    :cond_1c
    const/4 v0, 0x0

    .line 10641
    .restart local v0    # "canOverscroll":Z
    :goto_9
    if-eqz v0, :cond_1d

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-eqz v7, :cond_20

    .line 10664
    :cond_1d
    :goto_a
    if-nez v0, :cond_0

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_0

    .line 10665
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    .line 10638
    .end local v0    # "canOverscroll":Z
    :cond_1e
    const/4 v0, 0x1

    goto :goto_9

    .line 10639
    :cond_1f
    const/4 v0, 0x1

    goto :goto_9

    .line 10642
    .restart local v0    # "canOverscroll":Z
    :cond_20
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_23

    .line 10644
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 10645
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 10646
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_21

    .line 10647
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 10658
    :cond_21
    :goto_b
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_22

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_24

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_24

    .line 10662
    :cond_22
    :goto_c
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    goto :goto_a

    .line 10649
    :cond_23
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_21

    .line 10651
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 10652
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 10653
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_21

    .line 10654
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_b

    .line 10659
    :cond_24
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_c

    .line 10674
    .end local v0    # "canOverscroll":Z
    .end local v5    # "offset":I
    .end local v6    # "overscrollMode":I
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 10676
    .local v3, "childCount":I
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 10681
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v8

    if-ne v7, v8, :cond_28

    .line 10682
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    if-eq v7, v8, :cond_29

    const/4 v2, 0x1

    .line 10684
    .local v2, "canScrollRight":Z
    :goto_d
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v7, :cond_25

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    if-eq v7, v8, :cond_2a

    :cond_25
    const/4 v1, 0x1

    .line 10687
    .local v1, "canScrollLeft":Z
    :goto_e
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 10686
    const/4 v8, 0x1

    const/high16 v9, 0x41f00000    # 30.0f

    invoke-static {v8, v9, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    .line 10687
    const/high16 v8, 0x3f000000    # 0.5f

    .line 10686
    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    .line 10689
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mQCLocation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2b

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    neg-int v4, v7

    .line 10691
    .local v4, "distanceToMove":I
    :goto_f
    if-gez v4, :cond_26

    if-nez v1, :cond_27

    :cond_26
    if-lez v4, :cond_2c

    if-eqz v2, :cond_2c

    .line 10693
    :cond_27
    const/4 v7, 0x0

    invoke-virtual {p0, v4, v7}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    .line 10694
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v8, v8

    const/4 v10, 0x2

    invoke-virtual {v7, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 10681
    .end local v1    # "canScrollLeft":Z
    .end local v2    # "canScrollRight":Z
    .end local v4    # "distanceToMove":I
    :cond_28
    const/4 v2, 0x1

    .restart local v2    # "canScrollRight":Z
    goto :goto_d

    .line 10682
    .end local v2    # "canScrollRight":Z
    :cond_29
    const/4 v2, 0x0

    .restart local v2    # "canScrollRight":Z
    goto :goto_d

    .line 10684
    :cond_2a
    const/4 v1, 0x0

    .restart local v1    # "canScrollLeft":Z
    goto :goto_e

    .line 10689
    :cond_2b
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    goto :goto_f

    .line 10697
    .restart local v4    # "distanceToMove":I
    :cond_2c
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v6

    .line 10698
    .restart local v6    # "overscrollMode":I
    if-eqz v6, :cond_2f

    .line 10699
    const/4 v7, 0x1

    if-ne v6, v7, :cond_2d

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->contentFits()Z

    move-result v7

    if-eqz v7, :cond_30

    :cond_2d
    const/4 v0, 0x0

    .line 10701
    .restart local v0    # "canOverscroll":Z
    :goto_10
    if-eqz v0, :cond_2e

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-eqz v7, :cond_31

    .line 10723
    :cond_2e
    :goto_11
    if-nez v0, :cond_0

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_0

    .line 10724
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    .line 10698
    .end local v0    # "canOverscroll":Z
    :cond_2f
    const/4 v0, 0x1

    goto :goto_10

    .line 10699
    :cond_30
    const/4 v0, 0x1

    goto :goto_10

    .line 10702
    .restart local v0    # "canOverscroll":Z
    :cond_31
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mQCLocation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_34

    .line 10703
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 10704
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 10705
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_32

    .line 10706
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 10716
    :cond_32
    :goto_12
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_33

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_35

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_35

    .line 10720
    :cond_33
    :goto_13
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    goto :goto_11

    .line 10708
    :cond_34
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mQCLocation:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_32

    .line 10709
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 10710
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 10711
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_32

    .line 10712
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_12

    .line 10717
    :cond_35
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_13

    .line 10730
    .end local v0    # "canOverscroll":Z
    .end local v1    # "canScrollLeft":Z
    .end local v2    # "canScrollRight":Z
    .end local v3    # "childCount":I
    .end local v4    # "distanceToMove":I
    .end local v6    # "overscrollMode":I
    :pswitch_2
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mQCLocation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_36

    .line 10731
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->doScrollToLeftEnd()V

    goto/16 :goto_0

    .line 10732
    :cond_36
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mQCLocation:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    .line 10733
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->doScrollToRightEnd()V

    goto/16 :goto_0

    .line 10528
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initAbsListView()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 1239
    invoke-virtual {p0, v5}, Landroid/view/View;->setClickable(Z)V

    .line 1240
    invoke-virtual {p0, v5}, Landroid/widget/AdapterView;->setFocusableInTouchMode(Z)V

    .line 1241
    invoke-virtual {p0, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 1242
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 1243
    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->setScrollingCacheEnabled(Z)V

    .line 1244
    invoke-virtual {p0}, Landroid/view/View;->semEnableHorizontalScrollbar()V

    .line 1246
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    .line 1247
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1248
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    .line 1249
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mMinimumVelocity:I

    .line 1250
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mMaximumVelocity:I

    .line 1251
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v3

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mOverscrollDistance:I

    .line 1252
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v3

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mOverflingDistance:I

    .line 1253
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mDensityScale:F

    .line 1256
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 1257
    .local v2, "value":Landroid/util/TypedValue;
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    .line 1258
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x11600dd

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    .line 1259
    .local v1, "resolved":Z
    if-eqz v1, :cond_0

    .line 1260
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    .line 1263
    :cond_0
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x11600de

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    .line 1264
    if-eqz v1, :cond_1

    .line 1265
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockImage:Landroid/graphics/drawable/Drawable;

    .line 1270
    .end local v0    # "configuration":Landroid/view/ViewConfiguration;
    .end local v1    # "resolved":Z
    .end local v2    # "value":Landroid/util/TypedValue;
    :cond_1
    new-instance v3, Landroid/view/HapticPreDrawListener;

    invoke-direct {v3}, Landroid/view/HapticPreDrawListener;-><init>()V

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    .line 1237
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 6746
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 6747
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6745
    :goto_0
    return-void

    .line 6749
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 6754
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 6755
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6753
    :cond_0
    return-void
.end method

.method private isLockScreenMode()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 4891
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "keyguard"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 4892
    .local v3, "keyguardManager":Landroid/app/KeyguardManager;
    const/4 v2, 0x0

    .line 4893
    .local v2, "isLockState":Z
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    .line 4895
    .local v2, "isLockState":Z
    const-string/jumbo v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 4896
    .local v4, "windowManager":Landroid/view/IWindowManager;
    const/4 v0, 0x1

    .line 4905
    .local v0, "isCoverOpen":Z
    const/4 v1, 0x0

    .line 4906
    .local v1, "isLockScreenAndCoverOpen":Z
    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4908
    .local v1, "isLockScreenAndCoverOpen":Z
    :goto_0
    return v1

    .local v1, "isLockScreenAndCoverOpen":Z
    :cond_0
    move v1, v5

    .line 4906
    goto :goto_0
.end method

.method private isOwnerThread()Z
    .locals 2

    .prologue
    .line 1818
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOwnerThread:Ljava/lang/Thread;

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
    .locals 2

    .prologue
    .line 10885
    sget v0, Landroid/widget/SemHorizontalAbsListView;->sSpenUspLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 10886
    const/4 v0, 0x1

    return v0

    .line 10888
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 10752
    const-string/jumbo v0, "SemHorizontalAbsListView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10751
    return-void
.end method

.method private onHoverDrawableState(Landroid/view/MotionEvent;)V
    .locals 17
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 6389
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 6390
    .local v1, "action":I
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    .line 6393
    .local v11, "toolType":I
    const/4 v14, 0x7

    if-eq v1, v14, :cond_0

    const/16 v14, 0x9

    if-ne v1, v14, :cond_2

    :cond_0
    const/4 v14, 0x2

    if-ne v11, v14, :cond_2

    .line 6394
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    .line 6400
    :cond_1
    :goto_0
    const/4 v14, 0x1

    if-eq v11, v14, :cond_4

    .line 6401
    const/4 v14, 0x3

    if-ne v11, v14, :cond_3

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoveredByMouse:Z

    .line 6402
    return-void

    .line 6395
    :cond_2
    const/16 v14, 0xa

    if-ne v1, v14, :cond_1

    .line 6396
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    goto :goto_0

    .line 6401
    :cond_3
    const/4 v14, 0x0

    goto :goto_1

    .line 6404
    :cond_4
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoveredByMouse:Z

    .line 6407
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-eqz v14, :cond_6

    .line 6408
    :cond_5
    return-void

    .line 6412
    :cond_6
    const/16 v14, 0x9

    if-ne v1, v14, :cond_8

    .line 6413
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    if-nez v14, :cond_7

    .line 6414
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 6417
    :cond_7
    return-void

    .line 6420
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->isMultiWindows()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 6421
    return-void

    .line 6424
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    if-nez v14, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInDialog()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 6425
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 6426
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 6427
    return-void

    .line 6430
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 6431
    const-string/jumbo v15, "finger_air_view"

    const/16 v16, 0x0

    .line 6430
    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 6431
    const/4 v15, 0x1

    .line 6430
    if-ne v14, v15, :cond_f

    const/4 v6, 0x1

    .line 6435
    .local v6, "isFingerAirView":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 6436
    const-string/jumbo v15, "finger_air_view_information_preview"

    const/16 v16, 0x0

    .line 6435
    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 6436
    const/4 v15, 0x1

    .line 6435
    if-ne v14, v15, :cond_10

    const/4 v7, 0x1

    .line 6438
    .local v7, "isFingerAirViewPreview":Z
    :goto_3
    if-eqz v6, :cond_15

    if-eqz v7, :cond_15

    .line 6441
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isHovered()Z

    move-result v14

    if-nez v14, :cond_c

    .line 6442
    const/4 v14, 0x1

    if-ne v11, v14, :cond_b

    .line 6443
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/View;->setFingerHovered(Z)V

    .line 6445
    :cond_b
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/View;->setHovered(Z)V

    .line 6447
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    float-to-int v12, v14

    .line 6448
    .local v12, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    float-to-int v13, v14

    .line 6449
    .local v13, "y":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v9

    .line 6450
    .local v9, "newHoverPosition":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverPosition:I

    if-eq v14, v9, :cond_11

    const/4 v2, 0x1

    .line 6451
    .local v2, "bChanged":Z
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->shouldShowSelectorDefault()Z

    move-result v10

    .line 6453
    .local v10, "shouldShowSelector":Z
    const/4 v3, 0x0

    .line 6455
    .local v3, "child":Landroid/view/View;
    if-gez v9, :cond_12

    .line 6456
    if-nez v10, :cond_d

    .line 6457
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 6460
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoveredOnEllipsizedText:Z

    if-eqz v14, :cond_e

    .line 6461
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 6462
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 6463
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoveredOnEllipsizedText:Z

    .line 6465
    :cond_e
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverPosition:I

    .line 6466
    return-void

    .line 6430
    .end local v2    # "bChanged":Z
    .end local v3    # "child":Landroid/view/View;
    .end local v6    # "isFingerAirView":Z
    .end local v7    # "isFingerAirViewPreview":Z
    .end local v9    # "newHoverPosition":I
    .end local v10    # "shouldShowSelector":Z
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_f
    const/4 v6, 0x0

    .restart local v6    # "isFingerAirView":Z
    goto :goto_2

    .line 6435
    :cond_10
    const/4 v7, 0x0

    .restart local v7    # "isFingerAirViewPreview":Z
    goto :goto_3

    .line 6450
    .restart local v9    # "newHoverPosition":I
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_11
    const/4 v2, 0x0

    .restart local v2    # "bChanged":Z
    goto :goto_4

    .line 6469
    .restart local v3    # "child":Landroid/view/View;
    .restart local v10    # "shouldShowSelector":Z
    :cond_12
    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverPosition:I

    .line 6471
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6473
    .local v3, "child":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->findEllipsizedTextView(Landroid/view/View;)Z

    move-result v5

    .line 6475
    .local v5, "foundEllipsizedTextView":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->findSetFingerHovedInAppWidget(Landroid/view/View;)Z

    move-result v8

    .line 6477
    .local v8, "isSetFingerHovedInAppWidget":Z
    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v14

    if-eqz v14, :cond_16

    if-eqz v5, :cond_16

    if-eqz v8, :cond_16

    .line 6478
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 6479
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoveredOnEllipsizedText:Z

    .line 6486
    :cond_13
    :goto_5
    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoveredOnEllipsizedText:Z

    if-eqz v14, :cond_14

    .line 6487
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->refreshDrawableState()V

    .line 6488
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 6491
    :cond_14
    const/16 v14, 0xa

    if-ne v1, v14, :cond_15

    if-eqz v10, :cond_17

    .line 6388
    .end local v2    # "bChanged":Z
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "foundEllipsizedTextView":Z
    .end local v8    # "isSetFingerHovedInAppWidget":Z
    .end local v9    # "newHoverPosition":I
    .end local v10    # "shouldShowSelector":Z
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_15
    :goto_6
    return-void

    .line 6481
    .restart local v2    # "bChanged":Z
    .restart local v3    # "child":Landroid/view/View;
    .restart local v5    # "foundEllipsizedTextView":Z
    .restart local v8    # "isSetFingerHovedInAppWidget":Z
    .restart local v9    # "newHoverPosition":I
    .restart local v10    # "shouldShowSelector":Z
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_16
    if-nez v10, :cond_13

    .line 6482
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 6499
    .end local v2    # "bChanged":Z
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "foundEllipsizedTextView":Z
    .end local v8    # "isSetFingerHovedInAppWidget":Z
    .end local v9    # "newHoverPosition":I
    .end local v10    # "shouldShowSelector":Z
    .end local v12    # "x":I
    .end local v13    # "y":I
    :catch_0
    move-exception v4

    .line 6500
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 6492
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "bChanged":Z
    .restart local v3    # "child":Landroid/view/View;
    .restart local v5    # "foundEllipsizedTextView":Z
    .restart local v8    # "isSetFingerHovedInAppWidget":Z
    .restart local v9    # "newHoverPosition":I
    .restart local v10    # "shouldShowSelector":Z
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_17
    const/4 v14, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoveredOnEllipsizedText:Z

    .line 6493
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverPosition:I

    .line 6494
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    .line 6495
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 6496
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 6497
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 6939
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v2, v4, 0x8

    .line 6941
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 6942
    .local v1, "pointerId":I
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    if-ne v1, v4, :cond_0

    .line 6946
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 6947
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    .line 6948
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionY:I

    .line 6949
    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    .line 6950
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    .line 6955
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    .line 6938
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    :cond_1
    move v0, v3

    .line 6946
    goto :goto_0
.end method

.method private onTouchCancel()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 6282
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    packed-switch v1, :pswitch_data_0

    .line 6295
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6296
    invoke-virtual {p0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 6297
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6298
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 6299
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 6301
    :cond_0
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->clearScrollingCache()V

    .line 6302
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6303
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->recycleVelocityTracker()V

    .line 6306
    .end local v0    # "motionView":Landroid/view/View;
    :goto_0
    :pswitch_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    .line 6307
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 6308
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 6310
    :cond_1
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    .line 6311
    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPointerCount:I

    .line 6281
    return-void

    .line 6284
    :pswitch_1
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez v1, :cond_2

    .line 6285
    new-instance v1, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    .line 6287
    :cond_2
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->startSpringback()V

    goto :goto_0

    .line 6282
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

    const/4 v5, 0x0

    .line 5987
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    packed-switch v4, :pswitch_data_0

    .line 6003
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    .line 6004
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 6005
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 6006
    .local v3, "y":I
    invoke-virtual {p0, v2, v3}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v0

    .line 6008
    .local v0, "motionPosition":I
    iget-boolean v4, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v4, :cond_1

    .line 6009
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-eq v4, v7, :cond_5

    if-ltz v0, :cond_5

    .line 6010
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    .line 6009
    if-eqz v4, :cond_5

    .line 6014
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6016
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    if-nez v4, :cond_0

    .line 6017
    new-instance v4, Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    invoke-direct {v4, p0, v6}, Landroid/widget/SemHorizontalAbsListView$CheckForTap;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$CheckForTap;)V

    iput-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    .line 6019
    :cond_0
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {p0, v4, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6032
    :cond_1
    :goto_0
    if-ltz v0, :cond_2

    .line 6034
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v4, v0, v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6035
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    .line 6037
    .end local v1    # "v":Landroid/view/View;
    :cond_2
    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    .line 6038
    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionY:I

    .line 6039
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    .line 6040
    const/high16 v4, -0x80000000

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    .line 6045
    .end local v0    # "motionPosition":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6046
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-nez v4, :cond_3

    .line 6047
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5986
    :cond_3
    return-void

    .line 5989
    :pswitch_0
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    .line 5990
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v4, :cond_4

    .line 5991
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v4}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 5993
    :cond_4
    const/4 v4, 0x5

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 5994
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    .line 5995
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionY:I

    .line 5996
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    .line 5997
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    .line 5998
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    goto :goto_1

    .line 6021
    .restart local v0    # "motionPosition":I
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    :cond_5
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-ne v4, v7, :cond_1

    .line 6023
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->createScrollingCache()V

    .line 6024
    const/4 v4, 0x3

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6025
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    .line 6026
    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->findMotionRow(I)I

    move-result v0

    .line 6027
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->flywheelTouch()V

    goto :goto_0

    .line 5987
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

    .line 6057
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 6058
    .local v1, "pointerIndex":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 6059
    const/4 v1, 0x0

    .line 6060
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    .line 6063
    :cond_0
    iget-boolean v4, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v4, :cond_1

    .line 6066
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    .line 6069
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v2, v4

    .line 6071
    .local v2, "x":I
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    packed-switch v4, :pswitch_data_0

    .line 6056
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 6077
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v2, v4, p2}, Landroid/widget/SemHorizontalAbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 6082
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 6083
    .local v3, "y":F
    int-to-float v4, v2

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    int-to-float v5, v5

    invoke-virtual {p0, v4, v3, v5}, Landroid/view/View;->pointInView(FFF)Z

    move-result v4

    if-nez v4, :cond_2

    .line 6084
    invoke-virtual {p0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 6085
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6086
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 6087
    invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 6089
    :cond_3
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-nez v4, :cond_4

    .line 6090
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    .line 6089
    :goto_1
    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6091
    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6092
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    goto :goto_0

    .line 6090
    :cond_4
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    goto :goto_1

    .line 6097
    .end local v0    # "motionView":Landroid/view/View;
    .end local v3    # "y":F
    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v2, v4, p2}, Landroid/widget/SemHorizontalAbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    goto :goto_0

    .line 6071
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
    .line 6103
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 6253
    :cond_0
    :goto_0
    :pswitch_0
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 6255
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 6256
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 6257
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 6261
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 6262
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6263
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->recycleVelocityTracker()V

    .line 6265
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    .line 6266
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mPointerCount:I

    .line 6275
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 6276
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StrictMode$Span;->finish()V

    .line 6277
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 6102
    :cond_2
    return-void

    .line 6107
    :pswitch_1
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    .line 6108
    .local v13, "motionPosition":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v13, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 6109
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_4

    .line 6110
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 6111
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 6114
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    .line 6115
    .local v16, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v16, v17

    if-lez v17, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v16, v17

    if-gez v17, :cond_5

    const/4 v10, 0x1

    .line 6116
    .local v10, "inList":Z
    :goto_1
    if-eqz v10, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 6175
    .end local v10    # "inList":Z
    .end local v16    # "y":F
    :cond_4
    :goto_2
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6176
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    goto/16 :goto_0

    .line 6115
    .restart local v16    # "y":F
    :cond_5
    const/4 v10, 0x0

    goto :goto_1

    .line 6117
    .restart local v10    # "inList":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    move-object/from16 v17, v0

    if-nez v17, :cond_7

    .line 6118
    new-instance v17, Landroid/widget/SemHorizontalAbsListView$PerformClick;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView$PerformClick;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$PerformClick;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    .line 6121
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    .line 6122
    .local v14, "performClick":Landroid/widget/SemHorizontalAbsListView$PerformClick;
    iput v13, v14, Landroid/widget/SemHorizontalAbsListView$PerformClick;->mClickMotionPosition:I

    .line 6123
    invoke-virtual {v14}, Landroid/widget/SemHorizontalAbsListView$WindowRunnnable;->rememberWindowAttachCount()V

    .line 6125
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    .line 6127
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    move/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 6128
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    move/from16 v17, v0

    if-nez v17, :cond_d

    .line 6129
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    move-object/from16 v17, v0

    .line 6128
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6130
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 6131
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move/from16 v17, v0

    if-nez v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 6132
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6133
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 6134
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    .line 6135
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 6136
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 6137
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 6138
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    .line 6139
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 6140
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    instance-of v0, v8, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 6141
    check-cast v8, Landroid/graphics/drawable/TransitionDrawable;

    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 6143
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 6145
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    .line 6146
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6148
    :cond_b
    new-instance v17, Landroid/widget/SemHorizontalAbsListView$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v14}, Landroid/widget/SemHorizontalAbsListView$4;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/view/View;Landroid/widget/SemHorizontalAbsListView$PerformClick;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 6160
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    .line 6161
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 6160
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6169
    :cond_c
    :goto_4
    return-void

    .line 6129
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    move-object/from16 v17, v0

    goto/16 :goto_3

    .line 6163
    :cond_e
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6164
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    .line 6165
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mForcedClick:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 6166
    invoke-virtual {v14}, Landroid/widget/SemHorizontalAbsListView$PerformClick;->run()V

    goto :goto_4

    .line 6170
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mForcedClick:Z

    move/from16 v17, v0

    if-nez v17, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move/from16 v17, v0

    if-nez v17, :cond_4

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 6171
    invoke-virtual {v14}, Landroid/widget/SemHorizontalAbsListView$PerformClick;->run()V

    goto/16 :goto_2

    .line 6179
    .end local v4    # "child":Landroid/view/View;
    .end local v10    # "inList":Z
    .end local v13    # "motionPosition":I
    .end local v14    # "performClick":Landroid/widget/SemHorizontalAbsListView$PerformClick;
    .end local v16    # "y":F
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 6180
    .local v5, "childCount":I
    if-lez v5, :cond_18

    .line 6183
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    move/from16 v17, v0

    if-eqz v17, :cond_11

    .line 6184
    add-int/lit8 v17, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 6185
    .local v9, "firstChildLeft":I
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v12

    .line 6190
    .local v12, "lastChildRight":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/Rect;->left:I

    .line 6191
    .local v6, "contentLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v7, v17, v18

    .line 6192
    .local v7, "contentRight":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    if-nez v17, :cond_12

    if-lt v9, v6, :cond_12

    .line 6193
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    add-int v17, v17, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_12

    .line 6194
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v17

    sub-int v17, v17, v7

    move/from16 v0, v17

    if-gt v12, v0, :cond_12

    .line 6195
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6196
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 6187
    .end local v6    # "contentLeft":I
    .end local v7    # "contentRight":I
    .end local v9    # "firstChildLeft":I
    .end local v12    # "lastChildRight":I
    :cond_11
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 6188
    .restart local v9    # "firstChildLeft":I
    add-int/lit8 v17, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v12

    .restart local v12    # "lastChildRight":I
    goto :goto_5

    .line 6198
    .restart local v6    # "contentLeft":I
    .restart local v7    # "contentRight":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6199
    .local v15, "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mMaximumVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x3e8

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 6202
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mVelocityScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    .line 6201
    move/from16 v0, v17

    float-to-int v11, v0

    .line 6207
    .local v11, "initialVelocity":I
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mMinimumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_16

    .line 6208
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    if-nez v17, :cond_13

    .line 6209
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOverscrollDistance:I

    move/from16 v17, v0

    sub-int v17, v6, v17

    move/from16 v0, v17

    if-eq v9, v0, :cond_16

    .line 6210
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    add-int v17, v17, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    .line 6211
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOverscrollDistance:I

    move/from16 v17, v0

    add-int v17, v17, v7

    move/from16 v0, v17

    if-eq v12, v0, :cond_16

    .line 6212
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    if-nez v17, :cond_15

    .line 6213
    new-instance v17, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    .line 6215
    :cond_15
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 6217
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    neg-int v0, v11

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_0

    .line 6219
    :cond_16
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6220
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 6221
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_17

    .line 6222
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    .line 6224
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 6225
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    goto/16 :goto_0

    .line 6230
    .end local v6    # "contentLeft":I
    .end local v7    # "contentRight":I
    .end local v9    # "firstChildLeft":I
    .end local v11    # "initialVelocity":I
    .end local v12    # "lastChildRight":I
    .end local v15    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_18
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6231
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 6236
    .end local v5    # "childCount":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    if-nez v17, :cond_19

    .line 6237
    new-instance v17, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    .line 6239
    :cond_19
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6240
    .restart local v15    # "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mMaximumVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x3e8

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 6241
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v11, v0

    .line 6243
    .restart local v11    # "initialVelocity":I
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 6244
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mMinimumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1a

    .line 6245
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    neg-int v0, v11

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_0

    .line 6247
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_0

    .line 6103
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

.method private positionPopup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 8387
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 8388
    .local v1, "screenHeight":I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 8389
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 8392
    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mDensityScale:F

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 8393
    .local v0, "bottomGap":I
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 8394
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 8395
    aget v4, v2, v7

    .line 8394
    const/16 v5, 0x51

    invoke-virtual {v3, p0, v5, v4, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 8386
    :goto_0
    return-void

    .line 8397
    :cond_0
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

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
    .line 3353
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    if-eq p1, v4, :cond_6

    const/4 v1, 0x1

    .line 3354
    .local v1, "positionChanged":Z
    :goto_0
    const/4 v4, -0x1

    if-eq p1, v4, :cond_0

    .line 3355
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    .line 3358
    :cond_0
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3359
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

    .line 3362
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionLeftPadding:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 3363
    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionTopPadding:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 3364
    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionRightPadding:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 3365
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionBottomPadding:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 3368
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3369
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_4

    .line 3370
    if-eqz v1, :cond_1

    .line 3373
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 3374
    sget-object v4, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3376
    :cond_1
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3377
    if-eqz v1, :cond_3

    .line 3378
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 3379
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 3381
    :cond_2
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    .line 3383
    :cond_3
    if-eqz p3, :cond_4

    .line 3384
    invoke-virtual {v2, p4, p5}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 3388
    :cond_4
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsChildViewEnabled:Z

    .line 3389
    .local v0, "isChildViewEnabled":Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eq v4, v0, :cond_5

    .line 3390
    if-eqz v0, :cond_7

    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsChildViewEnabled:Z

    .line 3391
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    .line 3392
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 3352
    :cond_5
    return-void

    .line 3353
    .end local v0    # "isChildViewEnabled":Z
    .end local v1    # "positionChanged":Z
    .end local v2    # "selector":Landroid/graphics/drawable/Drawable;
    .end local v3    # "selectorRect":Landroid/graphics/Rect;
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "positionChanged":Z
    goto :goto_0

    .line 3390
    .restart local v0    # "isChildViewEnabled":Z
    .restart local v2    # "selector":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "selectorRect":Landroid/graphics/Rect;
    :cond_7
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private postOnJumpScrollToFinished()V
    .locals 1

    .prologue
    .line 6335
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$5;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$5;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6334
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6760
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 6761
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 6762
    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6759
    :cond_0
    return-void
.end method

.method private releaseAllBoosters()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1030
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_0

    .line 1031
    invoke-static {v1}, Lcom/samsung/android/os/SemPerfManager;->onScrollEvent(Z)V

    .line 1032
    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    .line 1029
    :cond_0
    return-void
.end method

.method private scrollIfNeeded(IILandroid/view/MotionEvent;)V
    .locals 36
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4649
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    sub-int v33, p1, v3

    .line 4650
    .local v33, "rawDeltaX":I
    const/16 v35, 0x0

    .line 4651
    .local v35, "scrollOffsetCorrection":I
    const/16 v34, 0x0

    .line 4652
    .local v34, "scrollConsumedCorrection":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_0

    .line 4653
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    sub-int v33, v33, v3

    .line 4655
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    sub-int v3, v3, p1

    .line 4656
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollConsumed:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    .line 4655
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v3, v4, v5}, Landroid/view/View;->dispatchNestedPreScroll(II[I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4657
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollConsumed:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    add-int v33, v33, v3

    .line 4658
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    neg-int v0, v3

    move/from16 v35, v0

    .line 4659
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollConsumed:[I

    const/4 v4, 0x0

    aget v34, v3, v4

    .line 4660
    if-eqz p3, :cond_1

    .line 4661
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4662
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    .line 4665
    :cond_1
    move/from16 v20, v33

    .line 4667
    .local v20, "deltaX":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    sub-int v3, p1, v3

    add-int v21, v3, v34

    .line 4668
    .local v21, "incrementalDeltaX":I
    :goto_1
    const/16 v22, 0x0

    .line 4670
    .local v22, "lastXCorrection":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_13

    .line 4678
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v3, :cond_2

    .line 4680
    const-string/jumbo v3, "SemHorizontalAbsListView-scroll"

    invoke-static {v3}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 4683
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_8

    .line 4687
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-nez v3, :cond_3

    .line 4688
    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    if-le v3, v4, :cond_3

    .line 4689
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v32

    .line 4690
    .local v32, "parent":Landroid/view/ViewParent;
    if-eqz v32, :cond_3

    .line 4691
    const/4 v3, 0x1

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4696
    .end local v32    # "parent":Landroid/view/ViewParent;
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    if-ltz v3, :cond_b

    .line 4697
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v23, v3, v4

    .line 4704
    .local v23, "motionIndex":I
    :goto_2
    const/16 v26, 0x0

    .line 4705
    .local v26, "motionViewPrevLeft":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 4706
    .local v25, "motionView":Landroid/view/View;
    if-eqz v25, :cond_4

    .line 4707
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I

    move-result v26

    .line 4711
    :cond_4
    const/16 v18, 0x0

    .line 4712
    .local v18, "atEdge":Z
    if-eqz v21, :cond_5

    .line 4713
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->trackMotionScroll(II)Z

    move-result v18

    .line 4717
    .end local v18    # "atEdge":Z
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 4718
    if-eqz v25, :cond_7

    .line 4721
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I

    move-result v27

    .line 4722
    .local v27, "motionViewRealLeft":I
    if-eqz v18, :cond_6

    .line 4725
    move/from16 v0, v21

    neg-int v3, v0

    .line 4726
    sub-int v4, v27, v26

    .line 4725
    sub-int v7, v3, v4

    .line 4727
    .local v7, "overscroll":I
    sub-int v4, v7, v21

    .line 4728
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    .line 4727
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/view/View;->dispatchNestedScroll(IIII[I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 4729
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    rsub-int/lit8 v22, v3, 0x0

    .line 4730
    if-eqz p3, :cond_6

    .line 4731
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4732
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    .line 4772
    .end local v7    # "overscroll":I
    :cond_6
    :goto_3
    add-int v3, p1, v22

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    .line 4774
    .end local v27    # "motionViewRealLeft":I
    :cond_7
    add-int v3, p1, v22

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    .line 4648
    .end local v23    # "motionIndex":I
    .end local v25    # "motionView":Landroid/view/View;
    .end local v26    # "motionViewPrevLeft":I
    :cond_8
    :goto_4
    return-void

    .line 4655
    .end local v20    # "deltaX":I
    .end local v21    # "incrementalDeltaX":I
    .end local v22    # "lastXCorrection":I
    :cond_9
    move/from16 v0, v33

    neg-int v3, v0

    goto/16 :goto_0

    .line 4667
    .restart local v20    # "deltaX":I
    :cond_a
    move/from16 v21, v20

    .restart local v21    # "incrementalDeltaX":I
    goto/16 :goto_1

    .line 4701
    .restart local v22    # "lastXCorrection":I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    div-int/lit8 v23, v3, 0x2

    .restart local v23    # "motionIndex":I
    goto/16 :goto_2

    .line 4736
    .restart local v7    # "overscroll":I
    .restart local v25    # "motionView":Landroid/view/View;
    .restart local v26    # "motionViewPrevLeft":I
    .restart local v27    # "motionViewRealLeft":I
    :cond_c
    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/View;->mScrollX:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mOverscrollDistance:I

    .line 4735
    const/4 v8, 0x0

    .line 4736
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v6, p0

    .line 4735
    invoke-virtual/range {v6 .. v15}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    move-result v19

    .line 4738
    .local v19, "atOverscrollEdge":Z
    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_d

    .line 4740
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 4743
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v31

    .line 4744
    .local v31, "overscrollMode":I
    if-eqz v31, :cond_e

    .line 4745
    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_6

    .line 4746
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_6

    .line 4747
    :cond_e
    if-nez v19, :cond_f

    .line 4748
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    .line 4749
    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 4751
    :cond_f
    if-lez v21, :cond_11

    .line 4752
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    neg-int v4, v7

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 4753
    move/from16 v0, p2

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    .line 4752
    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 4754
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_10

    .line 4755
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4757
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    .line 4758
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 4757
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_3

    .line 4759
    :cond_11
    if-gez v21, :cond_6

    .line 4760
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    int-to-float v4, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 4761
    move/from16 v0, p2

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 4760
    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 4762
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_12

    .line 4763
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4765
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 4766
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v4

    .line 4765
    sub-int/2addr v3, v4

    .line 4766
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 4767
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 4766
    const/4 v6, 0x0

    .line 4765
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_3

    .line 4776
    .end local v7    # "overscroll":I
    .end local v19    # "atOverscrollEdge":Z
    .end local v23    # "motionIndex":I
    .end local v25    # "motionView":Landroid/view/View;
    .end local v26    # "motionViewPrevLeft":I
    .end local v27    # "motionViewRealLeft":I
    .end local v31    # "overscrollMode":I
    :cond_13
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_8

    .line 4777
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_8

    .line 4778
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v30, v0

    .line 4779
    .local v30, "oldScroll":I
    sub-int v29, v30, v21

    .line 4780
    .local v29, "newScroll":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    move/from16 v0, p1

    if-le v0, v3, :cond_19

    const/16 v28, 0x1

    .line 4782
    .local v28, "newDirection":I
    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    if-nez v3, :cond_14

    .line 4783
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    .line 4786
    :cond_14
    move/from16 v0, v21

    neg-int v9, v0

    .line 4787
    .local v9, "overScrollDistance":I
    if-gez v29, :cond_1a

    if-ltz v30, :cond_1a

    .line 4788
    :cond_15
    move/from16 v0, v30

    neg-int v9, v0

    .line 4789
    add-int v21, v21, v9

    .line 4794
    :goto_6
    if-eqz v9, :cond_16

    .line 4795
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/View;->mScrollX:I

    .line 4796
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/SemHorizontalAbsListView;->mOverscrollDistance:I

    .line 4795
    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 4796
    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v8, p0

    .line 4795
    invoke-virtual/range {v8 .. v17}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    .line 4797
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v31

    .line 4798
    .restart local v31    # "overscrollMode":I
    if-eqz v31, :cond_1c

    .line 4799
    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_16

    .line 4800
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->contentFits()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 4823
    .end local v31    # "overscrollMode":I
    :cond_16
    :goto_7
    if-eqz v21, :cond_18

    .line 4825
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mScrollX:I

    if-eqz v3, :cond_17

    .line 4826
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mScrollX:I

    .line 4827
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 4830
    :cond_17
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->trackMotionScroll(II)Z

    .line 4832
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 4836
    invoke-virtual/range {p0 .. p1}, Landroid/widget/SemHorizontalAbsListView;->findClosestMotionRow(I)I

    move-result v24

    .line 4838
    .local v24, "motionPosition":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    .line 4839
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v3, v24, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 4840
    .restart local v25    # "motionView":Landroid/view/View;
    if-eqz v25, :cond_20

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I

    move-result v3

    :goto_8
    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    .line 4841
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    .line 4842
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    .line 4844
    .end local v24    # "motionPosition":I
    .end local v25    # "motionView":Landroid/view/View;
    :cond_18
    add-int/lit8 v3, p1, 0x0

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    .line 4845
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    goto/16 :goto_4

    .line 4780
    .end local v9    # "overScrollDistance":I
    .end local v28    # "newDirection":I
    :cond_19
    const/16 v28, -0x1

    .restart local v28    # "newDirection":I
    goto/16 :goto_5

    .line 4787
    .restart local v9    # "overScrollDistance":I
    :cond_1a
    if-lez v29, :cond_1b

    if-lez v30, :cond_15

    .line 4791
    :cond_1b
    const/16 v21, 0x0

    goto/16 :goto_6

    .line 4801
    .restart local v31    # "overscrollMode":I
    :cond_1c
    if-lez v33, :cond_1e

    .line 4802
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    int-to-float v4, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 4803
    move/from16 v0, p2

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    .line 4802
    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 4804
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 4805
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4807
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    .line 4808
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 4807
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_7

    .line 4810
    :cond_1e
    if-gez v33, :cond_16

    .line 4811
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    int-to-float v4, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 4812
    move/from16 v0, p2

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 4811
    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 4813
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 4814
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4816
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 4817
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v4

    .line 4816
    sub-int/2addr v3, v4

    .line 4817
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 4818
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 4817
    const/4 v6, 0x0

    .line 4816
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_7

    .line 4840
    .end local v31    # "overscrollMode":I
    .restart local v24    # "motionPosition":I
    .restart local v25    # "motionView":Landroid/view/View;
    :cond_20
    const/4 v3, 0x0

    goto/16 :goto_8
.end method

.method private semGetEnableVibrationAtLongPress()Z
    .locals 1

    .prologue
    .line 1012
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEnableVibrationAtLongPress:Z

    return v0
.end method

.method private semNotifyMultiSelectState(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1572
    const/4 v0, 0x0

    .line 1573
    .local v0, "handledNotifyMultiSelect":Z
    iget-boolean v6, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    iget-boolean v8, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-super/range {v1 .. v8}, Landroid/widget/AdapterView;->semNotifyMultiSelectedState(Landroid/view/View;IJZZZ)Z

    move-result v0

    .line 1575
    .local v0, "handledNotifyMultiSelect":Z
    return v0
.end method

.method private setFastScrollerAlwaysVisibleUiThread(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 1809
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_0

    .line 1810
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setAlwaysShow(Z)V

    .line 1808
    :cond_0
    return-void
.end method

.method private setFastScrollerEnabledUiThread(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1745
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_2

    .line 1746
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setEnabled(Z)V

    .line 1752
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->resolvePadding()V

    .line 1754
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_1

    .line 1755
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->updateLayout()V

    .line 1744
    :cond_1
    return-void

    .line 1747
    :cond_2
    if-eqz p1, :cond_0

    .line 1748
    new-instance v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollStyle:I

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;-><init>(Landroid/widget/SemHorizontalAbsListView;I)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    .line 1749
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setItemViewLayoutParams(Landroid/view/View;I)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 3196
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 3198
    .local v1, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_1

    .line 3199
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 3206
    .local v0, "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    :goto_0
    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapterHasStableIds:Z

    if-eqz v2, :cond_0

    .line 3207
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->itemId:J

    .line 3209
    :cond_0
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    iput v2, v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    .line 3210
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3195
    return-void

    .line 3200
    .end local v0    # "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3201
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .restart local v0    # "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    goto :goto_0

    .end local v0    # "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    :cond_2
    move-object v0, v1

    .line 3203
    check-cast v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .restart local v0    # "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    goto :goto_0
.end method

.method private setupQuickController(I)V
    .locals 21
    .param p1, "where"    # I

    .prologue
    .line 10892
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v15

    .line 10893
    .local v15, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 10894
    .local v9, "h":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v16, v0

    sub-int v16, v9, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v17, v0

    sub-int v7, v16, v17

    .line 10895
    .local v7, "contentH":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v16, v0

    div-int/lit8 v17, v7, 0x2

    add-int v5, v16, v17

    .line 10897
    .local v5, "centerY":I
    const/4 v4, 0x0

    .line 10898
    .local v4, "btnW":I
    const/4 v3, 0x0

    .line 10900
    .local v3, "btnH":I
    const/4 v13, 0x0

    .line 10901
    .local v13, "paddingLeft":I
    const/4 v14, 0x0

    .line 10903
    .local v14, "paddingRight":I
    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/SemHorizontalAbsListView;->mQCLocation:I

    .line 10904
    .local v11, "oldLocation":I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCLocation:I

    .line 10906
    const/4 v6, 0x1

    .line 10907
    .local v6, "checkBoundary":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    .line 10908
    .local v2, "basePkgName":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string/jumbo v16, "cocktailbarservice"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 10911
    const/4 v6, 0x0

    .line 10916
    :cond_0
    if-eqz v6, :cond_2

    .line 10917
    const/16 v16, 0x0

    const/16 v17, 0x0

    filled-new-array/range {v16 .. v17}, [I

    move-result-object v10

    .line 10918
    .local v10, "locOnScr":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 10919
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 10922
    .local v8, "dm":Landroid/util/DisplayMetrics;
    const/16 v16, 0x1

    aget v16, v10, v16

    if-gez v16, :cond_1

    .line 10923
    const/16 v16, 0x1

    aget v16, v10, v16

    move/from16 v0, v16

    neg-int v12, v0

    .line 10924
    .local v12, "overlappedH":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v12, v0, :cond_1

    .line 10925
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v16, v0

    sub-int v16, v12, v16

    div-int/lit8 v16, v16, 0x2

    add-int v5, v5, v16

    .line 10930
    .end local v12    # "overlappedH":I
    :cond_1
    const/16 v16, 0x1

    aget v16, v10, v16

    add-int v16, v16, v9

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    .line 10931
    const/16 v16, 0x1

    aget v16, v10, v16

    add-int v16, v16, v9

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    sub-int v12, v16, v17

    .line 10932
    .restart local v12    # "overlappedH":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v12, v0, :cond_2

    .line 10933
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v16, v0

    sub-int v16, v12, v16

    div-int/lit8 v16, v16, 0x2

    sub-int v5, v5, v16

    .line 10938
    .end local v8    # "dm":Landroid/util/DisplayMetrics;
    .end local v10    # "locOnScr":[I
    .end local v12    # "overlappedH":I
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    .line 10939
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v13, v0, Landroid/graphics/Rect;->left:I

    .line 10940
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v14, v0, Landroid/graphics/Rect;->right:I

    .line 10946
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 10982
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 10983
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 10891
    return-void

    .line 10942
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInLeftHoverArea:I

    .line 10943
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInRightHoverArea:I

    goto :goto_0

    .line 10948
    :pswitch_0
    new-instance v16, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v16 .. v20}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCRect:Landroid/graphics/Rect;

    goto :goto_1

    .line 10952
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCLocation:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v0, v11, :cond_4

    .line 10953
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x108053f

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    .line 10954
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x1080540

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 10957
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 10958
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 10959
    new-instance v16, Landroid/graphics/Rect;

    add-int/lit8 v17, v13, 0x0

    div-int/lit8 v18, v3, 0x2

    sub-int v18, v5, v18

    add-int v19, v4, v13

    div-int/lit8 v20, v3, 0x2

    add-int v20, v20, v5

    invoke-direct/range {v16 .. v20}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_1

    .line 10963
    :pswitch_2
    new-instance v16, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v16 .. v20}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_1

    .line 10967
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCLocation:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v0, v11, :cond_5

    .line 10968
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x108053d

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    .line 10969
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x108053e

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 10972
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 10973
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 10974
    new-instance v16, Landroid/graphics/Rect;

    sub-int v17, v15, v3

    sub-int v17, v17, v14

    div-int/lit8 v18, v3, 0x2

    sub-int v18, v5, v18

    sub-int v19, v15, v14

    div-int/lit8 v20, v3, 0x2

    add-int v20, v20, v5

    invoke-direct/range {v16 .. v20}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_1

    .line 10946
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private showPointerIcon(Landroid/view/MotionEvent;I)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "iconId"    # I

    .prologue
    .line 10743
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    .line 10744
    .local v0, "inputDevice":Landroid/view/InputDevice;
    if-eqz v0, :cond_0

    .line 10745
    invoke-virtual {v0, p2}, Landroid/view/InputDevice;->setPointerType(I)V

    .line 10742
    :goto_0
    return-void

    .line 10747
    :cond_0
    const-string/jumbo v1, "SemHorizontalAbsListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to change PointerIcon to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 8378
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 8379
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->createTextFilter(Z)V

    .line 8380
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->positionPopup()V

    .line 8382
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkFocus()V

    .line 8376
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

    .line 4603
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    sub-int v1, p1, v7

    .line 4604
    .local v1, "deltaX":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 4605
    .local v2, "distance":I
    iget v7, p0, Landroid/view/View;->mScrollX:I

    if-eqz v7, :cond_2

    move v5, v8

    .line 4606
    .local v5, "overscroll":Z
    :goto_0
    if-nez v5, :cond_0

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    if-le v2, v7, :cond_7

    .line 4607
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getNestedScrollAxes()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_7

    .line 4608
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->createScrollingCache()V

    .line 4609
    if-eqz v5, :cond_3

    .line 4610
    const/4 v7, 0x5

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 4611
    iput v9, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    .line 4616
    :goto_1
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    invoke-virtual {p0, v7}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4617
    invoke-virtual {p0, v9}, Landroid/view/View;->setPressed(Z)V

    .line 4618
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v7, v10

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4619
    .local v4, "motionView":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 4620
    invoke-virtual {v4, v9}, Landroid/view/View;->setPressed(Z)V

    .line 4623
    :cond_1
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mPointerCount:I

    if-le v7, v8, :cond_5

    .line 4629
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 4630
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_5

    .line 4631
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setPressed(Z)V

    .line 4630
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0    # "childCount":I
    .end local v3    # "i":I
    .end local v4    # "motionView":Landroid/view/View;
    .end local v5    # "overscroll":Z
    :cond_2
    move v5, v9

    .line 4605
    goto :goto_0

    .line 4613
    .restart local v5    # "overscroll":Z
    :cond_3
    const/4 v7, 0x3

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 4614
    if-lez v1, :cond_4

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    :goto_3
    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    goto :goto_1

    :cond_4
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    neg-int v7, v7

    goto :goto_3

    .line 4634
    .restart local v4    # "motionView":Landroid/view/View;
    :cond_5
    invoke-virtual {p0, v8}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 4637
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 4638
    .local v6, "parent":Landroid/view/ViewParent;
    if-eqz v6, :cond_6

    .line 4639
    invoke-interface {v6, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4641
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SemHorizontalAbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    .line 4642
    return v8

    .line 4645
    .end local v4    # "motionView":Landroid/view/View;
    .end local v6    # "parent":Landroid/view/ViewParent;
    :cond_7
    return v9
.end method

.method private updateOnScreenCheckedViews()V
    .locals 8

    .prologue
    .line 1584
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1585
    .local v2, "firstPos":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1586
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1587
    const/16 v7, 0xb

    .line 1586
    if-lt v6, v7, :cond_1

    const/4 v5, 0x1

    .line 1588
    .local v5, "useActivated":Z
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 1589
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1590
    .local v0, "child":Landroid/view/View;
    add-int v4, v2, v3

    .line 1592
    .local v4, "position":I
    instance-of v6, v0, Landroid/widget/Checkable;

    if-eqz v6, :cond_2

    .line 1593
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "child":Landroid/view/View;
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1588
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1586
    .end local v3    # "i":I
    .end local v4    # "position":I
    .end local v5    # "useActivated":Z
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "useActivated":Z
    goto :goto_0

    .line 1594
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    .restart local v4    # "position":I
    :cond_2
    if-eqz v5, :cond_0

    .line 1595
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2

    .line 1583
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "position":I
    :cond_3
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 2206
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2207
    const v1, 0x1080062

    .line 2206
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2205
    return-void
.end method


# virtual methods
.method public addExtraPaddingInLeftHoverArea(I)V
    .locals 3
    .param p1, "extraSpace"    # I

    .prologue
    .line 4936
    int-to-float v0, p1

    .line 4937
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 4936
    const/4 v2, 0x1

    .line 4935
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 4937
    const/high16 v1, 0x3f000000    # 0.5f

    .line 4935
    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInLeftHoverArea:I

    .line 4934
    return-void
.end method

.method public addExtraPaddingInRightHoverArea(I)V
    .locals 3
    .param p1, "extraSpace"    # I

    .prologue
    .line 4945
    int-to-float v0, p1

    .line 4946
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 4945
    const/4 v2, 0x1

    .line 4944
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 4946
    const/high16 v1, 0x3f000000    # 0.5f

    .line 4944
    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInRightHoverArea:I

    .line 4943
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
    .line 6964
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 6965
    .local v2, "count":I
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 6966
    .local v3, "firstPosition":I
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 6968
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_0

    .line 6969
    return-void

    .line 6972
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 6973
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6974
    .local v1, "child":Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6975
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6977
    :cond_1
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 6972
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6963
    .end local v1    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 8902
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 8837
    return-void
.end method

.method public canScrollList(I)Z
    .locals 10
    .param p1, "direction"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 7624
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7625
    .local v0, "childCount":I
    if-nez v0, :cond_0

    .line 7626
    return v7

    .line 7629
    :cond_0
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 7630
    .local v2, "firstPosition":I
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 7631
    .local v5, "listPadding":Landroid/graphics/Rect;
    if-lez p1, :cond_5

    .line 7633
    iget-boolean v8, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v8, :cond_2

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v4

    .line 7636
    .local v4, "lastRight":I
    :goto_0
    add-int v3, v2, v0

    .line 7637
    .local v3, "lastPosition":I
    iget-boolean v8, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v8, :cond_4

    if-lez v2, :cond_3

    :cond_1
    :goto_1
    return v6

    .line 7634
    .end local v3    # "lastPosition":I
    .end local v4    # "lastRight":I
    :cond_2
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v4

    .restart local v4    # "lastRight":I
    goto :goto_0

    .restart local v3    # "lastPosition":I
    :cond_3
    move v6, v7

    .line 7637
    goto :goto_1

    :cond_4
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lt v3, v8, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    if-le v4, v8, :cond_3

    goto :goto_1

    .line 7640
    .end local v3    # "lastPosition":I
    .end local v4    # "lastRight":I
    :cond_5
    iget-boolean v8, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v8, :cond_7

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 7642
    .local v1, "firstLeft":I
    :goto_2
    add-int v3, v2, v0

    .line 7643
    .restart local v3    # "lastPosition":I
    iget-boolean v8, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v8, :cond_9

    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v3, v8, :cond_8

    :cond_6
    :goto_3
    return v6

    .line 7641
    .end local v1    # "firstLeft":I
    .end local v3    # "lastPosition":I
    :cond_7
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v1

    .restart local v1    # "firstLeft":I
    goto :goto_2

    .restart local v3    # "lastPosition":I
    :cond_8
    move v6, v7

    .line 7643
    goto :goto_3

    :cond_9
    if-gtz v2, :cond_6

    iget v8, v5, Landroid/graphics/Rect;->left:I

    if-ge v1, v8, :cond_8

    goto :goto_3
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 8737
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

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
    .line 8969
    instance-of v0, p1, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 1396
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1397
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1399
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 1400
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1402
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    .line 1395
    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    .prologue
    .line 8786
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 8787
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8788
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    .line 8789
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8790
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    .line 8785
    :cond_0
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2652
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2654
    .local v0, "count":I
    if-lez v0, :cond_6

    .line 2655
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_5

    .line 2656
    mul-int/lit8 v1, v0, 0x64

    .line 2658
    .local v1, "extent":I
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v7, :cond_2

    .line 2660
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2661
    .local v5, "viewLast":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 2662
    .local v2, "left":I
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 2663
    .local v6, "width":I
    if-lez v6, :cond_0

    .line 2664
    mul-int/lit8 v7, v2, 0x64

    div-int/2addr v7, v6

    add-int/2addr v1, v7

    .line 2666
    :cond_0
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2667
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    .line 2668
    .local v3, "right":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 2669
    if-lez v6, :cond_1

    .line 2670
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int v7, v3, v7

    mul-int/lit8 v7, v7, 0x64

    div-int/2addr v7, v6

    sub-int/2addr v1, v7

    .line 2672
    :cond_1
    return v1

    .line 2674
    .end local v2    # "left":I
    .end local v3    # "right":I
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "viewLast":Landroid/view/View;
    .end local v6    # "width":I
    :cond_2
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2675
    .restart local v4    # "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 2676
    .restart local v2    # "left":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 2677
    .restart local v6    # "width":I
    if-lez v6, :cond_3

    .line 2678
    mul-int/lit8 v7, v2, 0x64

    div-int/2addr v7, v6

    add-int/2addr v1, v7

    .line 2680
    :cond_3
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2681
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    .line 2682
    .restart local v3    # "right":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 2683
    if-lez v6, :cond_4

    .line 2684
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int v7, v3, v7

    mul-int/lit8 v7, v7, 0x64

    div-int/2addr v7, v6

    sub-int/2addr v1, v7

    .line 2686
    :cond_4
    return v1

    .line 2690
    .end local v1    # "extent":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    .end local v4    # "view":Landroid/view/View;
    .end local v6    # "width":I
    :cond_5
    const/4 v7, 0x1

    return v7

    .line 2693
    :cond_6
    return v8
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 13

    .prologue
    const/high16 v12, 0x42c80000    # 100.0f

    const/4 v11, 0x0

    .line 2715
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2716
    .local v2, "firstPosition":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2717
    .local v0, "childCount":I
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v4, v8, -0x1

    .line 2719
    .local v4, "lastPosition":I
    if-ltz v2, :cond_4

    if-lez v0, :cond_4

    .line 2720
    iget-boolean v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    .line 2721
    iget-boolean v8, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v8, :cond_0

    .line 2722
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2723
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v5

    .line 2725
    .local v5, "left":I
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 2726
    .local v7, "width":I
    if-lez v7, :cond_4

    .line 2727
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v8, v4

    mul-int/lit8 v8, v8, 0x64

    mul-int/lit8 v9, v5, 0x64

    div-int/2addr v9, v7

    sub-int/2addr v8, v9

    .line 2728
    iget v9, p0, Landroid/view/View;->mScrollX:I

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    mul-float/2addr v9, v12

    float-to-int v9, v9

    .line 2727
    add-int/2addr v8, v9

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    return v8

    .line 2731
    .end local v5    # "left":I
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "width":I
    :cond_0
    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2732
    .restart local v6    # "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 2733
    .restart local v5    # "left":I
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 2734
    .restart local v7    # "width":I
    if-lez v7, :cond_4

    .line 2735
    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v5, 0x64

    div-int/2addr v9, v7

    sub-int/2addr v8, v9

    .line 2736
    iget v9, p0, Landroid/view/View;->mScrollX:I

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    mul-float/2addr v9, v12

    float-to-int v9, v9

    .line 2735
    add-int/2addr v8, v9

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    return v8

    .line 2741
    .end local v5    # "left":I
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "width":I
    :cond_1
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 2742
    .local v1, "count":I
    if-nez v2, :cond_2

    .line 2743
    const/4 v3, 0x0

    .line 2749
    .local v3, "index":I
    :goto_0
    int-to-float v8, v2

    int-to-float v9, v0

    int-to-float v10, v3

    int-to-float v11, v1

    div-float/2addr v10, v11

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v8, v8

    return v8

    .line 2744
    .end local v3    # "index":I
    :cond_2
    add-int v8, v2, v0

    if-ne v8, v1, :cond_3

    .line 2745
    move v3, v1

    .restart local v3    # "index":I
    goto :goto_0

    .line 2747
    .end local v3    # "index":I
    :cond_3
    div-int/lit8 v8, v0, 0x2

    add-int v3, v2, v8

    .restart local v3    # "index":I
    goto :goto_0

    .line 2752
    .end local v1    # "count":I
    .end local v3    # "index":I
    :cond_4
    return v11
.end method

.method protected computeHorizontalScrollRange()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2775
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_1

    .line 2776
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2777
    .local v0, "result":I
    iget v1, p0, Landroid/view/View;->mScrollX:I

    if-eqz v1, :cond_0

    .line 2779
    iget v1, p0, Landroid/view/View;->mScrollX:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2784
    :cond_0
    :goto_0
    return v0

    .line 2782
    .end local v0    # "result":I
    :cond_1
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method confirmCheckedPositionsById()V
    .locals 18

    .prologue
    .line 8139
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 8141
    const/4 v2, 0x0

    .line 8142
    .local v2, "checkedCountChanged":Z
    const/4 v9, 0x0

    .local v9, "checkedIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v9, v3, :cond_4

    .line 8143
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 8144
    .local v6, "id":J
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 8146
    .local v5, "lastPos":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    .line 8147
    .local v12, "lastPosId":J
    cmp-long v3, v6, v12

    if-eqz v3, :cond_3

    .line 8149
    add-int/lit8 v3, v5, -0x14

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 8150
    .local v17, "start":I
    add-int/lit8 v3, v5, 0x14

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 8151
    .local v10, "end":I
    const/4 v11, 0x0

    .line 8152
    .local v11, "found":Z
    move/from16 v16, v17

    .local v16, "searchPos":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v10, :cond_0

    .line 8153
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v14

    .line 8154
    .local v14, "searchId":J
    cmp-long v3, v6, v14

    if-nez v3, :cond_2

    .line 8155
    const/4 v11, 0x1

    .line 8156
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 8157
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 8162
    .end local v14    # "searchId":J
    :cond_0
    if-nez v11, :cond_1

    .line 8163
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v6, v7}, Landroid/util/LongSparseArray;->delete(J)V

    .line 8164
    add-int/lit8 v9, v9, -0x1

    .line 8165
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    .line 8166
    const/4 v2, 0x1

    .line 8167
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    if-eqz v3, :cond_1

    .line 8168
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 8169
    const/4 v8, 0x0

    .line 8168
    invoke-virtual/range {v3 .. v8}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 8142
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 8152
    .restart local v10    # "end":I
    .restart local v11    # "found":Z
    .restart local v14    # "searchId":J
    .restart local v16    # "searchPos":I
    .restart local v17    # "start":I
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 8173
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v14    # "searchId":J
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 8177
    .end local v5    # "lastPos":I
    .end local v6    # "id":J
    .end local v12    # "lastPosId":J
    :cond_4
    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_5

    .line 8178
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidate()V

    .line 8137
    :cond_5
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 4095
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method createPositionScroller()Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;
    .locals 1

    .prologue
    .line 7321
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    return-object v0
.end method

.method public deferNotifyDataSetChanged()V
    .locals 1

    .prologue
    .line 9104
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 9103
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 18
    .param p1, "ev"    # Landroid/view/DragEvent;

    .prologue
    .line 5318
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    .line 5320
    .local v2, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v5

    .line 5321
    .local v5, "cd":Landroid/content/ClipDescription;
    if-eqz v5, :cond_2

    const-string/jumbo v13, "cropUri"

    invoke-virtual {v5}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 5326
    const/4 v13, 0x1

    if-ne v2, v13, :cond_3

    .line 5327
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    if-gtz v13, :cond_0

    .line 5329
    const/high16 v13, 0x41c80000    # 25.0f

    .line 5330
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    .line 5329
    const/4 v15, 0x1

    .line 5328
    invoke-static {v15, v13, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v13

    .line 5330
    const/high16 v14, 0x3f000000    # 0.5f

    .line 5328
    add-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    .line 5332
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    if-nez v13, :cond_1

    :cond_1
    const/4 v13, 0x1

    return v13

    .line 5322
    :cond_2
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    return v13

    .line 5335
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v13

    float-to-int v11, v13

    .line 5336
    .local v11, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v13

    float-to-int v12, v13

    .line 5337
    .local v12, "y":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 5338
    .local v7, "childCount":I
    const/4 v8, 0x0

    .line 5339
    .local v8, "contentRight":I
    const/4 v10, 0x0

    .line 5340
    .local v10, "lastChildRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    .line 5344
    .local v9, "count":I
    if-eqz v7, :cond_4

    .line 5345
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 5349
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v13, v9

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v13, v14, :cond_c

    const/4 v4, 0x1

    .line 5351
    .local v4, "canScrollRight":Z
    :goto_0
    if-nez v4, :cond_5

    if-lez v9, :cond_5

    .line 5352
    add-int/lit8 v13, v9, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 5353
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v15

    if-gt v13, v14, :cond_d

    .line 5354
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v15

    if-le v13, v14, :cond_e

    const/4 v4, 0x1

    .line 5358
    .end local v4    # "canScrollRight":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v13, :cond_f

    const/4 v3, 0x1

    .line 5360
    .local v3, "canScrollLeft":Z
    :goto_2
    if-nez v3, :cond_6

    .line 5361
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    if-lez v13, :cond_6

    .line 5362
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 5363
    .restart local v6    # "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    if-ge v13, v14, :cond_10

    const/4 v3, 0x1

    .line 5368
    .end local v3    # "canScrollLeft":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    if-le v11, v13, :cond_11

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    sub-int v13, v8, v13

    if-ge v11, v13, :cond_11

    .line 5371
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 5372
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 5375
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-nez v13, :cond_9

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_a

    .line 5376
    :cond_9
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    .line 5379
    :cond_a
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5380
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 5381
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5384
    const/4 v13, 0x2

    if-ne v2, v13, :cond_b

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    if-eqz v13, :cond_b

    .line 5385
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    .line 5386
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->resetDragableChildren(Landroid/view/DragEvent;)Z

    .line 5389
    :cond_b
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    return v13

    .line 5349
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 5353
    .restart local v4    # "canScrollRight":Z
    .restart local v6    # "child":Landroid/view/View;
    :cond_d
    const/4 v4, 0x1

    .local v4, "canScrollRight":Z
    goto/16 :goto_1

    .line 5354
    .local v4, "canScrollRight":Z
    :cond_e
    const/4 v4, 0x0

    .local v4, "canScrollRight":Z
    goto/16 :goto_1

    .line 5358
    .end local v4    # "canScrollRight":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 5363
    .restart local v3    # "canScrollLeft":Z
    .restart local v6    # "child":Landroid/view/View;
    :cond_10
    const/4 v3, 0x0

    .local v3, "canScrollLeft":Z
    goto :goto_3

    .line 5369
    .end local v3    # "canScrollLeft":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_11
    if-lez v12, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    move-result v13

    if-gt v12, v13, :cond_7

    if-nez v3, :cond_12

    if-eqz v4, :cond_7

    .line 5393
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    if-nez v13, :cond_13

    .line 5394
    new-instance v13, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    .line 5396
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v13, :cond_14

    .line 5397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 5399
    :cond_14
    packed-switch v2, :pswitch_data_0

    .line 5470
    :cond_15
    :goto_4
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    return v13

    .line 5401
    :pswitch_0
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5402
    if-ltz v11, :cond_16

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    if-gt v11, v13, :cond_16

    .line 5404
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_15

    .line 5405
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    .line 5406
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5407
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    .line 5408
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 5410
    :cond_16
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    sub-int v13, v8, v13

    if-lt v11, v13, :cond_15

    if-gt v11, v8, :cond_15

    .line 5412
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_15

    .line 5413
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    .line 5414
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5415
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    .line 5416
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 5422
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v13, :cond_17

    .line 5423
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5426
    :cond_17
    if-ltz v11, :cond_18

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    if-gt v11, v13, :cond_18

    .line 5428
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_15

    .line 5429
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    .line 5430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5431
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    .line 5432
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_4

    .line 5434
    :cond_18
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    sub-int v13, v8, v13

    if-lt v11, v13, :cond_15

    if-gt v11, v8, :cond_15

    .line 5436
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_15

    .line 5437
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    .line 5438
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5439
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    .line 5440
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_4

    .line 5447
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    if-eqz v13, :cond_19

    .line 5448
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    .line 5449
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->resetDragableChildren(Landroid/view/DragEvent;)Z

    .line 5455
    :cond_19
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 5456
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 5458
    :cond_1a
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    .line 5460
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5461
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 5462
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    .line 5463
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    goto/16 :goto_4

    .line 5399
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
    const/4 v0, 0x0

    .line 3405
    const/4 v4, 0x0

    .line 3406
    .local v4, "saveCount":I
    const/4 v7, 0x0

    .line 3407
    .local v7, "trackChildLeft":I
    const/4 v2, 0x0

    .line 3408
    .local v2, "firstChildPosition":I
    const/4 v3, 0x0

    .line 3410
    .local v3, "lastChildPosition":I
    iget v8, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v8, v8, 0x22

    const/16 v9, 0x22

    if-ne v8, v9, :cond_0

    const/4 v0, 0x1

    .line 3411
    .local v0, "clipToPadding":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 3412
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3413
    iget v5, p0, Landroid/view/View;->mScrollX:I

    .line 3414
    .local v5, "scrollX":I
    iget v6, p0, Landroid/view/View;->mScrollY:I

    .line 3415
    .local v6, "scrollY":I
    iget v8, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v8, v5

    iget v9, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v9, v6

    .line 3416
    iget v10, p0, Landroid/view/View;->mRight:I

    add-int/2addr v10, v5

    iget v11, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v10, v11

    .line 3417
    iget v11, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v11, v6

    iget v12, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v11, v12

    .line 3415
    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 3418
    iget v8, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v8, v8, -0x23

    iput v8, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3421
    .end local v5    # "scrollX":I
    .end local v6    # "scrollY":I
    :cond_1
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDrawSelectorOnTop:Z

    .line 3422
    .local v1, "drawSelectorOnTop":Z
    if-nez v1, :cond_2

    .line 3423
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 3426
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3428
    if-eqz v1, :cond_3

    .line 3429
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 3432
    :cond_3
    if-eqz v0, :cond_4

    .line 3433
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3434
    iget v8, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v8, v8, 0x22

    iput v8, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3437
    :cond_4
    iget-boolean v8, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    if-eqz v8, :cond_8

    .line 3438
    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    if-nez v8, :cond_5

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    if-nez v8, :cond_5

    .line 3439
    return-void

    .line 3441
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    .line 3442
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v3

    .line 3444
    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    if-lt v8, v2, :cond_7

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    if-gt v8, v3, :cond_7

    .line 3445
    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 3446
    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    if-eqz v8, :cond_6

    .line 3447
    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 3449
    :cond_6
    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromTrackedChildLeft:I

    add-int/2addr v8, v7

    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    .line 3452
    :cond_7
    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    iget v9, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    if-ge v8, v9, :cond_9

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    :goto_0
    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    .line 3453
    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    iget v9, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    if-le v8, v9, :cond_a

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    :goto_1
    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    .line 3455
    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    iget v9, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    iget v10, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    iget v11, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    iget v12, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 3456
    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockImage:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3457
    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3404
    :cond_8
    return-void

    .line 3452
    :cond_9
    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    goto :goto_0

    .line 3453
    :cond_a
    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    goto :goto_1
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4961
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 4964
    .local v4, "action":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoveringEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    move/from16 v23, v0

    if-nez v23, :cond_1

    .line 4965
    :cond_0
    invoke-direct/range {p0 .. p1}, Landroid/widget/SemHorizontalAbsListView;->onHoverDrawableState(Landroid/view/MotionEvent;)V

    .line 4972
    :cond_1
    invoke-static {}, Landroid/text/MultiSelection;->isTextViewHovered()Z

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mNewTextViewHoverState:Z

    .line 4974
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mNewTextViewHoverState:Z

    move/from16 v23, v0

    if-nez v23, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOldTextViewHoverState:Z

    move/from16 v23, v0

    if-eqz v23, :cond_7

    .line 4975
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    move/from16 v23, v0

    .line 4974
    if-eqz v23, :cond_7

    .line 4975
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 4976
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelectIconSet:Z

    .line 4982
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mNewTextViewHoverState:Z

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mOldTextViewHoverState:Z

    .line 4985
    const/16 v23, 0x9

    move/from16 v0, v23

    if-ne v4, v0, :cond_d

    .line 4986
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v20

    .line 4988
    .local v20, "toolType":I
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    .line 4991
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isHoveringUIEnabled()Z

    move-result v23

    if-eqz v23, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollEnable:Z

    move/from16 v23, v0

    if-eqz v23, :cond_8

    .line 4996
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5

    const/16 v23, 0x2

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 4998
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    .line 4999
    const-string/jumbo v24, "pen_hovering"

    const/16 v25, 0x0

    .line 4998
    invoke-static/range {v23 .. v25}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    .line 4999
    const/16 v24, 0x1

    .line 4998
    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    const/4 v15, 0x1

    .line 5001
    .local v15, "isHoveringOn":Z
    :goto_2
    const/4 v14, 0x0

    .line 5004
    .local v14, "isHoverListScrollOn":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    .line 5005
    const-string/jumbo v24, "car_mode_on"

    const/16 v25, 0x0

    const/16 v26, -0x3

    .line 5004
    invoke-static/range {v23 .. v26}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v23

    .line 5005
    const/16 v24, 0x1

    .line 5004
    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    const/4 v13, 0x1

    .line 5007
    .local v13, "isCarModeOn":Z
    :goto_3
    if-eqz v15, :cond_2

    if-eqz v13, :cond_3

    .line 5008
    :cond_2
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    .line 5011
    :cond_3
    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    move/from16 v23, v0

    if-eqz v23, :cond_b

    .line 5017
    :cond_4
    :goto_4
    if-nez v14, :cond_5

    .line 5018
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    .line 5023
    .end local v13    # "isCarModeOn":Z
    .end local v14    # "isHoverListScrollOn":Z
    .end local v15    # "isHoveringOn":Z
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    move/from16 v23, v0

    if-eqz v23, :cond_6

    const/16 v23, 0x3

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 5024
    const/16 v17, 0x0

    .line 5025
    .local v17, "isMouseHoveringOn":Z
    const/16 v16, 0x0

    .line 5027
    .local v16, "isMouseHoverListScrollOn":Z
    if-eqz v17, :cond_c

    if-eqz v16, :cond_c

    .line 5048
    .end local v16    # "isMouseHoverListScrollOn":Z
    .end local v17    # "isMouseHoveringOn":Z
    .end local v20    # "toolType":I
    :cond_6
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    move/from16 v23, v0

    if-nez v23, :cond_12

    .line 5049
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v23

    return v23

    .line 4979
    :cond_7
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelectIconSet:Z

    goto/16 :goto_0

    .line 4992
    .restart local v20    # "toolType":I
    :cond_8
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    goto/16 :goto_1

    .line 4998
    :cond_9
    const/4 v15, 0x0

    .restart local v15    # "isHoveringOn":Z
    goto/16 :goto_2

    .line 5004
    .restart local v14    # "isHoverListScrollOn":Z
    :cond_a
    const/4 v13, 0x0

    .restart local v13    # "isCarModeOn":Z
    goto :goto_3

    .line 5012
    :cond_b
    const/16 v23, 0x2

    move/from16 v0, v20

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 5013
    const/16 v23, 0x4e35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 5014
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    goto :goto_4

    .line 5028
    .end local v13    # "isCarModeOn":Z
    .end local v14    # "isHoverListScrollOn":Z
    .end local v15    # "isHoveringOn":Z
    .restart local v16    # "isMouseHoverListScrollOn":Z
    .restart local v17    # "isMouseHoveringOn":Z
    :cond_c
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    goto :goto_5

    .line 5031
    .end local v16    # "isMouseHoverListScrollOn":Z
    .end local v17    # "isMouseHoveringOn":Z
    .end local v20    # "toolType":I
    :cond_d
    const/16 v23, 0x7

    move/from16 v0, v23

    if-ne v4, v0, :cond_11

    .line 5032
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    move/from16 v23, v0

    if-eqz v23, :cond_f

    .line 5033
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelectIconSet:Z

    move/from16 v23, v0

    .line 5032
    if-eqz v23, :cond_10

    .line 5034
    :goto_6
    const/16 v23, 0x4e35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 5035
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_5

    .line 5033
    :cond_f
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    goto :goto_6

    .line 5036
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    move/from16 v23, v0

    if-eqz v23, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_6

    .line 5037
    const/16 v23, 0x4e21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 5038
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_5

    .line 5040
    :cond_11
    const/16 v23, 0xa

    move/from16 v0, v23

    if-ne v4, v0, :cond_6

    .line 5041
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    move/from16 v23, v0

    if-eqz v23, :cond_6

    .line 5042
    const/16 v23, 0x4e21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 5043
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_5

    .line 5053
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v21, v0

    .line 5054
    .local v21, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v22, v0

    .line 5055
    .local v22, "y":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 5056
    .local v8, "childCount":I
    const/4 v9, 0x0

    .line 5057
    .local v9, "contentLeft":I
    const/4 v10, 0x0

    .line 5058
    .local v10, "contentRight":I
    const/16 v19, 0x0

    .line 5059
    .local v19, "lastChildRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    .line 5064
    .local v11, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v23, v0

    if-nez v23, :cond_13

    .line 5065
    new-instance v23, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    .line 5068
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    move/from16 v23, v0

    if-lez v23, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    move/from16 v23, v0

    if-gtz v23, :cond_15

    .line 5070
    :cond_14
    const/high16 v23, 0x41c80000    # 25.0f

    .line 5071
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    .line 5070
    const/16 v25, 0x1

    .line 5069
    move/from16 v0, v25

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v23

    .line 5071
    const/high16 v24, 0x3f000000    # 0.5f

    .line 5069
    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    .line 5074
    const/high16 v23, 0x41c80000    # 25.0f

    .line 5075
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    .line 5074
    const/16 v25, 0x1

    .line 5073
    move/from16 v0, v25

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v23

    .line 5075
    const/high16 v24, 0x3f000000    # 0.5f

    .line 5073
    add-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    .line 5078
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    move/from16 v23, v0

    if-eqz v23, :cond_21

    .line 5079
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v9, v0, Landroid/graphics/Rect;->left:I

    .line 5080
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    sub-int v10, v23, v24

    .line 5086
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    move/from16 v23, v0

    if-eqz v23, :cond_27

    .line 5088
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v23, v0

    if-lez v23, :cond_22

    const/4 v6, 0x1

    .line 5090
    .local v6, "canScrollRight":Z
    :goto_8
    if-nez v6, :cond_16

    if-lez v11, :cond_16

    .line 5091
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5092
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_23

    .line 5093
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_24

    const/4 v6, 0x1

    .line 5096
    .end local v6    # "canScrollRight":Z
    .end local v7    # "child":Landroid/view/View;
    :cond_16
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v23, v0

    add-int v23, v23, v11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_25

    const/4 v5, 0x1

    .line 5098
    .local v5, "canScrollLeft":Z
    :goto_a
    if-nez v5, :cond_17

    if-lez v11, :cond_17

    .line 5099
    add-int/lit8 v23, v11, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5100
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_26

    const/4 v5, 0x1

    .line 5120
    .end local v5    # "canScrollLeft":Z
    .end local v7    # "child":Landroid/view/View;
    :cond_17
    :goto_b
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2e

    const/16 v18, 0x1

    .line 5122
    .local v18, "isPossibleTooltype":Z
    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    move/from16 v23, v0

    add-int v23, v23, v9

    move/from16 v0, v21

    move/from16 v1, v23

    if-le v0, v1, :cond_2f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    move/from16 v23, v0

    sub-int v23, v10, v23

    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_2f

    .line 5129
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v23

    if-eqz v23, :cond_19

    .line 5130
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeMessages(I)V

    .line 5131
    const/16 v23, 0x4e21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 5134
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v23

    if-eqz v23, :cond_1a

    .line 5135
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeMessages(I)V

    .line 5138
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    move/from16 v23, v0

    add-int v23, v23, v9

    move/from16 v0, v21

    move/from16 v1, v23

    if-le v0, v1, :cond_38

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    move/from16 v23, v0

    sub-int v23, v10, v23

    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_38

    .line 5139
    :cond_1b
    :goto_d
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    .line 5142
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    move/from16 v23, v0

    if-nez v23, :cond_1d

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-eqz v23, :cond_1e

    .line 5143
    :cond_1d
    const/16 v23, 0x4e21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 5145
    :cond_1e
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5146
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 5147
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5148
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsSendHoverScrollState:Z

    .line 5150
    const/16 v23, 0xa

    move/from16 v0, v23

    if-ne v4, v0, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateForListener:I

    move/from16 v23, v0

    if-eqz v23, :cond_1f

    .line 5151
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateForListener:I

    .line 5152
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1f

    .line 5153
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/SemHorizontalAbsListView;I)V

    .line 5158
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    move/from16 v23, v0

    if-eqz v23, :cond_20

    .line 5159
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    .line 5160
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 5163
    :cond_20
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v23

    return v23

    .line 5082
    .end local v18    # "isPossibleTooltype":Z
    :cond_21
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInLeftHoverArea:I

    .line 5083
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInRightHoverArea:I

    move/from16 v24, v0

    sub-int v10, v23, v24

    goto/16 :goto_7

    .line 5088
    :cond_22
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 5092
    .restart local v6    # "canScrollRight":Z
    .restart local v7    # "child":Landroid/view/View;
    :cond_23
    const/4 v6, 0x1

    .local v6, "canScrollRight":Z
    goto/16 :goto_9

    .line 5093
    .local v6, "canScrollRight":Z
    :cond_24
    const/4 v6, 0x0

    .local v6, "canScrollRight":Z
    goto/16 :goto_9

    .line 5096
    .end local v6    # "canScrollRight":Z
    .end local v7    # "child":Landroid/view/View;
    :cond_25
    const/4 v5, 0x0

    goto/16 :goto_a

    .line 5100
    .restart local v5    # "canScrollLeft":Z
    .restart local v7    # "child":Landroid/view/View;
    :cond_26
    const/4 v5, 0x0

    .local v5, "canScrollLeft":Z
    goto/16 :goto_b

    .line 5104
    .end local v5    # "canScrollLeft":Z
    .end local v7    # "child":Landroid/view/View;
    :cond_27
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v23, v0

    add-int v23, v23, v11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_29

    const/4 v6, 0x1

    .line 5106
    .local v6, "canScrollRight":Z
    :goto_e
    if-nez v6, :cond_28

    if-lez v11, :cond_28

    .line 5107
    add-int/lit8 v23, v11, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5108
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_2a

    .line 5109
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_2b

    const/4 v6, 0x1

    .line 5112
    .end local v6    # "canScrollRight":Z
    .end local v7    # "child":Landroid/view/View;
    :cond_28
    :goto_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v23, v0

    if-lez v23, :cond_2c

    const/4 v5, 0x1

    .line 5114
    .local v5, "canScrollLeft":Z
    :goto_10
    if-nez v5, :cond_17

    if-lez v11, :cond_17

    .line 5115
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5116
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2d

    const/4 v5, 0x1

    .local v5, "canScrollLeft":Z
    goto/16 :goto_b

    .line 5104
    .end local v5    # "canScrollLeft":Z
    .end local v7    # "child":Landroid/view/View;
    :cond_29
    const/4 v6, 0x0

    goto :goto_e

    .line 5108
    .restart local v6    # "canScrollRight":Z
    .restart local v7    # "child":Landroid/view/View;
    :cond_2a
    const/4 v6, 0x1

    .local v6, "canScrollRight":Z
    goto :goto_f

    .line 5109
    .local v6, "canScrollRight":Z
    :cond_2b
    const/4 v6, 0x0

    .local v6, "canScrollRight":Z
    goto :goto_f

    .line 5112
    .end local v6    # "canScrollRight":Z
    .end local v7    # "child":Landroid/view/View;
    :cond_2c
    const/4 v5, 0x0

    goto :goto_10

    .line 5116
    .local v5, "canScrollLeft":Z
    .restart local v7    # "child":Landroid/view/View;
    :cond_2d
    const/4 v5, 0x0

    .local v5, "canScrollLeft":Z
    goto/16 :goto_b

    .line 5120
    .end local v5    # "canScrollLeft":Z
    .end local v7    # "child":Landroid/view/View;
    :cond_2e
    const/16 v18, 0x0

    .restart local v18    # "isPossibleTooltype":Z
    goto/16 :goto_c

    .line 5122
    :cond_2f
    if-lez v22, :cond_18

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-gt v0, v1, :cond_18

    .line 5123
    if-nez v5, :cond_30

    if-eqz v6, :cond_18

    .line 5124
    :cond_30
    move/from16 v0, v21

    if-lt v0, v9, :cond_31

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    move/from16 v23, v0

    add-int v23, v23, v9

    move/from16 v0, v21

    move/from16 v1, v23

    if-gt v0, v1, :cond_31

    if-eqz v5, :cond_36

    .line 5125
    :cond_31
    :goto_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    move/from16 v23, v0

    sub-int v23, v10, v23

    move/from16 v0, v21

    move/from16 v1, v23

    if-lt v0, v1, :cond_32

    move/from16 v0, v21

    if-gt v0, v10, :cond_32

    if-eqz v6, :cond_37

    .line 5126
    :cond_32
    :goto_12
    if-eqz v18, :cond_33

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_18

    .line 5127
    :cond_33
    if-eqz v18, :cond_18

    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->isLockScreenMode()Z

    move-result v23

    .line 5122
    if-nez v23, :cond_18

    .line 5166
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    move/from16 v23, v0

    if-nez v23, :cond_34

    .line 5167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 5170
    :cond_34
    packed-switch v4, :pswitch_data_0

    .line 5305
    :cond_35
    :goto_13
    :pswitch_0
    const/16 v23, 0x1

    return v23

    .line 5124
    :cond_36
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    move/from16 v23, v0

    .line 5122
    if-nez v23, :cond_18

    goto :goto_11

    .line 5125
    :cond_37
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    move/from16 v23, v0

    .line 5122
    if-nez v23, :cond_18

    goto :goto_12

    .line 5138
    :cond_38
    if-lez v22, :cond_1b

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_1c

    goto/16 :goto_d

    .line 5172
    :pswitch_1
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5174
    move/from16 v0, v21

    if-lt v0, v9, :cond_39

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    move/from16 v23, v0

    add-int v23, v23, v9

    move/from16 v0, v21

    move/from16 v1, v23

    if-gt v0, v1, :cond_39

    .line 5176
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v23

    if-nez v23, :cond_35

    .line 5177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5178
    const/16 v23, 0x4e31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 5180
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    .line 5181
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5184
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->isQCSupported()Z

    move-result v23

    if-eqz v23, :cond_35

    const/16 v23, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v23

    if-eqz v23, :cond_35

    .line 5185
    const/16 v23, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->setupQuickController(I)V

    .line 5186
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    goto/16 :goto_13

    .line 5189
    :cond_39
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    move/from16 v23, v0

    sub-int v23, v10, v23

    move/from16 v0, v21

    move/from16 v1, v23

    if-lt v0, v1, :cond_35

    move/from16 v0, v21

    if-gt v0, v10, :cond_35

    .line 5191
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v23

    if-nez v23, :cond_35

    .line 5192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5193
    const/16 v23, 0x4e2d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 5195
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    .line 5196
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5199
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->isQCSupported()Z

    move-result v23

    if-eqz v23, :cond_35

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v23

    if-eqz v23, :cond_35

    .line 5200
    const/16 v23, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->setupQuickController(I)V

    .line 5201
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    goto/16 :goto_13

    .line 5209
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    move/from16 v23, v0

    if-nez v23, :cond_3a

    .line 5210
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5211
    const/16 v23, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 5212
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v23

    return v23

    .line 5215
    :cond_3a
    move/from16 v0, v21

    if-lt v0, v9, :cond_3d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    move/from16 v23, v0

    add-int v23, v23, v9

    move/from16 v0, v21

    move/from16 v1, v23

    if-gt v0, v1, :cond_3d

    .line 5217
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v23

    if-nez v23, :cond_35

    .line 5218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5221
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3c

    .line 5222
    :cond_3b
    const/16 v23, 0x4e31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 5225
    :cond_3c
    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    .line 5226
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5229
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->isQCSupported()Z

    move-result v23

    if-eqz v23, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    move/from16 v23, v0

    if-nez v23, :cond_35

    const/16 v23, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v23

    if-eqz v23, :cond_35

    .line 5230
    const/16 v23, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->setupQuickController(I)V

    .line 5231
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    goto/16 :goto_13

    .line 5234
    :cond_3d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    move/from16 v23, v0

    sub-int v23, v10, v23

    move/from16 v0, v21

    move/from16 v1, v23

    if-lt v0, v1, :cond_40

    move/from16 v0, v21

    if-gt v0, v10, :cond_40

    .line 5236
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v23

    if-nez v23, :cond_35

    .line 5237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5240
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3f

    .line 5241
    :cond_3e
    const/16 v23, 0x4e2d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 5244
    :cond_3f
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    .line 5245
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5248
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->isQCSupported()Z

    move-result v23

    if-eqz v23, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    move/from16 v23, v0

    if-nez v23, :cond_35

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v23

    if-eqz v23, :cond_35

    .line 5249
    const/16 v23, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->setupQuickController(I)V

    .line 5250
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    goto/16 :goto_13

    .line 5255
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v23

    if-eqz v23, :cond_41

    .line 5256
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeMessages(I)V

    .line 5259
    :cond_41
    const/16 v23, 0x4e21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 5261
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5262
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 5263
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    .line 5264
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5265
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsSendHoverScrollState:Z

    goto/16 :goto_13

    .line 5271
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v23

    if-eqz v23, :cond_42

    .line 5272
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeMessages(I)V

    .line 5275
    :cond_42
    const/16 v23, 0x4e21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 5277
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5278
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 5279
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    .line 5280
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5281
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsSendHoverScrollState:Z

    .line 5284
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_44

    .line 5286
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v12

    .line 5287
    .local v12, "im":Landroid/hardware/input/InputManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v23

    if-eqz v23, :cond_43

    if-eqz v12, :cond_44

    const/16 v23, -0x1

    const/16 v24, -0x100

    const/16 v25, 0x140

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v12, v0, v1, v2}, Landroid/hardware/input/InputManager;->getScanCodeState(III)I

    move-result v23

    if-nez v23, :cond_44

    .line 5288
    :cond_43
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    .line 5289
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 5293
    .end local v12    # "im":Landroid/hardware/input/InputManager;
    :cond_44
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateForListener:I

    move/from16 v23, v0

    if-eqz v23, :cond_45

    .line 5294
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateForListener:I

    .line 5295
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    move-object/from16 v23, v0

    if-eqz v23, :cond_45

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_45

    .line 5296
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/SemHorizontalAbsListView;I)V

    .line 5300
    :cond_45
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v23

    return v23

    .line 5170
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
    .line 4489
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 31
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 5480
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v25, v0

    .line 5481
    .local v25, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v26, v0

    .line 5482
    .local v26, "y":I
    const/4 v12, 0x0

    .line 5483
    .local v12, "contentLeft":I
    const/4 v13, 0x0

    .line 5484
    .local v13, "contentRight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 5485
    .local v6, "action":I
    const/16 v20, 0x0

    .line 5487
    .local v20, "needToScroll":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    if-nez v27, :cond_0

    .line 5488
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    .line 5491
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    if-nez v27, :cond_1

    .line 5492
    new-instance v27, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    .line 5495
    :cond_1
    invoke-static {}, Landroid/text/MultiSelection;->getIsMultiSelectingText()Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsTextSelectionStarted:Z

    .line 5496
    invoke-static {}, Landroid/text/MultiSelection;->isNeedToScroll()Z

    move-result v20

    .line 5498
    .local v20, "needToScroll":Z
    const/16 v27, 0xd3

    move/from16 v0, v27

    if-ne v6, v0, :cond_2

    .line 5499
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelection:Z

    .line 5500
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    .line 5501
    const-string/jumbo v28, "car_mode_on"

    const/16 v29, 0x0

    const/16 v30, -0x3

    .line 5500
    invoke-static/range {v27 .. v30}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v27

    .line 5501
    const/16 v28, 0x1

    .line 5500
    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    const/16 v18, 0x1

    .line 5503
    .local v18, "isCarModeOn":Z
    :goto_0
    if-eqz v18, :cond_2

    .line 5504
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelection:Z

    .line 5508
    .end local v18    # "isCarModeOn":Z
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsTextSelectionStarted:Z

    move/from16 v27, v0

    if-eqz v27, :cond_3

    .line 5509
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelection:Z

    .line 5512
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    move/from16 v27, v0

    if-lez v27, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    move/from16 v27, v0

    if-gtz v27, :cond_5

    .line 5514
    :cond_4
    const/high16 v27, 0x41c80000    # 25.0f

    .line 5515
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v28

    .line 5514
    const/16 v29, 0x1

    .line 5513
    move/from16 v0, v29

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v27

    .line 5515
    const/high16 v28, 0x3f000000    # 0.5f

    .line 5513
    add-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    .line 5518
    const/high16 v27, 0x41c80000    # 25.0f

    .line 5519
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v28

    .line 5518
    const/16 v29, 0x1

    .line 5517
    move/from16 v0, v29

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v27

    .line 5519
    const/high16 v28, 0x3f000000    # 0.5f

    .line 5517
    add-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    .line 5522
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    move/from16 v27, v0

    if-eqz v27, :cond_8

    .line 5523
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v12, v0, Landroid/graphics/Rect;->left:I

    .line 5524
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    sub-int v13, v27, v28

    .line 5530
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    move/from16 v27, v0

    if-eqz v27, :cond_9

    move/from16 v0, v25

    if-lt v0, v12, :cond_6

    move/from16 v0, v25

    if-le v0, v13, :cond_9

    .line 5531
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

    .line 5532
    const/16 v27, 0x1

    return v27

    .line 5500
    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 5526
    :cond_8
    const/4 v12, 0x0

    .line 5527
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v13

    goto :goto_1

    .line 5535
    :cond_9
    sparse-switch v6, :sswitch_data_0

    .line 5859
    .end local v20    # "needToScroll":Z
    :cond_a
    :goto_2
    :sswitch_0
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v27

    return v27

    .line 5538
    .restart local v20    # "needToScroll":Z
    :sswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    .line 5539
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsQCShown:Z

    move/from16 v27, v0

    if-eqz v27, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v27

    if-eqz v27, :cond_c

    .line 5540
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_b

    .line 5541
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    .line 5545
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5547
    const/16 v27, 0x2

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    .line 5548
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 5549
    const/16 v27, 0x1

    return v27

    .line 5552
    :cond_c
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    goto :goto_2

    .line 5560
    :sswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    .line 5562
    const/16 v27, 0x1

    return v27

    .line 5566
    :sswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelection:Z

    move/from16 v27, v0

    if-eqz v27, :cond_29

    .line 5567
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    .line 5569
    .local v14, "count":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsfirstMoveEvent:Z

    move/from16 v27, v0

    if-eqz v27, :cond_11

    .line 5570
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    .line 5571
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    .line 5572
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-super {v0, v1, v2}, Landroid/widget/AdapterView;->semNotifyMultiSelectedStart(II)V

    .line 5573
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    .line 5575
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    .line 5577
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1a

    .line 5578
    const/16 v23, 0x0

    .line 5579
    .local v23, "oldDistanceFromLeft":I
    const/16 v24, 0x0

    .line 5580
    .local v24, "oldDistanceFromRight":I
    const/16 v21, 0x0

    .line 5581
    .local v21, "newDistanceFromLeft":I
    const/16 v22, 0x0

    .line 5583
    .local v22, "newDistanceFromRight":I
    add-int/lit8 v17, v14, -0x1

    .local v17, "i":I
    :goto_3
    if-ltz v17, :cond_d

    .line 5584
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5585
    .local v7, "child":Landroid/view/View;
    if-eqz v7, :cond_17

    .line 5586
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 5587
    .local v9, "childLeft":I
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v10

    .line 5590
    .local v10, "childRight":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v9, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-gt v0, v10, :cond_16

    .line 5591
    move-object/from16 v0, p0

    iput-object v7, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 5592
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v27

    add-int v27, v27, v17

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    .line 5619
    .end local v7    # "child":Landroid/view/View;
    .end local v9    # "childLeft":I
    .end local v10    # "childRight":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    move-object/from16 v27, v0

    if-nez v27, :cond_f

    .line 5620
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByLeft:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v28

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByLeft:Landroid/view/View;

    .line 5621
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByLeft:Landroid/view/View;

    move-object/from16 v27, v0

    if-eqz v27, :cond_e

    .line 5622
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByLeft:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLeft()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildLeft:I

    .line 5625
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v28

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    .line 5626
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    move-object/from16 v27, v0

    if-eqz v27, :cond_f

    .line 5627
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLeft()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildRight:I

    .line 5634
    .end local v17    # "i":I
    .end local v21    # "newDistanceFromLeft":I
    .end local v22    # "newDistanceFromRight":I
    .end local v23    # "oldDistanceFromLeft":I
    .end local v24    # "oldDistanceFromRight":I
    :cond_f
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    move-object/from16 v27, v0

    if-eqz v27, :cond_10

    .line 5635
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLeft()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromTrackedChildLeft:I

    .line 5637
    :cond_10
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsfirstMoveEvent:Z

    .line 5640
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    move/from16 v27, v0

    if-nez v27, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    move/from16 v27, v0

    if-nez v27, :cond_12

    .line 5641
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    .line 5642
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    .line 5643
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-super {v0, v1, v2}, Landroid/widget/AdapterView;->semNotifyMultiSelectedStart(II)V

    .line 5644
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    .line 5647
    :cond_12
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    .line 5648
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndY:I

    .line 5650
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    move/from16 v27, v0

    if-gez v27, :cond_1b

    .line 5651
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    .line 5656
    :cond_13
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    .line 5658
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndY:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    move/from16 v27, v0

    :goto_6
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    .line 5659
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    move/from16 v27, v0

    :goto_7
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    .line 5660
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndY:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndY:I

    move/from16 v27, v0

    :goto_8
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    .line 5661
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    move/from16 v27, v0

    :goto_9
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    .line 5663
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_a
    move/from16 v0, v17

    if-ge v0, v14, :cond_28

    .line 5664
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5665
    .restart local v7    # "child":Landroid/view/View;
    if-eqz v7, :cond_15

    .line 5666
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 5667
    .restart local v9    # "childLeft":I
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    .line 5668
    .local v11, "childTop":I
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v10

    .line 5669
    .restart local v10    # "childRight":I
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 5671
    .local v8, "childBottom":I
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v27

    if-nez v27, :cond_15

    .line 5672
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v11, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v9, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v8, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v10, :cond_20

    .line 5676
    :cond_14
    add-int/lit8 v27, v9, 0x1

    add-int/lit8 v28, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    .line 5677
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v28, v0

    invoke-interface/range {v27 .. v28}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v27

    if-eqz v27, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_27

    .line 5663
    .end local v8    # "childBottom":I
    .end local v9    # "childLeft":I
    .end local v10    # "childRight":I
    .end local v11    # "childTop":I
    :cond_15
    :goto_b
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_a

    .line 5597
    .restart local v9    # "childLeft":I
    .restart local v10    # "childRight":I
    .restart local v21    # "newDistanceFromLeft":I
    .restart local v22    # "newDistanceFromRight":I
    .restart local v23    # "oldDistanceFromLeft":I
    .restart local v24    # "oldDistanceFromRight":I
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    move/from16 v27, v0

    sub-int v27, v27, v9

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v21

    .line 5598
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    move/from16 v27, v0

    sub-int v27, v27, v10

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v22

    .line 5600
    add-int/lit8 v27, v14, -0x1

    move/from16 v0, v17

    move/from16 v1, v27

    if-ne v0, v1, :cond_18

    .line 5601
    add-int/lit8 v27, v14, -0x1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v28

    add-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByLeft:I

    .line 5602
    add-int/lit8 v27, v14, -0x1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v28

    add-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    .line 5603
    move/from16 v23, v21

    .line 5604
    move/from16 v24, v22

    .line 5583
    .end local v9    # "childLeft":I
    .end local v10    # "childRight":I
    :cond_17
    :goto_c
    add-int/lit8 v17, v17, -0x1

    goto/16 :goto_3

    .line 5606
    .restart local v9    # "childLeft":I
    .restart local v10    # "childRight":I
    :cond_18
    move/from16 v0, v21

    move/from16 v1, v23

    if-gt v0, v1, :cond_19

    .line 5607
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v27

    add-int v27, v27, v17

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByLeft:I

    .line 5608
    move/from16 v23, v21

    .line 5611
    :cond_19
    move/from16 v0, v22

    move/from16 v1, v24

    if-gt v0, v1, :cond_17

    .line 5612
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v27

    add-int v27, v27, v17

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    .line 5613
    move/from16 v24, v22

    goto :goto_c

    .line 5631
    .end local v7    # "child":Landroid/view/View;
    .end local v9    # "childLeft":I
    .end local v10    # "childRight":I
    .end local v17    # "i":I
    .end local v21    # "newDistanceFromLeft":I
    .end local v22    # "newDistanceFromRight":I
    .end local v23    # "oldDistanceFromLeft":I
    .end local v24    # "oldDistanceFromRight":I
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v28

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    goto/16 :goto_4

    .line 5652
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v13, :cond_13

    .line 5653
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    goto/16 :goto_5

    .line 5658
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndY:I

    move/from16 v27, v0

    goto/16 :goto_6

    .line 5659
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    move/from16 v27, v0

    goto/16 :goto_7

    .line 5660
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    move/from16 v27, v0

    goto/16 :goto_8

    .line 5661
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    move/from16 v27, v0

    goto/16 :goto_9

    .line 5673
    .restart local v7    # "child":Landroid/view/View;
    .restart local v8    # "childBottom":I
    .restart local v9    # "childLeft":I
    .restart local v10    # "childRight":I
    .restart local v11    # "childTop":I
    .restart local v17    # "i":I
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v9, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v8, :cond_25

    .line 5674
    :cond_21
    :goto_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v11, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v10, :cond_14

    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-gt v0, v9, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-gt v0, v9, :cond_14

    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v10, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v10, :cond_14

    .line 5683
    :cond_24
    add-int/lit8 v27, v9, 0x1

    add-int/lit8 v28, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    .line 5684
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v28, v0

    invoke-interface/range {v27 .. v28}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v27

    if-eqz v27, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_15

    .line 5685
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5686
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->addToPressItemListArray(II)V

    .line 5687
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-direct {v0, v7, v1, v2, v3}, Landroid/widget/SemHorizontalAbsListView;->semNotifyMultiSelectState(Landroid/view/View;IJ)Z

    goto/16 :goto_b

    .line 5673
    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v11, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-gt v0, v11, :cond_21

    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v8, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v8, :cond_24

    goto/16 :goto_d

    .line 5678
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5679
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->addToPressItemListArray(II)V

    .line 5680
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-direct {v0, v7, v1, v2, v3}, Landroid/widget/SemHorizontalAbsListView;->semNotifyMultiSelectState(Landroid/view/View;IJ)Z

    goto/16 :goto_b

    .line 5693
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childBottom":I
    .end local v9    # "childLeft":I
    .end local v10    # "childRight":I
    .end local v11    # "childTop":I
    :cond_28
    const/16 v20, 0x1

    .line 5696
    .end local v14    # "count":I
    .end local v17    # "i":I
    .end local v20    # "needToScroll":Z
    :cond_29
    if-eqz v20, :cond_32

    .line 5697
    add-int/lit8 v27, v12, 0x0

    move/from16 v0, v25

    move/from16 v1, v27

    if-lt v0, v1, :cond_2d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    move/from16 v27, v0

    add-int v27, v27, v12

    move/from16 v0, v25

    move/from16 v1, v27

    if-gt v0, v1, :cond_2d

    .line 5698
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    move/from16 v27, v0

    if-nez v27, :cond_2a

    .line 5699
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5700
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 5702
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2a

    .line 5703
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/SemHorizontalAbsListView;I)V

    .line 5707
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v27

    if-nez v27, :cond_2b

    .line 5708
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5709
    const/16 v27, 0x2

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    .line 5710
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5744
    :cond_2b
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2c

    .line 5745
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 5753
    :cond_2c
    :goto_f
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mPreviousTextViewScroll:Z

    goto/16 :goto_2

    .line 5712
    :cond_2d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    move/from16 v27, v0

    sub-int v27, v13, v27

    move/from16 v0, v25

    move/from16 v1, v27

    if-lt v0, v1, :cond_2f

    move/from16 v0, v25

    if-gt v0, v13, :cond_2f

    .line 5713
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    move/from16 v27, v0

    if-nez v27, :cond_2e

    .line 5714
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5715
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 5717
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2e

    .line 5718
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/SemHorizontalAbsListView;I)V

    .line 5722
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v27

    if-nez v27, :cond_2b

    .line 5723
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5724
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    .line 5725
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    .line 5728
    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    move/from16 v27, v0

    if-eqz v27, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_30

    .line 5729
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/SemHorizontalAbsListView;I)V

    .line 5732
    :cond_30
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 5733
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5734
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5737
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_31

    .line 5738
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    .line 5741
    :cond_31
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    goto/16 :goto_e

    .line 5747
    :cond_32
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mPreviousTextViewScroll:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2c

    .line 5749
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_2c

    .line 5750
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_f

    .line 5758
    .restart local v20    # "needToScroll":Z
    :sswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_35

    .line 5760
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_33

    .line 5761
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    .line 5764
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_34

    .line 5765
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    .line 5768
    :cond_34
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    .line 5771
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    .line 5772
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 5773
    const/16 v27, 0x1

    return v27

    .line 5778
    :cond_35
    :sswitch_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsTextSelectionStarted:Z

    move/from16 v27, v0

    if-nez v27, :cond_3d

    .line 5779
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    move/from16 v27, v0

    if-eqz v27, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_36

    .line 5780
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/SemHorizontalAbsListView;I)V

    .line 5783
    :cond_36
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5784
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 5785
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5786
    const/16 v19, 0x0

    .line 5788
    .local v19, "isNeedActionMode":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemSize:I

    .line 5790
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemSize:I

    move/from16 v27, v0

    if-eqz v27, :cond_3d

    .line 5791
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v27, v0

    if-eqz v27, :cond_3c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_37

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    move/from16 v27, v0

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3c

    .line 5793
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "dragSelectedViewPosition$iterator":Ljava/util/Iterator;
    :cond_38
    :goto_10
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_39

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 5794
    .local v15, "dragSelectedViewPosition":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v28

    invoke-interface/range {v27 .. v28}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v27

    if-eqz v27, :cond_38

    .line 5795
    const/16 v19, 0x1

    goto :goto_10

    .line 5799
    .end local v15    # "dragSelectedViewPosition":Ljava/lang/Integer;
    :cond_39
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    move/from16 v27, v0

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3a

    .line 5800
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move-object/from16 v27, v0

    if-nez v27, :cond_3a

    if-eqz v19, :cond_3a

    .line 5801
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 5805
    :cond_3a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemIsOnClickEnabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_3c

    .line 5806
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_3b
    :goto_11
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_3c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 5807
    .restart local v15    # "dragSelectedViewPosition":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v28

    invoke-interface/range {v27 .. v28}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v27

    if-eqz v27, :cond_3b

    .line 5808
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v27

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v28

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v27

    move-wide/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/SemHorizontalAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_11

    .line 5813
    .end local v15    # "dragSelectedViewPosition":Ljava/lang/Integer;
    .end local v16    # "dragSelectedViewPosition$iterator":Ljava/util/Iterator;
    :cond_3c
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-super {v0, v1, v2}, Landroid/widget/AdapterView;->semNotifyMultiSelectedStop(II)V

    .line 5817
    .end local v19    # "isNeedActionMode":Z
    :cond_3d
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    .line 5818
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsfirstMoveEvent:Z

    .line 5819
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    .line 5821
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    .line 5822
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    .line 5823
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    .line 5824
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndY:I

    .line 5826
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    .line 5827
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    .line 5828
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    .line 5829
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    .line 5831
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    .line 5832
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemSize:I

    .line 5833
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 5834
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromTrackedChildLeft:I

    .line 5836
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsCloseChildSetted:Z

    .line 5837
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mOldHoverScrollDirection:I

    .line 5838
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByLeft:Landroid/view/View;

    .line 5839
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByLeft:I

    .line 5840
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildLeft:I

    .line 5841
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    .line 5842
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    .line 5843
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildRight:I

    .line 5845
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_3e

    .line 5846
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 5850
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 5851
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_2

    .line 5535
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

    .line 6696
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 6697
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v5, :cond_3

    .line 6698
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 6699
    .local v3, "scrollX":I
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    .line 6700
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 6701
    .local v2, "restoreCount":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 6703
    .local v1, "height":I
    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v5, v3

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6704
    .local v0, "edgeX":I
    int-to-float v5, v0

    int-to-float v6, v1

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6705
    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 6706
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v5, v1, v6}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 6707
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6708
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    .line 6709
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 6708
    invoke-virtual {p0, v8, v8, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    .line 6711
    :cond_0
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 6713
    .end local v0    # "edgeX":I
    .end local v1    # "height":I
    .end local v2    # "restoreCount":I
    :cond_1
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_3

    .line 6714
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 6715
    .restart local v2    # "restoreCount":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 6716
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 6718
    .restart local v1    # "height":I
    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6719
    .restart local v0    # "edgeX":I
    int-to-float v5, v0

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6720
    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 6721
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v1, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 6722
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6723
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 6724
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v6

    .line 6723
    sub-int/2addr v5, v6

    .line 6724
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 6725
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 6723
    invoke-virtual {p0, v5, v8, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    .line 6727
    :cond_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 6732
    .end local v0    # "edgeX":I
    .end local v1    # "height":I
    .end local v2    # "restoreCount":I
    .end local v3    # "scrollX":I
    .end local v4    # "width":I
    :cond_3
    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    if-eqz v5, :cond_4

    .line 6733
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->drawQuickController(Landroid/graphics/Canvas;)V

    .line 6695
    :cond_4
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 3774
    invoke-super {p0}, Landroid/widget/AdapterView;->drawableStateChanged()V

    .line 3775
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    .line 3773
    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method abstract fillGapRTL(Z)V
.end method

.method findClosestMotionRow(I)I
    .locals 3
    .param p1, "x"    # I

    .prologue
    const/4 v2, -0x1

    .line 7985
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7986
    .local v0, "childCount":I
    if-nez v0, :cond_0

    .line 7987
    return v2

    .line 7990
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->findMotionRow(I)I

    move-result v1

    .line 7991
    .local v1, "motionRow":I
    if-eq v1, v2, :cond_1

    .end local v1    # "motionRow":I
    :goto_0
    return v1

    .restart local v1    # "motionRow":I
    :cond_1
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x1

    goto :goto_0
.end method

.method abstract findMotionRow(I)I
.end method

.method public findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 1
    .param p1, "accessibilityId"    # I

    .prologue
    .line 2106
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2107
    return-object p0

    .line 2113
    :cond_0
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 2114
    const/4 v0, 0x0

    return-object v0

    .line 2116
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public finishMultiChoiceMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1679
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1680
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1681
    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1678
    :cond_0
    return-void
.end method

.method public fling(I)V
    .locals 1
    .param p1, "velocityX"    # I

    .prologue
    .line 6605
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 6606
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    .line 6608
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 6609
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v0, p1}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->start(I)V

    .line 6604
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 8926
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    const/4 v1, -0x1

    .line 8927
    const/4 v2, -0x2

    const/4 v3, 0x0

    .line 8926
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/SemHorizontalAbsListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 8958
    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 8946
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/SemHorizontalAbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 8959
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/SemHorizontalAbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "focusedView"    # Landroid/view/View;

    .prologue
    .line 2981
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2982
    .local v0, "viewParent":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    if-eq v0, p0, :cond_0

    move-object p1, v0

    .line 2983
    check-cast p1, Landroid/view/View;

    .line 2984
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 2987
    :cond_0
    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 2988
    const/4 v1, 0x0

    return-object v1

    .line 2991
    :cond_1
    return-object p1
.end method

.method protected getBottomPaddingOffset()I
    .locals 2

    .prologue
    .line 3541
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9020
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 1313
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1377
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v4, :cond_1

    .line 1378
    :cond_0
    new-array v4, v5, [J

    return-object v4

    .line 1377
    :cond_1
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_0

    .line 1381
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1382
    .local v2, "idStates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1383
    .local v0, "count":I
    new-array v3, v0, [J

    .line 1385
    .local v3, "ids":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1386
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 1385
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1389
    :cond_2
    return-object v3
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1345
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1346
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    return v0

    .line 1349
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 1362
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 1363
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    return-object v0

    .line 1365
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 1606
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 4299
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 2193
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2194
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 2197
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2198
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2192
    :goto_0
    return-void

    .line 2201
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 7927
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 7917
    const/4 v0, 0x0

    return v0
.end method

.method public getHorizontalScrollbarHeight()I
    .locals 2

    .prologue
    .line 1844
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1845
    invoke-super {p0}, Landroid/widget/AdapterView;->getHorizontalScrollbarHeight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 1847
    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterView;->getHorizontalScrollbarHeight()I

    move-result v0

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2799
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2800
    .local v0, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getLeftFadingEdgeStrength()F

    move-result v1

    .line 2801
    .local v1, "fadeEdge":F
    if-nez v0, :cond_0

    .line 2802
    return v1

    .line 2804
    :cond_0
    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_3

    .line 2805
    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    return v4

    .line 2804
    :cond_2
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gtz v4, :cond_1

    .line 2810
    :cond_3
    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v4, :cond_5

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 2813
    .local v3, "left":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 2814
    .local v2, "fadeLength":F
    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    if-ge v3, v4, :cond_4

    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    .end local v1    # "fadeEdge":F
    :cond_4
    return v1

    .line 2811
    .end local v2    # "fadeLength":F
    .end local v3    # "left":I
    .restart local v1    # "fadeEdge":F
    :cond_5
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    .restart local v3    # "left":I
    goto :goto_0
.end method

.method protected getLeftPaddingOffset()I
    .locals 2

    .prologue
    .line 3496
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 3071
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 3083
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 3095
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 3059
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2830
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2831
    .local v0, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getRightFadingEdgeStrength()F

    move-result v1

    .line 2832
    .local v1, "fadeEdge":F
    if-nez v0, :cond_0

    .line 2833
    return v1

    .line 2835
    :cond_0
    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v5, :cond_2

    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v5, :cond_3

    .line 2836
    :cond_1
    const/high16 v5, 0x3f800000    # 1.0f

    return v5

    .line 2835
    :cond_2
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-lt v5, v6, :cond_1

    .line 2840
    :cond_3
    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v5, :cond_5

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    .line 2843
    .local v3, "right":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 2844
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v5

    int-to-float v2, v5

    .line 2845
    .local v2, "fadeLength":F
    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v5, v4, v5

    if-le v3, v5, :cond_4

    sub-int v5, v3, v4

    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v1, v5, v2

    .end local v1    # "fadeEdge":F
    :cond_4
    return v1

    .line 2841
    .end local v2    # "fadeLength":F
    .end local v3    # "right":I
    .end local v4    # "width":I
    .restart local v1    # "fadeEdge":F
    :cond_5
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    .restart local v3    # "right":I
    goto :goto_0
.end method

.method protected getRightPaddingOffset()I
    .locals 2

    .prologue
    .line 3526
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 3043
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 3044
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 3046
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getSelectionModeForAccessibility()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2046
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChoiceMode()I

    move-result v0

    .line 2047
    .local v0, "choiceMode":I
    packed-switch v0, :pswitch_data_0

    .line 2056
    return v1

    .line 2049
    :pswitch_0
    return v1

    .line 2051
    :pswitch_1
    const/4 v1, 0x1

    return v1

    .line 2054
    :pswitch_2
    const/4 v1, 0x2

    return v1

    .line 2047
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
    .line 3682
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 9009
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2569
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2570
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    .line 2572
    :cond_0
    return-object v1
.end method

.method protected getTopPaddingOffset()I
    .locals 2

    .prologue
    .line 3511
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getTouchSlop()I
    .locals 1

    .prologue
    .line 1049
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    return v0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 8993
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTranscriptMode:I

    return v0
.end method

.method getWidthForPosition(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 9931
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    .line 9932
    .local v1, "firstVisiblePosition":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 9933
    .local v0, "childCount":I
    sub-int v2, p1, v1

    .line 9934
    .local v2, "index":I
    if-ltz v2, :cond_0

    if-ge v2, v0, :cond_0

    .line 9936
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 9937
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    return v5

    .line 9940
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v5}, Landroid/widget/SemHorizontalAbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v3

    .line 9941
    .restart local v3    # "view":Landroid/view/View;
    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mHeightMeasureSpec:I

    invoke-virtual {v3, v5, v6}, Landroid/view/View;->measure(II)V

    .line 9942
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 9943
    .local v4, "width":I
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v5, v3, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 9944
    return v4
.end method

.method protected handleDataChanged()V
    .locals 15

    .prologue
    const/4 v14, -0x1

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 8187
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 8188
    .local v1, "count":I
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mLastHandledItemCount:I

    .line 8189
    .local v3, "lastHandledItemCount":I
    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v10, p0, Landroid/widget/SemHorizontalAbsListView;->mLastHandledItemCount:I

    .line 8192
    iget-boolean v10, p0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_0

    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    iget v11, p0, Landroid/widget/SemHorizontalAbsListView;->mOldAdapterItemCount:I

    if-eq v10, v11, :cond_0

    .line 8193
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    .line 8194
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resetPressItemListArray()V

    .line 8195
    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v10, p0, Landroid/widget/SemHorizontalAbsListView;->mOldAdapterItemCount:I

    .line 8198
    :cond_0
    iget v10, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 8199
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->confirmCheckedPositionsById()V

    .line 8203
    :cond_1
    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v10}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->clearTransientStateViews()V

    .line 8205
    if-lez v1, :cond_f

    .line 8210
    iget-boolean v10, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v10, :cond_8

    .line 8212
    iput-boolean v12, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 8213
    iput-object v13, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    .line 8215
    iget v10, p0, Landroid/widget/SemHorizontalAbsListView;->mTranscriptMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 8216
    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 8217
    return-void

    .line 8218
    :cond_2
    iget v10, p0, Landroid/widget/SemHorizontalAbsListView;->mTranscriptMode:I

    if-ne v10, v9, :cond_7

    .line 8219
    iget-boolean v10, p0, Landroid/widget/SemHorizontalAbsListView;->mForceTranscriptScroll:Z

    if-eqz v10, :cond_3

    .line 8220
    iput-boolean v12, p0, Landroid/widget/SemHorizontalAbsListView;->mForceTranscriptScroll:Z

    .line 8221
    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 8222
    return-void

    .line 8224
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 8225
    .local v0, "childCount":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    sub-int v5, v10, v11

    .line 8227
    .local v5, "listRight":I
    iget-boolean v10, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v10, :cond_4

    invoke-virtual {p0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8230
    .local v2, "lastChild":Landroid/view/View;
    :goto_0
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    .line 8231
    .local v4, "lastRight":I
    :goto_1
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v10, v0

    if-lt v10, v3, :cond_6

    .line 8232
    if-gt v4, v5, :cond_6

    .line 8233
    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 8234
    return-void

    .line 8228
    .end local v2    # "lastChild":Landroid/view/View;
    .end local v4    # "lastRight":I
    :cond_4
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "lastChild":Landroid/view/View;
    goto :goto_0

    .line 8230
    :cond_5
    move v4, v5

    .restart local v4    # "lastRight":I
    goto :goto_1

    .line 8238
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 8241
    .end local v0    # "childCount":I
    .end local v2    # "lastChild":Landroid/view/View;
    .end local v4    # "lastRight":I
    .end local v5    # "listRight":I
    :cond_7
    iget v10, p0, Landroid/widget/AdapterView;->mSyncMode:I

    packed-switch v10, :pswitch_data_0

    .line 8289
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v10

    if-nez v10, :cond_e

    .line 8291
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    .line 8294
    .local v6, "newPos":I
    if-lt v6, v1, :cond_9

    .line 8295
    add-int/lit8 v6, v1, -0x1

    .line 8297
    :cond_9
    if-gez v6, :cond_a

    .line 8298
    const/4 v6, 0x0

    .line 8302
    :cond_a
    invoke-virtual {p0, v6, v9}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 8304
    .local v7, "selectablePos":I
    if-ltz v7, :cond_d

    .line 8305
    invoke-virtual {p0, v7}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 8306
    return-void

    .line 8243
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 8248
    const/4 v8, 0x5

    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 8249
    iget v8, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 8251
    return-void

    .line 8255
    :cond_b
    invoke-virtual {p0}, Landroid/widget/AdapterView;->findSyncPosition()I

    move-result v6

    .line 8256
    .restart local v6    # "newPos":I
    if-ltz v6, :cond_8

    .line 8258
    invoke-virtual {p0, v6, v9}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 8259
    .restart local v7    # "selectablePos":I
    if-ne v7, v6, :cond_8

    .line 8261
    iput v6, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 8263
    iget-wide v8, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_c

    .line 8266
    const/4 v8, 0x5

    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 8274
    :goto_2
    invoke-virtual {p0, v6}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 8275
    return-void

    .line 8270
    :cond_c
    const/4 v8, 0x2

    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    goto :goto_2

    .line 8282
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_1
    const/4 v8, 0x5

    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 8283
    iget v8, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 8285
    return-void

    .line 8309
    .restart local v6    # "newPos":I
    .restart local v7    # "selectablePos":I
    :cond_d
    invoke-virtual {p0, v6, v12}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 8310
    if-ltz v7, :cond_f

    .line 8311
    invoke-virtual {p0, v7}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 8312
    return-void

    .line 8318
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :cond_e
    iget v10, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    if-ltz v10, :cond_f

    .line 8319
    return-void

    .line 8326
    :cond_f
    iget-boolean v10, p0, Landroid/widget/SemHorizontalAbsListView;->mStackFromBottom:Z

    if-eqz v10, :cond_10

    :goto_3
    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 8327
    iput v14, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 8328
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 8329
    iput v14, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 8330
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 8331
    iput-boolean v12, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 8332
    iput-object v13, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    .line 8333
    iput v14, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    .line 8334
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 8186
    return-void

    :cond_10
    move v8, v9

    .line 8326
    goto :goto_3

    .line 8241
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
    .line 8799
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 7942
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v0, v2, :cond_2

    .line 7943
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 7944
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    .line 7946
    :cond_0
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1

    .line 7947
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    .line 7949
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 7950
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 7951
    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedLeft:I

    .line 7941
    :cond_2
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 7998
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 7999
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->rememberSyncState()V

    .line 8000
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 8001
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7997
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1957
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_0

    .line 1958
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onScroll(III)V

    .line 1960
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1961
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScroll(Landroid/widget/SemHorizontalAbsListView;III)V

    .line 1963
    :cond_1
    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 1956
    return-void
.end method

.method public isFastScrollAlwaysVisible()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1829
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-nez v1, :cond_1

    .line 1830
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollAlwaysVisible:Z

    :cond_0
    return v0

    .line 1832
    :cond_1
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    :cond_2
    return v0
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1858
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-nez v0, :cond_0

    .line 1859
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollEnabled:Z

    return v0

    .line 1861
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 8464
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 1328
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1329
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0

    .line 1332
    :cond_0
    return v1
.end method

.method public isMultiFocusEnabled()Z
    .locals 1

    .prologue
    .line 10773
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    return v0
.end method

.method public isMultiWindows()Z
    .locals 2

    .prologue
    .line 1928
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "sys.multiwindow.running"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 2

    .prologue
    .line 3481
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

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
    .line 2130
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method protected isSemUsingAdapterView()Z
    .locals 1

    .prologue
    .line 7452
    const/4 v0, 0x1

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1940
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2218
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2177
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 3857
    invoke-super {p0}, Landroid/widget/AdapterView;->jumpDrawablesToCurrentState()V

    .line 3858
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 3856
    :cond_0
    return-void
.end method

.method keyPressed()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3690
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3694
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3695
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3696
    .local v3, "selectorRect":Landroid/graphics/Rect;
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3697
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3689
    :cond_1
    :goto_0
    return-void

    .line 3691
    .end local v2    # "selector":Landroid/graphics/drawable/Drawable;
    .end local v3    # "selectorRect":Landroid/graphics/Rect;
    :cond_2
    return-void

    .line 3699
    .restart local v2    # "selector":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "selectorRect":Landroid/graphics/Rect;
    :cond_3
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3701
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_5

    .line 3702
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_4

    return-void

    .line 3703
    :cond_4
    invoke-virtual {v4, v8}, Landroid/view/View;->setPressed(Z)V

    .line 3705
    :cond_5
    invoke-virtual {p0, v8}, Landroid/view/View;->setPressed(Z)V

    .line 3707
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v1

    .line 3708
    .local v1, "longClickable":Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3709
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_6

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_6

    .line 3710
    if-eqz v1, :cond_7

    .line 3711
    nop

    nop

    .line 3712
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    .line 3711
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 3717
    :cond_6
    :goto_1
    if-eqz v1, :cond_1

    iget-boolean v5, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v5, :cond_1

    .line 3718
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_8

    .line 3719
    new-instance v5, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    invoke-direct {v5, p0, v7}, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;)V

    iput-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    .line 3723
    :goto_2
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Landroid/widget/SemHorizontalAbsListView$WindowRunnnable;->rememberWindowAttachCount()V

    .line 3724
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3714
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_7
    nop

    nop

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1

    .line 3721
    :cond_8
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    invoke-virtual {p0, v5}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 2972
    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "isScrap"    # [Z

    .prologue
    .line 3111
    const-string/jumbo v7, "obtainView"

    const-wide/16 v8, 0x8

    invoke-static {v8, v9, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3113
    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-boolean v7, p2, v8

    .line 3117
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v7, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v4

    .line 3118
    .local v4, "transientView":Landroid/view/View;
    if-eqz v4, :cond_4

    .line 3119
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 3122
    .local v2, "params":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    iget v7, v2, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 3123
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p1, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 3125
    .local v5, "updatedView":Landroid/view/View;
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapterHasStableIds:Z

    if-eqz v7, :cond_0

    .line 3126
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 3128
    .local v6, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v6, :cond_2

    .line 3129
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 3135
    .local v1, "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    :goto_0
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    iput-wide v8, v1, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->itemId:J

    .line 3136
    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3140
    .end local v1    # "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    .end local v6    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    if-eq v5, v4, :cond_1

    .line 3141
    invoke-direct {p0, v5, p1}, Landroid/widget/SemHorizontalAbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 3142
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v7, v5, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3147
    .end local v5    # "updatedView":Landroid/view/View;
    :cond_1
    const/4 v7, 0x1

    const/4 v8, 0x0

    aput-boolean v7, p2, v8

    .line 3148
    return-object v4

    .line 3130
    .restart local v5    # "updatedView":Landroid/view/View;
    .restart local v6    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalAbsListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 3131
    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalAbsListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .restart local v1    # "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    goto :goto_0

    .end local v1    # "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    :cond_3
    move-object v1, v6

    .line 3133
    check-cast v1, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .restart local v1    # "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    goto :goto_0

    .line 3151
    .end local v1    # "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    .end local v2    # "params":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    .end local v5    # "updatedView":Landroid/view/View;
    .end local v6    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v7, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v3

    .line 3152
    .local v3, "scrapView":Landroid/view/View;
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3153
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_5

    .line 3154
    const/4 v7, 0x0

    return-object v7

    .line 3156
    :cond_5
    if-eqz v3, :cond_7

    .line 3157
    if-eq v0, v3, :cond_c

    .line 3158
    invoke-virtual {v3}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3159
    invoke-virtual {v3}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 3160
    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 3163
    :cond_6
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v7, v3, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3171
    :cond_7
    :goto_1
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mCacheColorHint:I

    if-eqz v7, :cond_8

    .line 3172
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v7}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 3175
    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v7

    if-nez v7, :cond_9

    .line 3176
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 3179
    :cond_9
    invoke-direct {p0, v0, p1}, Landroid/widget/SemHorizontalAbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 3181
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 3182
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mAccessibilityDelegate:Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;

    if-nez v7, :cond_a

    .line 3183
    new-instance v7, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;

    invoke-direct {v7, p0}, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mAccessibilityDelegate:Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;

    .line 3185
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v7

    if-nez v7, :cond_b

    .line 3186
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mAccessibilityDelegate:Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;

    invoke-virtual {v0, v7}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 3190
    :cond_b
    const-wide/16 v8, 0x8

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 3192
    return-object v0

    .line 3165
    :cond_c
    const/4 v7, 0x1

    const/4 v8, 0x0

    aput-boolean v7, p2, v8

    .line 3167
    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 3872
    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    .line 3874
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3875
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3877
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_0

    .line 3878
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3881
    :cond_0
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-eqz v1, :cond_4

    .line 3885
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    if-nez v1, :cond_2

    .line 3886
    new-instance v1, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    .line 3887
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3890
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 3891
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v1, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 3892
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 3895
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v1, :cond_3

    .line 3896
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollbarPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setScrollbarPosition(I)V

    .line 3871
    :cond_3
    return-void

    .line 3882
    :cond_4
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public onCancelPendingInputEvents()V
    .locals 1

    .prologue
    .line 4103
    invoke-super {p0}, Landroid/widget/AdapterView;->onCancelPendingInputEvents()V

    .line 4104
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    if-eqz v0, :cond_0

    .line 4105
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4107
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    if-eqz v0, :cond_1

    .line 4108
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4110
    :cond_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    if-eqz v0, :cond_2

    .line 4111
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4113
    :cond_2
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    if-eqz v0, :cond_3

    .line 4114
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4102
    :cond_3
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .param p1, "extraSpace"    # I

    .prologue
    const/4 v5, 0x0

    .line 3796
    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_0

    .line 3798
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v4

    return-object v4

    .line 3804
    :cond_0
    sget-object v4, Landroid/widget/SemHorizontalAbsListView;->ENABLED_STATE_SET:[I

    aget v1, v4, v5

    .line 3809
    .local v1, "enabledState":I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 3810
    .local v3, "state":[I
    const/4 v0, -0x1

    .line 3811
    .local v0, "enabledPos":I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 3812
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 3813
    move v0, v2

    .line 3819
    :cond_1
    if-ltz v0, :cond_2

    .line 3820
    add-int/lit8 v4, v0, 0x1

    .line 3821
    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    .line 3820
    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy([II[III)V

    .line 3824
    :cond_2
    return-object v3

    .line 3811
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v1, 0x0

    .line 8559
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8560
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPublicInputConnection:Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;

    if-nez v0, :cond_0

    .line 8561
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 8562
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;

    invoke-direct {v0, p0, p1}, Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/view/inputmethod/EditorInfo;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPublicInputConnection:Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;

    .line 8564
    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 8565
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 8566
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPublicInputConnection:Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;

    return-object v0

    .line 8568
    :cond_1
    return-object v1
.end method

.method protected onDetachedFromWindow()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3909
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    .line 3911
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDetaching:Z

    .line 3914
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    .line 3917
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->clear()V

    .line 3919
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3920
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3921
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 3922
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3923
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 3926
    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 3927
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3928
    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    .line 3931
    :cond_1
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_2

    .line 3932
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3933
    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3936
    :cond_2
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_3

    .line 3937
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3938
    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 3941
    :cond_3
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 3942
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3945
    :cond_4
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v1, :cond_5

    .line 3946
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 3949
    :cond_5
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    .line 3950
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3953
    :cond_6
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    if-eqz v1, :cond_7

    .line 3954
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3957
    :cond_7
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_8

    .line 3958
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3959
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3962
    :cond_8
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-eq v1, v5, :cond_9

    .line 3963
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 3966
    :cond_9
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_a

    .line 3967
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3971
    :cond_a
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    if-eqz v1, :cond_b

    .line 3972
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    .line 3975
    :cond_b
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->releaseAllBoosters()V

    .line 3976
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDetaching:Z

    .line 3908
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .param p1, "hint"    # I

    .prologue
    .line 8348
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDisplayHint(I)V

    .line 8349
    sparse-switch p1, :sswitch_data_0

    .line 8361
    :cond_0
    :goto_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopupHidden:Z

    .line 8347
    return-void

    .line 8351
    :sswitch_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8352
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    goto :goto_0

    .line 8356
    :sswitch_1
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8357
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->showPopup()V

    goto :goto_0

    .line 8361
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 8349
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
    .line 8911
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 8912
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    .line 8913
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resurrectSelection()Z

    .line 8910
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2595
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2596
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2594
    :cond_0
    :goto_0
    return-void

    .line 2597
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    .line 2600
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 2601
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v0, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 2602
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 2604
    :cond_2
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resurrectSelection()Z

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 6565
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    .line 6566
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 6591
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    .line 6568
    :pswitch_0
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 6569
    const/16 v4, 0xa

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 6570
    .local v1, "hscroll":F
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    .line 6571
    .local v2, "viewRootImpl":Landroid/view/ViewRootImpl;
    cmpl-float v4, v1, v6

    if-eqz v4, :cond_1

    .line 6572
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalScrollFactor()F

    move-result v4

    mul-float/2addr v4, v1

    float-to-int v0, v4

    .line 6573
    .local v0, "delta":I
    invoke-virtual {p0, v0, v0}, Landroid/widget/SemHorizontalAbsListView;->trackMotionScroll(II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6574
    return v7

    .line 6578
    .end local v0    # "delta":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 6579
    const/16 v4, 0x9

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v3

    .line 6580
    .local v3, "vscroll":F
    cmpl-float v4, v3, v6

    if-eqz v4, :cond_0

    .line 6581
    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollFactor()F

    move-result v4

    mul-float/2addr v4, v3

    float-to-int v0, v4

    .line 6582
    .restart local v0    # "delta":I
    invoke-virtual {p0, v0, v0}, Landroid/widget/SemHorizontalAbsListView;->trackMotionScroll(II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 6583
    return v7

    .line 6566
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 8808
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8810
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8807
    :cond_0
    :goto_0
    return-void

    .line 8810
    :cond_1
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopupHidden:Z

    if-nez v0, :cond_0

    .line 8811
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->showPopup()V

    goto :goto_0

    .line 8815
    :cond_2
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8816
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1994
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1995
    const-class v0, Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 1993
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v2, 0x1

    .line 2031
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2032
    const-class v0, Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2033
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2034
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 2035
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2036
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2038
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 2039
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2040
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2030
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

    .line 3294
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 3295
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    if-nez v0, :cond_1

    .line 3297
    :cond_0
    return-void

    .line 3300
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3305
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    if-ne p2, v1, :cond_5

    .line 3306
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 3307
    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3312
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3313
    const/16 v1, 0x10

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3314
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 3317
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3318
    const/16 v1, 0x20

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3319
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 3293
    :cond_3
    return-void

    .line 3301
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 3302
    return-void

    .line 3309
    :cond_5
    const/4 v1, 0x4

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 6806
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6807
    const/4 v0, 0x1

    return v0

    .line 6810
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 6846
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 6849
    .local v0, "actionMasked":I
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v7, :cond_0

    .line 6850
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v7}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 6853
    :cond_0
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDetaching:Z

    if-nez v7, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 6861
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v7, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 6862
    return v9

    .line 6858
    :cond_1
    return v8

    .line 6865
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 6935
    :cond_3
    :goto_0
    :pswitch_0
    return v8

    .line 6867
    :pswitch_1
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6868
    .local v3, "touchMode":I
    const/4 v7, 0x6

    if-eq v3, v7, :cond_4

    const/4 v7, 0x5

    if-ne v3, v7, :cond_5

    .line 6869
    :cond_4
    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    .line 6870
    return v9

    .line 6873
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    .line 6874
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    .line 6875
    .local v6, "y":I
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    .line 6877
    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->findMotionRow(I)I

    move-result v1

    .line 6878
    .local v1, "motionPosition":I
    if-eq v3, v12, :cond_6

    if-ltz v1, :cond_6

    .line 6881
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v7, v1, v7

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 6882
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    .line 6883
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    .line 6884
    iput v6, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionY:I

    .line 6885
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    .line 6886
    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6887
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->clearScrollingCache()V

    .line 6889
    .end local v4    # "v":Landroid/view/View;
    :cond_6
    const/high16 v7, -0x80000000

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    .line 6890
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->initOrResetVelocityTracker()V

    .line 6891
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 6892
    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    .line 6893
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Landroid/view/View;->startNestedScroll(I)Z

    .line 6894
    if-ne v3, v12, :cond_3

    .line 6895
    return v9

    .line 6901
    .end local v1    # "motionPosition":I
    .end local v3    # "touchMode":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :pswitch_2
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    packed-switch v7, :pswitch_data_1

    goto :goto_0

    .line 6903
    :pswitch_3
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 6904
    .local v2, "pointerIndex":I
    if-ne v2, v10, :cond_7

    .line 6905
    const/4 v2, 0x0

    .line 6906
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    .line 6908
    :cond_7
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v5, v7

    .line 6909
    .restart local v5    # "x":I
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->initVelocityTrackerIfNotExists()V

    .line 6910
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 6911
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v7, v7

    invoke-direct {p0, v5, v7, v11}, Landroid/widget/SemHorizontalAbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 6912
    return v9

    .line 6921
    .end local v2    # "pointerIndex":I
    .end local v5    # "x":I
    :pswitch_4
    iput v10, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6922
    iput v10, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    .line 6923
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->recycleVelocityTracker()V

    .line 6924
    invoke-virtual {p0, v8}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 6925
    invoke-virtual {p0}, Landroid/view/View;->stopNestedScroll()V

    goto/16 :goto_0

    .line 6930
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 6865
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

    .line 6901
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method onJumpScrollToTopFinished()V
    .locals 2

    .prologue
    .line 6346
    const-string/jumbo v0, "SemHorizontalAbsListView"

    const-string/jumbo v1, "onJumpScrollToTopFinished()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6345
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 4361
    sparse-switch p1, :sswitch_data_0

    .line 4376
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 4364
    :sswitch_0
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_0

    .line 4368
    :sswitch_1
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    goto :goto_0

    .line 4371
    :sswitch_2
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    if-eqz v0, :cond_0

    .line 4372
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resetPressItemListArray()V

    goto :goto_0

    .line 4361
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
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 4394
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4395
    .local v1, "selectedview":Landroid/view/View;
    const/4 v0, 0x0

    .line 4397
    .local v0, "currentview":Landroid/view/View;
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4398
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4399
    return v7

    .line 4401
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4402
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v3, :cond_2

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_2

    .line 4403
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 4405
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4406
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 4407
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/widget/SemHorizontalAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 4408
    invoke-virtual {v2, v6}, Landroid/view/View;->setPressed(Z)V

    .line 4410
    :cond_1
    invoke-virtual {p0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 4411
    return v7

    .line 4415
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 4478
    .end local v0    # "currentview":Landroid/view/View;
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    return v3

    .line 4421
    .restart local v0    # "currentview":Landroid/view/View;
    :sswitch_0
    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    if-eqz v3, :cond_4

    .line 4422
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    if-nez v3, :cond_6

    .line 4423
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    .line 4429
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4430
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v3, :cond_3

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_3

    .line 4431
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 4433
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4435
    .local v0, "currentview":Landroid/view/View;
    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    .line 4436
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    if-nez v3, :cond_7

    .line 4437
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resetPressItemListArray()V

    .line 4438
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    iget-wide v4, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/SemHorizontalAbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 4439
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/widget/SemHorizontalAbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 4442
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-direct {p0, v3, v4}, Landroid/widget/SemHorizontalAbsListView;->addToPressItemListArray(II)V

    .line 4443
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    .line 4452
    :cond_5
    :goto_2
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    if-eqz v3, :cond_3

    .line 4453
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    goto :goto_0

    .line 4425
    .local v0, "currentview":Landroid/view/View;
    :cond_6
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    goto :goto_1

    .line 4445
    .local v0, "currentview":Landroid/view/View;
    :cond_7
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resetPressItemListArray()V

    .line 4446
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/widget/SemHorizontalAbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 4448
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-direct {p0, v3, v4}, Landroid/widget/SemHorizontalAbsListView;->addToPressItemListArray(II)V

    goto :goto_2

    .line 4460
    .local v0, "currentview":Landroid/view/View;
    :sswitch_1
    iput-boolean v6, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_0

    .line 4464
    :sswitch_2
    iput-boolean v6, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    .line 4465
    iput v6, p0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    .line 4466
    iput v6, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    .line 4467
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    .line 4468
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSecondPressedPoint:I

    goto :goto_0

    .line 4471
    :sswitch_3
    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    if-eqz v3, :cond_3

    .line 4472
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resetPressItemListArray()V

    goto/16 :goto_0

    .line 4415
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
    .line 2926
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 2928
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 2930
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2931
    .local v0, "childCount":I
    if-eqz p1, :cond_1

    .line 2932
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2933
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 2932
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2935
    :cond_0
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->markChildrenDirty()V

    .line 2938
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    .line 2939
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 2941
    sub-int v2, p4, p2

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mOverscrollMax:I

    .line 2944
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v2, :cond_2

    .line 2945
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onItemCountChanged(II)V

    .line 2925
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

    .line 2897
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_0

    .line 2898
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->useDefaultSelector()V

    .line 2900
    :cond_0
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 2901
    .local v3, "listPadding":Landroid/graphics/Rect;
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionLeftPadding:I

    iget v8, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->left:I

    .line 2902
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionTopPadding:I

    iget v8, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->top:I

    .line 2903
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionRightPadding:I

    iget v8, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->right:I

    .line 2904
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionBottomPadding:I

    iget v8, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->bottom:I

    .line 2907
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mTranscriptMode:I

    if-ne v7, v5, :cond_1

    .line 2908
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2909
    .local v0, "childCount":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int v4, v7, v8

    .line 2911
    .local v4, "listRight":I
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v7, :cond_2

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2914
    .local v1, "lastChild":Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    .line 2915
    .local v2, "lastRight":I
    :goto_1
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v7, v0

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mLastHandledItemCount:I

    if-lt v7, v8, :cond_5

    .line 2916
    if-gt v2, v4, :cond_4

    .line 2915
    :goto_2
    iput-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mForceTranscriptScroll:Z

    .line 2896
    .end local v0    # "childCount":I
    .end local v1    # "lastChild":Landroid/view/View;
    .end local v2    # "lastRight":I
    .end local v4    # "listRight":I
    :cond_1
    return-void

    .line 2912
    .restart local v0    # "childCount":I
    .restart local v4    # "listRight":I
    :cond_2
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "lastChild":Landroid/view/View;
    goto :goto_0

    .line 2914
    :cond_3
    move v2, v4

    .restart local v2    # "lastRight":I
    goto :goto_1

    :cond_4
    move v5, v6

    .line 2916
    goto :goto_2

    :cond_5
    move v5, v6

    .line 2915
    goto :goto_2
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 3
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 6670
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 6671
    .local v0, "childCount":I
    if-nez p4, :cond_2

    if-lez v0, :cond_2

    float-to-int v1, p2

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->canScrollList(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6672
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMinimumVelocity:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 6673
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 6674
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez v1, :cond_0

    .line 6675
    new-instance v1, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    .line 6677
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Landroid/view/View;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6678
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    float-to-int v2, p2

    invoke-virtual {v1, v2}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->start(I)V

    .line 6680
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 6682
    :cond_2
    invoke-virtual {p0, p2, p3, p4}, Landroid/view/View;->dispatchNestedFling(FFZ)Z

    move-result v1

    return v1
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

    const/4 v5, 0x0

    .line 6635
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 6636
    .local v6, "motionIndex":I
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 6637
    .local v7, "motionView":Landroid/view/View;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 6638
    .local v8, "oldLeft":I
    :goto_0
    if-eqz v7, :cond_0

    neg-int v0, p4

    neg-int v4, p4

    invoke-virtual {p0, v0, v4}, Landroid/widget/SemHorizontalAbsListView;->trackMotionScroll(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6639
    :cond_0
    move v3, p4

    .line 6640
    .local v3, "myUnconsumed":I
    const/4 v1, 0x0

    .line 6641
    .local v1, "myConsumed":I
    if-eqz v7, :cond_1

    .line 6642
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v1, v0, v8

    .line 6643
    sub-int v3, p4, v1

    :cond_1
    move-object v0, p0

    move v4, v2

    .line 6645
    invoke-virtual/range {v0 .. v5}, Landroid/view/View;->dispatchNestedScroll(IIII[I)Z

    .line 6634
    .end local v1    # "myConsumed":I
    .end local v3    # "myUnconsumed":I
    :cond_2
    return-void

    .line 6637
    .end local v8    # "oldLeft":I
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "oldLeft":I
    goto :goto_0
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 6625
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 6626
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->startNestedScroll(I)Z

    .line 6624
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 6517
    iget v0, p0, Landroid/view/View;->mScrollX:I

    if-eq v0, p1, :cond_0

    .line 6518
    iget v0, p0, Landroid/view/View;->mScrollY:I

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 6519
    iput p1, p0, Landroid/view/View;->mScrollX:I

    .line 6520
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 6522
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 6516
    :cond_0
    return-void
.end method

.method public onRemoteAdapterConnected()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 9113
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eq v0, v1, :cond_1

    .line 9114
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 9115
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    if-eqz v0, :cond_0

    .line 9116
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    .line 9117
    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 9119
    :cond_0
    return v2

    .line 9120
    :cond_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_2

    .line 9121
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->semSuperNotifyDataSetChanged()V

    .line 9122
    const/4 v0, 0x1

    return v0

    .line 9124
    :cond_2
    return v2
.end method

.method public onRemoteAdapterDisconnected()V
    .locals 0

    .prologue
    .line 9131
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 2473
    instance-of v2, p1, Landroid/widget/SemHorizontalAbsListView$SavedState;

    if-eqz v2, :cond_4

    move-object v0, p1

    .line 2474
    nop

    nop

    .line 2486
    .local v0, "ss":Landroid/widget/SemHorizontalAbsListView$SavedState;
    :goto_0
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2487
    iput-boolean v4, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 2489
    iget v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->width:I

    int-to-long v2, v2

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    .line 2491
    iget-wide v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->selectedId:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_6

    .line 2492
    iput-boolean v4, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 2493
    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    .line 2494
    iget-wide v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->selectedId:J

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 2495
    iget v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    iput v2, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 2496
    iget v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    iput v2, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 2497
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/AdapterView;->mSyncMode:I

    .line 2511
    :cond_0
    :goto_1
    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->setFilterText(Ljava/lang/String;)V

    .line 2513
    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_1

    .line 2514
    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2517
    :cond_1
    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_2

    .line 2518
    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2521
    :cond_2
    iget v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkedItemCount:I

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    .line 2523
    iget-boolean v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->inActionMode:Z

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 2524
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    if-eqz v2, :cond_3

    .line 2525
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v2}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 2528
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 2470
    return-void

    .line 2475
    .end local v0    # "ss":Landroid/widget/SemHorizontalAbsListView$SavedState;
    :cond_4
    instance-of v2, p1, Landroid/os/Bundle;

    if-eqz v2, :cond_5

    move-object v1, p1

    .line 2476
    nop

    nop

    .line 2477
    .local v1, "wrappedSavedState":Landroid/os/Bundle;
    const-class v2, Landroid/widget/SemHorizontalAbsListView$SavedState;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 2478
    const-string/jumbo v2, "android.widget.SemHorizontalAbsListView.SavedState"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/widget/SemHorizontalAbsListView$SavedState;

    .restart local v0    # "ss":Landroid/widget/SemHorizontalAbsListView$SavedState;
    goto :goto_0

    .line 2481
    .end local v0    # "ss":Landroid/widget/SemHorizontalAbsListView$SavedState;
    .end local v1    # "wrappedSavedState":Landroid/os/Bundle;
    :cond_5
    const-string/jumbo v2, "SemHorizontalAbsListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SemHorizontalAbsListView.onRestoreInstanceState() is of neither SavedState type nor Bundle type, but of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2483
    return-void

    .line 2498
    .restart local v0    # "ss":Landroid/widget/SemHorizontalAbsListView$SavedState;
    :cond_6
    iget-wide v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    .line 2499
    invoke-virtual {p0, v5}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 2501
    invoke-virtual {p0, v5}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 2502
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    .line 2503
    iput-boolean v4, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 2504
    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    .line 2505
    iget-wide v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 2506
    iget v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    iput v2, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 2507
    iget v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    iput v2, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 2508
    iput v4, p0, Landroid/widget/AdapterView;->mSyncMode:I

    goto/16 :goto_1
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 4074
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onRtlPropertiesChanged(I)V

    .line 4076
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    .line 4078
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_0

    .line 4079
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {p0}, Landroid/view/View;->semGetHorizontalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setScrollbarPosition(I)V

    .line 4073
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 18

    .prologue
    .line 2360
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    .line 2362
    invoke-super/range {p0 .. p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v11

    .line 2364
    .local v11, "superState":Landroid/os/Parcelable;
    new-instance v10, Landroid/widget/SemHorizontalAbsListView$SavedState;

    invoke-direct {v10, v11}, Landroid/widget/SemHorizontalAbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2366
    .local v10, "ss":Landroid/widget/SemHorizontalAbsListView$SavedState;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    if-eqz v15, :cond_0

    .line 2368
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-wide v0, v15, Landroid/widget/SemHorizontalAbsListView$SavedState;->selectedId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->selectedId:J

    .line 2369
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-wide v0, v15, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    .line 2370
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget v15, v15, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    iput v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    .line 2371
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget v15, v15, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    iput v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    .line 2372
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget v15, v15, Landroid/widget/SemHorizontalAbsListView$SavedState;->width:I

    iput v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->width:I

    .line 2373
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-object v15, v15, Landroid/widget/SemHorizontalAbsListView$SavedState;->filter:Ljava/lang/String;

    iput-object v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2374
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-boolean v15, v15, Landroid/widget/SemHorizontalAbsListView$SavedState;->inActionMode:Z

    iput-boolean v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->inActionMode:Z

    .line 2375
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget v15, v15, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkedItemCount:I

    iput v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkedItemCount:I

    .line 2376
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-object v15, v15, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2377
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-object v15, v15, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2378
    return-object v10

    .line 2381
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    if-lez v15, :cond_3

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v15, :cond_3

    const/4 v5, 0x1

    .line 2382
    .local v5, "haveChildren":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getSelectedItemId()J

    move-result-wide v8

    .line 2383
    .local v8, "selectedId":J
    iput-wide v8, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->selectedId:J

    .line 2384
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v15

    iput v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->width:I

    .line 2386
    const-wide/16 v16, 0x0

    cmp-long v15, v8, v16

    if-ltz v15, :cond_4

    .line 2388
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectedLeft:I

    iput v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    .line 2389
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v15

    iput v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    .line 2390
    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    iput-wide v0, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    .line 2417
    :goto_1
    const/4 v15, 0x0

    iput-object v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2418
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v15, :cond_1

    .line 2419
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 2420
    .local v12, "textFilter":Landroid/widget/EditText;
    if-eqz v12, :cond_1

    .line 2421
    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 2422
    .local v3, "filterText":Landroid/text/Editable;
    if-eqz v3, :cond_1

    .line 2423
    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2428
    .end local v3    # "filterText":Landroid/text/Editable;
    .end local v12    # "textFilter":Landroid/widget/EditText;
    :cond_1
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v15, :cond_7

    const/4 v15, 0x1

    :goto_2
    iput-boolean v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->inActionMode:Z

    .line 2430
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v15, :cond_2

    .line 2431
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v15

    iput-object v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2433
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v15, :cond_9

    .line 2434
    new-instance v7, Landroid/util/LongSparseArray;

    invoke-direct {v7}, Landroid/util/LongSparseArray;-><init>()V

    .line 2435
    .local v7, "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v15}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    .line 2436
    .local v2, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, v2, :cond_8

    .line 2437
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v15, v6}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v15, v6}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1, v15}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2436
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2381
    .end local v2    # "count":I
    .end local v5    # "haveChildren":Z
    .end local v6    # "i":I
    .end local v7    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v8    # "selectedId":J
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "haveChildren":Z
    goto/16 :goto_0

    .line 2392
    .restart local v8    # "selectedId":J
    :cond_4
    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v15, :cond_6

    .line 2402
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 2403
    .local v13, "v":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v15

    iput v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    .line 2404
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2405
    .local v4, "firstPos":I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AdapterView;->mItemCount:I

    if-lt v4, v15, :cond_5

    .line 2406
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v4, v15, -0x1

    .line 2408
    :cond_5
    iput v4, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    .line 2409
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v15, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    goto/16 :goto_1

    .line 2411
    .end local v4    # "firstPos":I
    .end local v13    # "v":Landroid/view/View;
    :cond_6
    const/4 v15, 0x0

    iput v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    .line 2412
    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    iput-wide v0, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    .line 2413
    const/4 v15, 0x0

    iput v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    goto/16 :goto_1

    .line 2428
    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 2439
    .restart local v2    # "count":I
    .restart local v6    # "i":I
    .restart local v7    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_8
    iput-object v7, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2441
    .end local v2    # "count":I
    .end local v6    # "i":I
    .end local v7    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_9
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    iput v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkedItemCount:I

    .line 2443
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v15, :cond_a

    .line 2444
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v15}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    .line 2451
    :cond_a
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 2452
    .local v14, "wrappedSavedState":Landroid/os/Bundle;
    const-string/jumbo v15, "android.widget.SemHorizontalAbsListView.SavedState"

    invoke-virtual {v14, v15, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2454
    return-object v14
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 3556
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3557
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 3558
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->rememberSyncState()V

    .line 3561
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_1

    .line 3562
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onSizeChanged(IIII)V

    .line 3555
    :cond_1
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    const/4 v0, 0x0

    .line 6617
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8857
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8858
    invoke-direct {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->createTextFilter(Z)V

    .line 8859
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 8860
    .local v1, "length":I
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 8861
    .local v2, "showing":Z
    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 8863
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->showPopup()V

    .line 8864
    iput-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    .line 8870
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    .line 8871
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 8873
    .local v0, "f":Landroid/widget/Filter;
    if-eqz v0, :cond_3

    .line 8874
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 8856
    .end local v0    # "f":Landroid/widget/Filter;
    .end local v1    # "length":I
    .end local v2    # "showing":Z
    :cond_1
    return-void

    .line 8865
    .restart local v1    # "length":I
    .restart local v2    # "showing":Z
    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 8867
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    .line 8868
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    goto :goto_0

    .line 8876
    .restart local v0    # "f":Landroid/widget/Filter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 5881
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_1

    .line 5884
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v9

    :cond_0
    return v9

    .line 5887
    :cond_1
    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v10, :cond_2

    .line 5888
    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v10}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 5891
    :cond_2
    iget-boolean v10, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDetaching:Z

    if-nez v10, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 5899
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Landroid/view/View;->startNestedScroll(I)Z

    .line 5901
    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v10, :cond_4

    .line 5902
    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v10, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 5903
    .local v4, "intercepted":Z
    if-eqz v4, :cond_4

    .line 5904
    return v9

    .line 5896
    .end local v4    # "intercepted":Z
    :cond_3
    return v12

    .line 5908
    :cond_4
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->initVelocityTrackerIfNotExists()V

    .line 5909
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 5911
    .local v6, "vtev":Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 5912
    .local v0, "actionMasked":I
    if-nez v0, :cond_5

    .line 5913
    iput v12, p0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    .line 5915
    :cond_5
    iget v10, p0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 5916
    packed-switch v0, :pswitch_data_0

    .line 5979
    :cond_6
    :goto_0
    :pswitch_0
    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v10, :cond_7

    .line 5980
    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, v6}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5982
    :cond_7
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 5983
    return v9

    .line 5918
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 5923
    :pswitch_2
    invoke-direct {p0, p1, v6}, Landroid/widget/SemHorizontalAbsListView;->onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 5928
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 5933
    :pswitch_4
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->onTouchCancel()V

    goto :goto_0

    .line 5938
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 5939
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    .line 5940
    .local v7, "x":I
    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionY:I

    .line 5941
    .local v8, "y":I
    invoke-virtual {p0, v7, v8}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v5

    .line 5942
    .local v5, "motionPosition":I
    if-ltz v5, :cond_8

    .line 5944
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v10, v5, v10

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5945
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    iput v10, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    .line 5946
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    .line 5947
    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_6

    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v10

    if-nez v10, :cond_6

    .line 5948
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    goto :goto_0

    .line 5951
    .end local v1    # "child":Landroid/view/View;
    :cond_8
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    goto :goto_0

    .line 5959
    .end local v5    # "motionPosition":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 5960
    .local v3, "index":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 5961
    .local v2, "id":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    float-to-int v7, v10

    .line 5962
    .restart local v7    # "x":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v8, v10

    .line 5963
    .restart local v8    # "y":I
    iput v12, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    .line 5964
    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    .line 5965
    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    .line 5966
    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionY:I

    .line 5967
    invoke-virtual {p0, v7, v8}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v5

    .line 5968
    .restart local v5    # "motionPosition":I
    if-ltz v5, :cond_9

    .line 5970
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v10, v5, v10

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5971
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    iput v10, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    .line 5972
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    .line 5974
    .end local v1    # "child":Landroid/view/View;
    :cond_9
    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    goto/16 :goto_0

    .line 5916
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
    .locals 3
    .param p1, "isInTouchMode"    # Z

    .prologue
    const/4 v2, 0x0

    .line 4856
    if-eqz p1, :cond_2

    .line 4858
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->hideSelector()V

    .line 4862
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 4865
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    .line 4867
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    .line 4855
    :cond_1
    :goto_0
    return-void

    .line 4869
    :cond_2
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 4870
    .local v0, "touchMode":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 4871
    :cond_3
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 4872
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    .line 4874
    :cond_4
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v1, :cond_5

    .line 4875
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 4878
    :cond_5
    iget v1, p0, Landroid/view/View;->mScrollX:I

    if-eqz v1, :cond_1

    .line 4879
    iput v2, p0, Landroid/view/View;->mScrollX:I

    .line 4880
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 4881
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->finishGlows()V

    .line 4882
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 10488
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 10489
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverPosition:I

    .line 10491
    if-nez p2, :cond_0

    .line 10487
    :goto_0
    return-void

    .line 10493
    :cond_0
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->releaseAllBoosters()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3991
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onWindowFocusChanged(Z)V

    .line 3996
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mHasWindowFocusForMotion:Z

    .line 3998
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    .line 4000
    .local v0, "touchMode":I
    :goto_0
    if-nez p1, :cond_6

    .line 4001
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 4002
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-eqz v1, :cond_1

    .line 4003
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4006
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    .line 4007
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v1, :cond_0

    .line 4008
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 4010
    :cond_0
    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-eqz v1, :cond_1

    .line 4011
    iput v3, p0, Landroid/view/View;->mScrollY:I

    .line 4012
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 4013
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->finishGlows()V

    .line 4014
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4018
    :cond_1
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    .line 4020
    if-ne v0, v4, :cond_2

    .line 4022
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    .line 4026
    :cond_2
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    if-eqz v1, :cond_3

    .line 4027
    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    .line 4051
    :cond_3
    :goto_1
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLastTouchMode:I

    .line 4053
    if-nez p1, :cond_4

    .line 4054
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->releaseAllBoosters()V

    .line 3990
    :cond_4
    return-void

    .line 3998
    .end local v0    # "touchMode":I
    :cond_5
    const/4 v0, 0x1

    .restart local v0    # "touchMode":I
    goto :goto_0

    .line 4030
    :cond_6
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPopupHidden:Z

    if-eqz v1, :cond_8

    .line 4036
    :cond_7
    :goto_2
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mLastTouchMode:I

    if-eq v0, v1, :cond_3

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mLastTouchMode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 4038
    if-ne v0, v4, :cond_9

    .line 4040
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resurrectSelection()Z

    goto :goto_1

    .line 4032
    :cond_8
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->showPopup()V

    goto :goto_2

    .line 4044
    :cond_9
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->hideSelector()V

    .line 4045
    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 4046
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    goto :goto_1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0xc8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2081
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2082
    return v4

    .line 2084
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 2100
    return v3

    .line 2086
    :sswitch_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 2087
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v0, v1, v2

    .line 2088
    .local v0, "viewportWidth":I
    invoke-virtual {p0, v0, v5}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    .line 2089
    return v4

    .line 2091
    .end local v0    # "viewportWidth":I
    :cond_1
    return v3

    .line 2093
    :sswitch_1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v1, :cond_2

    .line 2094
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v0, v1, v2

    .line 2095
    .restart local v0    # "viewportWidth":I
    neg-int v1, v0

    invoke-virtual {p0, v1, v5}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    .line 2096
    return v4

    .line 2098
    .end local v0    # "viewportWidth":I
    :cond_2
    return v3

    .line 2084
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
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1496
    const/4 v8, 0x0

    .line 1497
    .local v8, "handled":Z
    const/4 v9, 0x0

    .line 1498
    .local v9, "handledNotifykeyPress":Z
    const/4 v7, 0x1

    .line 1500
    .local v7, "dispatchItemClick":Z
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-eqz v3, :cond_f

    .line 1501
    const/4 v8, 0x1

    .line 1502
    const/4 v0, 0x0

    .line 1504
    .local v0, "checkedStateChanged":Z
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_9

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 1505
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_9

    .line 1506
    :cond_0
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v6, 0x0

    .line 1507
    .local v6, "checked":Z
    :goto_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1508
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1509
    if-eqz v6, :cond_7

    .line 1510
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1515
    :cond_1
    :goto_1
    if-eqz v6, :cond_8

    .line 1516
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    .line 1520
    :goto_2
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    .line 1521
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1523
    const/4 v7, 0x0

    .line 1525
    :cond_2
    const/4 v0, 0x1

    .line 1542
    .end local v6    # "checked":Z
    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    .line 1543
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->updateOnScreenCheckedViews()V

    .line 1549
    .end local v0    # "checkedStateChanged":Z
    :cond_4
    :goto_4
    if-eqz v7, :cond_5

    .line 1550
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    or-int/2addr v8, v1

    .line 1553
    .end local v8    # "handled":Z
    :cond_5
    return v8

    .line 1506
    .restart local v0    # "checkedStateChanged":Z
    .restart local v8    # "handled":Z
    :cond_6
    const/4 v6, 0x1

    .restart local v6    # "checked":Z
    goto :goto_0

    .line 1512
    :cond_7
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 1518
    :cond_8
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1526
    .end local v6    # "checked":Z
    :cond_9
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v3, v2, :cond_3

    .line 1527
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-eqz v3, :cond_c

    move v6, v1

    .line 1528
    .local v6, "checked":Z
    :goto_5
    if-eqz v6, :cond_d

    .line 1529
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1530
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1531
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1532
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 1533
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v4, v5, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1535
    :cond_a
    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    .line 1539
    :cond_b
    :goto_6
    const/4 v0, 0x1

    goto :goto_3

    .end local v6    # "checked":Z
    :cond_c
    move v6, v2

    .line 1527
    goto :goto_5

    .line 1536
    .restart local v6    # "checked":Z
    :cond_d
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1537
    :cond_e
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    goto :goto_6

    .line 1545
    .end local v0    # "checkedStateChanged":Z
    .end local v6    # "checked":Z
    :cond_f
    if-eqz p1, :cond_4

    goto :goto_4
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .prologue
    const v7, 0xc369

    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 4255
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v0, v2, :cond_2

    .line 4256
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_1

    .line 4257
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    .line 4259
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v0, v2, :cond_0

    .line 4260
    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    .line 4262
    :cond_0
    invoke-virtual {p0, p2, v1}, Landroid/widget/SemHorizontalAbsListView;->setItemChecked(IZ)V

    .line 4263
    invoke-virtual {p0, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 4265
    :cond_1
    return v1

    .line 4268
    :cond_2
    const/4 v6, 0x0

    .line 4269
    .local v6, "handled":Z
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_3

    .line 4270
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 4273
    .end local v6    # "handled":Z
    :cond_3
    if-nez v6, :cond_4

    .line 4274
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/SemHorizontalAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 4275
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 4277
    :cond_4
    if-eqz v6, :cond_5

    .line 4278
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->semGetEnableVibrationAtLongPress()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4279
    invoke-virtual {p0, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 4284
    :cond_5
    :goto_0
    return v6

    .line 4281
    :cond_6
    const-string/jumbo v0, "SemHorizontalAbsListView"

    const-string/jumbo v1, " does not need vibration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 4503
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 4504
    .local v4, "frame":Landroid/graphics/Rect;
    if-nez v4, :cond_0

    .line 4505
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 4506
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 4508
    :cond_0
    instance-of v6, p0, Landroid/widget/SemHorizontalListView;

    if-eqz v6, :cond_1

    move-object v6, p0

    nop

    nop

    iget v2, v6, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    .line 4509
    .local v2, "dividerHeight":I
    :cond_1
    if-lez v2, :cond_3

    move-object v6, p0

    check-cast v6, Landroid/widget/SemHorizontalListView;

    iget-object v6, v6, Landroid/widget/SemHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_3

    const/4 v3, 0x1

    .line 4511
    .local v3, "drawDividers":Z
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 4512
    .local v1, "count":I
    add-int/lit8 v5, v1, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_5

    .line 4513
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4514
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    .line 4515
    invoke-virtual {v0, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 4516
    if-eqz v3, :cond_2

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 4518
    :cond_2
    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4519
    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v6, v5

    return v6

    .line 4509
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v3    # "drawDividers":Z
    .end local v5    # "i":I
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "drawDividers":Z
    goto :goto_0

    .line 4512
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "count":I
    .restart local v5    # "i":I
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 4523
    .end local v0    # "child":Landroid/view/View;
    :cond_5
    const/4 v6, -0x1

    return v6
.end method

.method public pointToRowId(II)J
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 4536
    invoke-virtual {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v0

    .line 4537
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 4538
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    return-wide v2

    .line 4540
    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    return-wide v2
.end method

.method positionSelector(ILandroid/view/View;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    .line 3349
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 3348
    return-void
.end method

.method positionSelectorLikeFocus(ILandroid/view/View;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    .line 3338
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 3339
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3340
    .local v6, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    .line 3341
    .local v4, "x":F
    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    .line 3342
    .local v5, "y":F
    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 3337
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "bounds":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 3344
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    goto :goto_0
.end method

.method positionSelectorLikeTouch(ILandroid/view/View;FF)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 3327
    invoke-virtual {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->positionSelectorLikeFocus(ILandroid/view/View;)V

    .line 3329
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 3330
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 3326
    :cond_0
    return-void
.end method

.method public reclaimViews(Ljava/util/List;)V
    .locals 8
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
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v7, 0x0

    .line 9031
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 9032
    .local v1, "childCount":I
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-static {v5}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->-get0(Landroid/widget/SemHorizontalAbsListView$RecycleBin;)Landroid/widget/SemHorizontalAbsListView$RecyclerListener;

    move-result-object v3

    .line 9035
    .local v3, "listener":Landroid/widget/SemHorizontalAbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 9036
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 9037
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 9039
    .local v4, "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    iget v6, v4, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 9040
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9041
    invoke-virtual {v0, v7}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 9042
    if-eqz v3, :cond_0

    .line 9044
    invoke-interface {v3, v0}, Landroid/widget/SemHorizontalAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 9035
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9048
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    :cond_1
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 9049
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 9030
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7961
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 7962
    .local v0, "position":I
    if-gez v0, :cond_0

    .line 7963
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    .line 7965
    :cond_0
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7966
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 7967
    return v0
.end method

.method rememberSyncState()V
    .locals 0

    .prologue
    .line 11060
    invoke-virtual {p0}, Landroid/widget/AdapterView;->rememberSyncStateHorizontal()V

    .line 11059
    return-void
.end method

.method removePendingCallbacks()V
    .locals 2

    .prologue
    .line 6373
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 6374
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 6375
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6376
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6378
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6372
    return-void
.end method

.method public reportScrollStateChange(I)V
    .locals 4
    .param p1, "newState"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 6990
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_3

    .line 6992
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    if-ne v0, v2, :cond_1

    .line 6993
    :cond_0
    invoke-static {v1}, Lcom/samsung/android/os/SemPerfManager;->onScrollEvent(Z)V

    .line 6994
    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    .line 6996
    :cond_1
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    if-eq v0, v2, :cond_2

    iget-boolean v0, p0, Landroid/view/View;->mSemScrollingByScrollbar:Z

    if-eqz v0, :cond_4

    .line 7011
    :cond_2
    :goto_0
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mLastScrollState:I

    .line 7012
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-eqz v0, :cond_6

    .line 6989
    :cond_3
    :goto_1
    return-void

    .line 6997
    :cond_4
    if-eqz p1, :cond_5

    .line 6998
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLastScrollState:I

    if-nez v0, :cond_5

    .line 6999
    invoke-static {v3}, Lcom/samsung/android/os/SemPerfManager;->onScrollEvent(Z)V

    .line 7000
    iput-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    .line 7002
    :cond_5
    if-nez p1, :cond_2

    .line 7003
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLastScrollState:I

    if-eqz v0, :cond_2

    .line 7004
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_2

    .line 7005
    invoke-static {v1}, Lcom/samsung/android/os/SemPerfManager;->onScrollEvent(Z)V

    .line 7006
    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    goto :goto_0

    .line 7012
    :cond_6
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    if-eq v0, v2, :cond_3

    .line 7014
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/SemHorizontalAbsListView;I)V

    goto :goto_1
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 2236
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2237
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resetList()V

    .line 2238
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 2239
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2235
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 2612
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 2613
    iput v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2615
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    .line 2616
    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mLastPosition:I

    .line 2619
    :cond_0
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 2620
    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 2621
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 2622
    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    .line 2623
    iput v2, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 2624
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 2625
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 2626
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 2627
    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedLeft:I

    .line 2628
    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    .line 2629
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2630
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2611
    return-void
.end method

.method public resetPressItemListArray()V
    .locals 2

    .prologue
    .line 10833
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_0

    .line 10834
    return-void

    .line 10836
    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 10838
    .local v0, "checkCount":I
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 10839
    return-void

    .line 10841
    :cond_1
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 10842
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 10832
    return-void
.end method

.method resurrectSelection()Z
    .locals 19

    .prologue
    .line 8029
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 8031
    .local v2, "childCount":I
    if-gtz v2, :cond_0

    .line 8032
    const/16 v17, 0x0

    return v17

    .line 8035
    :cond_0
    const/4 v12, 0x0

    .line 8036
    .local v12, "selectedLeft":I
    const/4 v14, 0x0

    .line 8038
    .local v14, "selectedRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 8039
    .local v3, "childrenLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 8040
    .local v4, "childrenRight":I
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 8041
    .local v5, "firstPosition":I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    .line 8042
    .local v15, "toPosition":I
    const/4 v10, 0x1

    .line 8044
    .local v10, "rightSide":Z
    if-lt v15, v5, :cond_4

    add-int v17, v5, v2

    move/from16 v0, v17

    if-ge v15, v0, :cond_4

    .line 8045
    move v13, v15

    .line 8047
    .local v13, "selectedPos":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v15, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 8048
    .local v11, "selected":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 8049
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v14

    .line 8052
    if-ge v12, v3, :cond_3

    .line 8053
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v17

    add-int v12, v3, v17

    .line 8114
    .end local v11    # "selected":Landroid/view/View;
    :cond_1
    :goto_0
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    .line 8115
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8116
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 8117
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 8119
    :cond_2
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 8120
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->clearScrollingCache()V

    .line 8121
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 8123
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v10}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v13

    .line 8124
    if-lt v13, v5, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v13, v0, :cond_d

    .line 8125
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 8126
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    .line 8127
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/SemHorizontalAbsListView;->setSelectionInt(I)V

    .line 8128
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->invokeOnItemScrollListener()V

    .line 8132
    :goto_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 8134
    if-ltz v13, :cond_e

    const/16 v17, 0x1

    :goto_3
    return v17

    .line 8054
    .restart local v11    # "selected":Landroid/view/View;
    :cond_3
    if-le v14, v4, :cond_1

    .line 8055
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    sub-int v17, v4, v17

    .line 8056
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v18

    .line 8055
    sub-int v12, v17, v18

    goto :goto_0

    .line 8059
    .end local v11    # "selected":Landroid/view/View;
    .end local v13    # "selectedPos":I
    :cond_4
    if-ge v15, v5, :cond_8

    .line 8061
    move v13, v5

    .line 8062
    .restart local v13    # "selectedPos":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    if-ge v6, v2, :cond_1

    .line 8063
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 8064
    .local v16, "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 8065
    .local v8, "left":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v9

    .line 8067
    .local v9, "right":I
    if-nez v6, :cond_6

    .line 8069
    move v12, v8

    .line 8070
    move v14, v9

    .line 8072
    if-gtz v5, :cond_5

    if-ge v8, v3, :cond_6

    .line 8075
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v17

    add-int v3, v3, v17

    .line 8078
    :cond_6
    if-lt v8, v3, :cond_7

    .line 8080
    add-int v13, v5, v6

    .line 8081
    move v12, v8

    .line 8082
    move v14, v9

    .line 8083
    goto/16 :goto_0

    .line 8062
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 8087
    .end local v6    # "i":I
    .end local v8    # "left":I
    .end local v9    # "right":I
    .end local v13    # "selectedPos":I
    .end local v16    # "v":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/AdapterView;->mItemCount:I

    .line 8088
    .local v7, "itemCount":I
    const/4 v10, 0x0

    .line 8089
    add-int v17, v5, v2

    add-int/lit8 v13, v17, -0x1

    .line 8091
    .restart local v13    # "selectedPos":I
    add-int/lit8 v6, v2, -0x1

    .restart local v6    # "i":I
    :goto_5
    if-ltz v6, :cond_1

    .line 8092
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 8093
    .restart local v16    # "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 8094
    .restart local v8    # "left":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v9

    .line 8096
    .restart local v9    # "right":I
    add-int/lit8 v17, v2, -0x1

    move/from16 v0, v17

    if-ne v6, v0, :cond_a

    .line 8097
    move v12, v8

    .line 8098
    move v14, v9

    .line 8099
    add-int v17, v5, v2

    move/from16 v0, v17

    if-lt v0, v7, :cond_9

    if-le v9, v4, :cond_a

    .line 8100
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    .line 8104
    :cond_a
    if-gt v9, v4, :cond_b

    .line 8105
    add-int v13, v5, v6

    .line 8106
    move v12, v8

    .line 8107
    move v14, v9

    .line 8108
    goto/16 :goto_0

    .line 8091
    :cond_b
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 8122
    .end local v6    # "i":I
    .end local v7    # "itemCount":I
    .end local v8    # "left":I
    .end local v9    # "right":I
    .end local v16    # "v":Landroid/view/View;
    :cond_c
    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/AdapterView;->mSpecificTop:I

    goto/16 :goto_1

    .line 8130
    :cond_d
    const/4 v13, -0x1

    goto/16 :goto_2

    .line 8134
    :cond_e
    const/16 v17, 0x0

    goto/16 :goto_3
.end method

.method resurrectSelectionIfNeeded()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8009
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8010
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    .line 8011
    const/4 v0, 0x1

    return v0

    .line 8013
    :cond_0
    return v1
.end method

.method protected semGetItemCount()I
    .locals 2

    .prologue
    .line 7439
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 7440
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

.method protected semIsHorizontalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 1898
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isFastScrollEnabled()Z

    move-result v0

    return v0
.end method

.method protected semIsShowingScrollbar()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 7427
    invoke-super {p0}, Landroid/widget/AdapterView;->semIsShowingScrollbar()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollEnabled:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public semNotifyKeyPressState(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1562
    const/4 v0, 0x0

    .line 1564
    .local v0, "handledNotifyKeyPress":Z
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    if-eqz v1, :cond_0

    .line 1565
    iget-boolean v6, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-super/range {v1 .. v6}, Landroid/widget/AdapterView;->semNotifyKeyPress(Landroid/view/View;IJZ)Z

    move-result v0

    .line 1567
    .end local v0    # "handledNotifyKeyPress":Z
    :cond_0
    return v0
.end method

.method public semSetClickableInMultiSelectMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 10780
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemIsOnClickEnabled:Z

    .line 10779
    return-void
.end method

.method public semSetCustomMultiChoiceMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1690
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCustomMultiChoiceMode:Z

    .line 1689
    return-void
.end method

.method public semSetDragBlockEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 10766
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    .line 10765
    return-void
.end method

.method public semSetEnableVibrationAtLongPress(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1022
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mEnableVibrationAtLongPress:Z

    .line 1021
    return-void
.end method

.method public semSetHoverScrollEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 4917
    if-eqz p1, :cond_0

    .line 4918
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollEnable:Z

    .line 4916
    :goto_0
    return-void

    .line 4920
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollEnable:Z

    goto :goto_0
.end method

.method public semSetMultiFocusEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 10759
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    .line 10758
    return-void
.end method

.method public semSetSelection(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 7465
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 7466
    return-void

    .line 7468
    :cond_0
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v0, :cond_1

    .line 7469
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int p1, v0, v1

    .line 7471
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 7464
    return-void
.end method

.method public semSmoothScrollBy(I)V
    .locals 3
    .param p1, "distance"    # I

    .prologue
    const/4 v2, 0x0

    .line 7483
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez v1, :cond_0

    .line 7484
    new-instance v1, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    .line 7487
    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 7488
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    .line 7489
    new-instance v1, Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;

    invoke-direct {v1, p0, v2}, Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemSmoothScrollByMove:Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;

    .line 7490
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDensityScale:F

    const/high16 v2, 0x43160000    # 150.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    .line 7493
    :cond_1
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    .line 7494
    .local v0, "isEmpty":Z
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sget v2, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    if-le v1, v2, :cond_3

    .line 7495
    if-lez p1, :cond_2

    .line 7496
    :goto_0
    sget v1, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    if-le p1, v1, :cond_3

    .line 7497
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    sget v2, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 7496
    sget v1, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    sub-int/2addr p1, v1

    goto :goto_0

    .line 7500
    :cond_2
    :goto_1
    sget v1, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    neg-int v1, v1

    if-ge p1, v1, :cond_3

    .line 7501
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    sget v2, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 7500
    sget v1, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    add-int/2addr p1, v1

    goto :goto_1

    .line 7505
    :cond_3
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 7506
    if-eqz v0, :cond_4

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemSmoothScrollByMove:Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 7482
    :cond_4
    return-void
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 8476
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->acceptFilter()Z

    move-result v5

    if-nez v5, :cond_0

    .line 8477
    const/4 v5, 0x0

    return v5

    .line 8480
    :cond_0
    const/4 v2, 0x0

    .line 8481
    .local v2, "handled":Z
    const/4 v3, 0x1

    .line 8482
    .local v3, "okToSend":Z
    sparse-switch p1, :sswitch_data_0

    .line 8514
    .end local v3    # "okToSend":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 8515
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->createTextFilter(Z)V

    .line 8517
    move-object v1, p3

    .line 8518
    .local v1, "forwardEvent":Landroid/view/KeyEvent;
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 8519
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    const/4 v5, 0x0

    invoke-static {p3, v6, v7, v5}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 8522
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 8523
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 8551
    .end local v0    # "action":I
    .end local v1    # "forwardEvent":Landroid/view/KeyEvent;
    .end local v2    # "handled":Z
    :cond_2
    :goto_1
    return v2

    .line 8489
    .restart local v2    # "handled":Z
    .restart local v3    # "okToSend":Z
    :sswitch_0
    const/4 v3, 0x0

    .line 8490
    goto :goto_0

    .line 8492
    :sswitch_1
    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 8493
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_5

    .line 8494
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_5

    .line 8495
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    .line 8496
    .local v4, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v4, :cond_3

    .line 8497
    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 8499
    :cond_3
    const/4 v2, 0x1

    .line 8506
    .end local v4    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_4
    :goto_2
    const/4 v3, 0x0

    .line 8507
    goto :goto_0

    .line 8500
    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 8501
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v5

    .line 8500
    if-eqz v5, :cond_4

    .line 8501
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_4

    .line 8502
    const/4 v2, 0x1

    .line 8503
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 8510
    :sswitch_2
    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    .local v3, "okToSend":Z
    goto :goto_0

    .line 8525
    .end local v3    # "okToSend":Z
    .restart local v0    # "action":I
    .restart local v1    # "forwardEvent":Landroid/view/KeyEvent;
    :pswitch_0
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 8526
    .local v2, "handled":Z
    const/16 v5, 0x3b

    if-eq p1, v5, :cond_6

    const/16 v5, 0x3c

    if-ne p1, v5, :cond_7

    .line 8527
    :cond_6
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    goto :goto_1

    .line 8528
    :cond_7
    const/16 v5, 0x71

    if-eq p1, v5, :cond_8

    const/16 v5, 0x72

    if-ne p1, v5, :cond_2

    .line 8529
    :cond_8
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_1

    .line 8534
    .local v2, "handled":Z
    :pswitch_1
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/TextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 8535
    .local v2, "handled":Z
    const/16 v5, 0x3b

    if-eq p1, v5, :cond_9

    const/16 v5, 0x3c

    if-ne p1, v5, :cond_a

    .line 8536
    :cond_9
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    .line 8537
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    .line 8538
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    .line 8539
    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    .line 8540
    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSecondPressedPoint:I

    goto/16 :goto_1

    .line 8541
    :cond_a
    const/16 v5, 0x71

    if-eq p1, v5, :cond_b

    const/16 v5, 0x72

    if-ne p1, v5, :cond_2

    .line 8542
    :cond_b
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    goto/16 :goto_1

    .line 8547
    .local v2, "handled":Z
    :pswitch_2
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/TextView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    .local v2, "handled":Z
    goto/16 :goto_1

    .line 8482
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

    .line 8523
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setChoiceMode(I)V
    .locals 5
    .param p1, "choiceMode"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1619
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    .line 1620
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1621
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1622
    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1624
    :cond_0
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_3

    .line 1625
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 1626
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1628
    :cond_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1629
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v2}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1632
    :cond_2
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v0, v4, :cond_3

    .line 1633
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->clearChoices()V

    .line 1634
    invoke-virtual {p0, v3}, Landroid/view/View;->setLongClickable(Z)V

    .line 1638
    :cond_3
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 1639
    iput-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    .line 1618
    :cond_4
    :goto_0
    return-void

    .line 1640
    :cond_5
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v0, v4, :cond_6

    .line 1641
    iput-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    goto :goto_0

    .line 1642
    :cond_6
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v0, v3, :cond_4

    .line 1643
    :cond_7
    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    goto :goto_0
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .param p1, "onTop"    # Z

    .prologue
    .line 3640
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mDrawSelectorOnTop:Z

    .line 3639
    return-void
.end method

.method public setEnableHoverDrawable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1068
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoveringEnabled:Z

    .line 1067
    return-void
.end method

.method public setEnablePaddingInHoverScroll(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 4928
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    .line 4927
    return-void
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 1788
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollAlwaysVisible:Z

    if-eq v0, p1, :cond_1

    .line 1789
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollEnabled:Z

    if-eqz v0, :cond_2

    .line 1793
    :cond_0
    :goto_0
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollAlwaysVisible:Z

    .line 1795
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1796
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    .line 1787
    :cond_1
    :goto_1
    return-void

    .line 1790
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollEnabled(Z)V

    goto :goto_0

    .line 1798
    :cond_3
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$3;

    invoke-direct {v0, p0, p1}, Landroid/widget/SemHorizontalAbsListView$3;-><init>(Landroid/widget/SemHorizontalAbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1728
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1729
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollEnabled:Z

    .line 1731
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1732
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollerEnabledUiThread(Z)V

    .line 1727
    :cond_0
    :goto_0
    return-void

    .line 1734
    :cond_1
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$2;

    invoke-direct {v0, p0, p1}, Landroid/widget/SemHorizontalAbsListView$2;-><init>(Landroid/widget/SemHorizontalAbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFastScrollStyle(I)V
    .locals 1
    .param p1, "styleResId"    # I

    .prologue
    .line 1766
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-nez v0, :cond_0

    .line 1767
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollStyle:I

    .line 1765
    :goto_0
    return-void

    .line 1769
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setStyle(I)V

    goto :goto_0
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .param p1, "filterText"    # Ljava/lang/String;

    .prologue
    .line 2544
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2542
    :cond_0
    :goto_0
    return-void

    .line 2545
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->createTextFilter(Z)V

    .line 2548
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2549
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 2550
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_0

    .line 2552
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_2

    .line 2553
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 2554
    .local v0, "f":Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 2558
    .end local v0    # "f":Landroid/widget/Filter;
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    .line 2559
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AdapterView$AdapterDataSetObserver;->clearSavedState()V

    goto :goto_0
.end method

.method public setForcedClick(Z)V
    .locals 0
    .param p1, "force"    # Z

    .prologue
    .line 4145
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mForcedClick:Z

    .line 4144
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 2954
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->setFrame(IIII)Z

    move-result v0

    .line 2956
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 2960
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 2961
    .local v1, "visible":Z
    :goto_0
    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2962
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->positionPopup()V

    .line 2966
    .end local v1    # "visible":Z
    :cond_0
    return v0

    .line 2960
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "visible":Z
    goto :goto_0
.end method

.method public setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    .line 7300
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 7301
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    .line 7303
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->-get0(Landroid/widget/SemHorizontalAbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 7299
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .prologue
    const/4 v6, 0x3

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 1414
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-nez v1, :cond_0

    .line 1415
    return-void

    .line 1419
    :cond_0
    if-eqz p2, :cond_1

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v1, v6, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_1

    .line 1420
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_7

    .line 1421
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1426
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1429
    :cond_1
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v1, v6, :cond_a

    .line 1430
    :cond_2
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1431
    .local v0, "oldValue":Z
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1432
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1433
    if-eqz p2, :cond_8

    .line 1434
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1439
    :cond_3
    :goto_0
    if-eq v0, p2, :cond_4

    .line 1440
    if-eqz p2, :cond_9

    .line 1441
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    .line 1446
    :cond_4
    :goto_1
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_5

    .line 1447
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1448
    .local v4, "id":J
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1475
    .end local v0    # "oldValue":Z
    .end local v4    # "id":J
    :cond_5
    :goto_2
    iget-boolean v1, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-eqz v1, :cond_11

    .line 1413
    :cond_6
    :goto_3
    return-void

    .line 1422
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "SemHorizontalAbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1436
    .restart local v0    # "oldValue":Z
    :cond_8
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_0

    .line 1443
    :cond_9
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    goto :goto_1

    .line 1452
    .end local v0    # "oldValue":Z
    :cond_a
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v7

    .line 1455
    :goto_4
    if-nez p2, :cond_b

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1456
    :cond_b
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1457
    if-eqz v7, :cond_c

    .line 1458
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 1463
    :cond_c
    if-eqz p2, :cond_f

    .line 1464
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1465
    if-eqz v7, :cond_d

    .line 1466
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1468
    :cond_d
    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1452
    :cond_e
    const/4 v7, 0x0

    .local v7, "updateIds":Z
    goto :goto_4

    .line 1469
    .end local v7    # "updateIds":Z
    :cond_f
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1470
    :cond_10
    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1476
    :cond_11
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mForcedClick:Z

    if-nez v1, :cond_12

    .line 1477
    iput-boolean v8, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1478
    :cond_12
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->rememberSyncState()V

    .line 1479
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_3
.end method

.method public setMultiChoiceModeListener(Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;

    .prologue
    .line 1658
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 1659
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    .line 1661
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;)V

    .line 1657
    return-void
.end method

.method public setMultiFocusListItem(II)V
    .locals 1
    .param p1, "startitem"    # I
    .param p2, "enditem"    # I

    .prologue
    .line 10850
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 10851
    return-void

    .line 10853
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resetPressItemListArray()V

    .line 10854
    invoke-direct {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->addToPressItemListArray(II)V

    .line 10848
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/SemHorizontalAbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    .prologue
    .line 1949
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    .line 1950
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invokeOnItemScrollListener()V

    .line 1948
    return-void
.end method

.method public setOverScrollEffectPadding(II)V
    .locals 0
    .param p1, "topPadding"    # I
    .param p2, "bottomPadding"    # I

    .prologue
    .line 6741
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mGlowPaddingTop:I

    .line 6742
    iput p2, p0, Landroid/widget/SemHorizontalAbsListView;->mGlowPaddingBottom:I

    .line 6740
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 1286
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 1287
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_0

    .line 1288
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1289
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 1290
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    .line 1296
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setOverScrollMode(I)V

    .line 1285
    return-void

    .line 1293
    :cond_1
    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 1294
    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method public setRecyclerListener(Landroid/widget/SemHorizontalAbsListView$RecyclerListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/SemHorizontalAbsListView$RecyclerListener;

    .prologue
    .line 9161
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-static {v0, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->-set0(Landroid/widget/SemHorizontalAbsListView$RecycleBin;Landroid/widget/SemHorizontalAbsListView$RecyclerListener;)Landroid/widget/SemHorizontalAbsListView$RecyclerListener;

    .line 9160
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 9067
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v2, :cond_0

    .line 9068
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 9069
    .local v0, "fcNew":Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    .line 9070
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    .line 9069
    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 9071
    .local v1, "fcOld":Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9072
    return-void

    .line 9075
    .end local v0    # "fcNew":Landroid/content/Intent$FilterComparison;
    .end local v1    # "fcOld":Landroid/content/Intent$FilterComparison;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 9077
    new-instance v2, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;)V

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 9078
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9079
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 9064
    :cond_1
    return-void
.end method

.method public setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 9093
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 9094
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 9090
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 1886
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setScrollBarStyle(I)V

    .line 1887
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_0

    .line 1888
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setScrollBarStyle(I)V

    .line 1885
    :cond_0
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "left"    # Landroid/view/View;
    .param p2, "right"    # Landroid/view/View;

    .prologue
    .line 3736
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollLeft:Landroid/view/View;

    .line 3737
    iput-object p2, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollRight:Landroid/view/View;

    .line 3735
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 2147
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 2150
    :cond_0
    :goto_0
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollingCacheEnabled:Z

    .line 2146
    return-void

    .line 2148
    :cond_1
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->clearScrollingCache()V

    goto :goto_0
.end method

.method public setSelectionFromStart(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "x"    # I

    .prologue
    .line 9959
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 9960
    return-void

    .line 9963
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 9964
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 9965
    if-ltz p1, :cond_1

    .line 9966
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 9972
    :cond_1
    :goto_0
    if-ltz p1, :cond_4

    .line 9973
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 9974
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    iput v0, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 9977
    :goto_1
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v0, :cond_2

    .line 9978
    iput p1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 9979
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 9982
    :cond_2
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v0, :cond_3

    .line 9983
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 9985
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 9958
    :cond_4
    return-void

    .line 9969
    :cond_5
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    goto :goto_0

    .line 9975
    :cond_6
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    goto :goto_1
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 3651
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 3650
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 3660
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 3661
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3662
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3664
    :cond_0
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3665
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3666
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3667
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionLeftPadding:I

    .line 3668
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionTopPadding:I

    .line 3669
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionRightPadding:I

    .line 3670
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionBottomPadding:I

    .line 3671
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3672
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    .line 3659
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1920
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    .line 1919
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .param p1, "stackFromBottom"    # Z

    .prologue
    .line 2229
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 2230
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mStackFromBottom:Z

    .line 2231
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->requestLayoutIfNecessary()V

    .line 2228
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .param p1, "textFilterEnabled"    # Z

    .prologue
    .line 2164
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    .line 2163
    return-void
.end method

.method public setTiltMotionEvent(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1041
    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 1057
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    .line 1056
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 8983
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mTranscriptMode:I

    .line 8982
    return-void
.end method

.method public setVelocityScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 7313
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityScale:F

    .line 7312
    return-void
.end method

.method setVisibleRangeHint(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 9144
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 9145
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    .line 9143
    :cond_0
    return-void
.end method

.method shouldShowSelector()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3589
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "finger_air_view"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_3

    const/4 v0, 0x1

    .line 3590
    .local v0, "isFingerAirView":Z
    :goto_0
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "finger_air_view_information_preview"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_4

    const/4 v1, 0x1

    .line 3595
    .local v1, "isFingerAirViewPreview":Z
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->touchModeDrawsInPressedState()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isHovered()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isFingerHovered()Z

    move-result v2

    :cond_2
    :goto_2
    return v2

    .line 3589
    .end local v0    # "isFingerAirView":Z
    .end local v1    # "isFingerAirViewPreview":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "isFingerAirView":Z
    goto :goto_0

    .line 3590
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "isFingerAirViewPreview":Z
    goto :goto_1

    :cond_5
    move v2, v3

    .line 3595
    goto :goto_2
.end method

.method shouldShowSelectorDefault()Z
    .locals 1

    .prologue
    .line 3601
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showContextMenu(FFI)Z
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "metaState"    # I

    .prologue
    const/4 v6, 0x0

    .line 4304
    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {p0, v4, v5}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v1

    .line 4305
    .local v1, "position":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 4306
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 4307
    .local v2, "id":J
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v4, v1, v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4308
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 4309
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/SemHorizontalAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 4310
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    return v4

    .line 4313
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "id":J
    :cond_0
    iput-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 4315
    :cond_1
    invoke-super {p0}, Landroid/widget/AdapterView;->showContextMenu()Z

    move-result v4

    return v4
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 4324
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 4325
    .local v3, "longPressPosition":I
    if-ltz v3, :cond_2

    .line 4326
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 4327
    .local v4, "longPressId":J
    const/4 v6, 0x0

    .line 4329
    .local v6, "handled":Z
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 4330
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 4333
    .end local v6    # "handled":Z
    :cond_0
    if-nez v6, :cond_1

    .line 4335
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4334
    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/SemHorizontalAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 4337
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 4340
    :cond_1
    return v6

    .line 4342
    .end local v4    # "longPressId":J
    :cond_2
    return v0
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1, "distance"    # I
    .param p2, "duration"    # I

    .prologue
    .line 7396
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(IIZ)V

    .line 7395
    return-void
.end method

.method smoothScrollBy(IIZ)V
    .locals 10
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    .prologue
    const/4 v9, 0x0

    .line 7511
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez v7, :cond_0

    .line 7512
    new-instance v7, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {v7, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    .line 7516
    :cond_0
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 7517
    .local v1, "firstPos":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7518
    .local v0, "childCount":I
    add-int v2, v1, v0

    .line 7519
    .local v2, "lastPos":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 7520
    .local v3, "leftLimit":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int v5, v7, v8

    .line 7524
    .local v5, "rightLimit":I
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v7, :cond_3

    .line 7525
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 7526
    .local v4, "leftView":Landroid/view/View;
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 7532
    .local v6, "rightView":Landroid/view/View;
    :goto_0
    if-eqz p1, :cond_1

    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-nez v7, :cond_4

    .line 7537
    :cond_1
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v7}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    .line 7538
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v7, :cond_2

    .line 7539
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v7}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 7510
    :cond_2
    :goto_1
    return-void

    .line 7528
    .end local v4    # "leftView":Landroid/view/View;
    .end local v6    # "rightView":Landroid/view/View;
    :cond_3
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 7529
    .restart local v4    # "leftView":Landroid/view/View;
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "rightView":Landroid/view/View;
    goto :goto_0

    .line 7532
    :cond_4
    if-eqz v0, :cond_1

    .line 7533
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-nez v7, :cond_5

    if-nez v1, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    if-ne v7, v3, :cond_5

    if-ltz p1, :cond_1

    .line 7534
    :cond_5
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-nez v7, :cond_6

    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ne v2, v7, :cond_6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    if-ne v7, v5, :cond_6

    if-gtz p1, :cond_1

    .line 7535
    :cond_6
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v7, :cond_7

    if-nez v1, :cond_7

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    if-ne v7, v5, :cond_7

    if-gtz p1, :cond_1

    .line 7536
    :cond_7
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v7, :cond_8

    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ne v2, v7, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    if-ne v7, v3, :cond_8

    if-ltz p1, :cond_1

    .line 7542
    :cond_8
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 7543
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v7, p1, p2, p3}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->startScroll(IIZ)V

    goto :goto_1
.end method

.method smoothScrollByOffset(I)V
    .locals 11
    .param p1, "position"    # I

    .prologue
    const/high16 v10, 0x3f400000    # 0.75f

    const/4 v9, 0x0

    .line 7551
    const/4 v2, -0x1

    .line 7552
    .local v2, "index":I
    if-gez p1, :cond_3

    .line 7553
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    .line 7558
    :cond_0
    :goto_0
    const/4 v7, -0x1

    if-le v2, v7, :cond_2

    .line 7559
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7560
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 7561
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 7562
    .local v4, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 7564
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int v1, v7, v8

    .line 7565
    .local v1, "childRectArea":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int v5, v7, v8

    .line 7566
    .local v5, "visibleRectArea":I
    int-to-float v7, v5

    int-to-float v8, v1

    div-float v3, v7, v8

    .line 7567
    .local v3, "visibleArea":F
    const/high16 v6, 0x3f400000    # 0.75f

    .line 7568
    .local v6, "visibleThreshold":F
    if-gez p1, :cond_4

    cmpg-float v7, v3, v10

    if-gez v7, :cond_4

    .line 7571
    add-int/lit8 v2, v2, 0x1

    .line 7578
    .end local v1    # "childRectArea":I
    .end local v3    # "visibleArea":F
    .end local v5    # "visibleRectArea":I
    .end local v6    # "visibleThreshold":F
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v7

    add-int v8, v2, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollToPosition(I)V

    .line 7550
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "visibleRect":Landroid/graphics/Rect;
    :cond_2
    return-void

    .line 7554
    :cond_3
    if-lez p1, :cond_0

    .line 7555
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v2

    goto :goto_0

    .line 7572
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childRectArea":I
    .restart local v3    # "visibleArea":F
    .restart local v4    # "visibleRect":Landroid/graphics/Rect;
    .restart local v5    # "visibleRectArea":I
    .restart local v6    # "visibleThreshold":F
    :cond_4
    if-lez p1, :cond_1

    cmpg-float v7, v3, v10

    if-gez v7, :cond_1

    .line 7575
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public smoothScrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 7330
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 7331
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    .line 7333
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->start(I)V

    .line 7329
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .prologue
    .line 7384
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 7385
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    .line 7387
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->start(II)V

    .line 7383
    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 7367
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 7368
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    .line 7370
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->startWithOffset(II)V

    .line 7366
    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .prologue
    .line 7349
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 7350
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    .line 7352
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->startWithOffset(III)V

    .line 7348
    return-void
.end method

.method public startMultiChoiceMode()V
    .locals 2

    .prologue
    .line 1669
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    if-eqz v0, :cond_0

    .line 1670
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1668
    :cond_0
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 3572
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 3577
    const/4 v0, 0x0

    return v0

    .line 3575
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 3572
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
    .line 7656
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 7657
    .local v7, "childCount":I
    if-nez v7, :cond_0

    .line 7658
    const/16 v32, 0x1

    return v32

    .line 7661
    :cond_0
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLeft()I

    move-result v13

    .line 7662
    .local v13, "firstLeft":I
    add-int/lit8 v32, v7, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getRight()I

    move-result v21

    .line 7665
    .local v21, "lastRight":I
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getRight()I

    move-result v15

    .line 7666
    .local v15, "firstRight":I
    add-int/lit8 v32, v7, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLeft()I

    move-result v20

    .line 7668
    .local v20, "lastLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    .line 7673
    .local v23, "listPadding":Landroid/graphics/Rect;
    const/4 v10, 0x0

    .line 7674
    .local v10, "effectivePaddingLeft":I
    const/4 v11, 0x0

    .line 7675
    .local v11, "effectivePaddingRight":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v32, v0

    and-int/lit8 v32, v32, 0x22

    const/16 v33, 0x22

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1

    .line 7676
    move-object/from16 v0, v23

    iget v10, v0, Landroid/graphics/Rect;->left:I

    .line 7677
    move-object/from16 v0, v23

    iget v11, v0, Landroid/graphics/Rect;->right:I

    .line 7683
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v32

    sub-int v12, v32, v11

    .line 7685
    .local v12, "end":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    move/from16 v32, v0

    if-eqz v32, :cond_3

    .line 7686
    sub-int v28, v15, v12

    .line 7687
    .local v28, "spaceAbove":I
    sub-int v29, v10, v20

    .line 7693
    .local v29, "spaceBelow":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v33, v0

    sub-int v31, v32, v33

    .line 7694
    .local v31, "width":I
    if-gez p1, :cond_4

    .line 7695
    add-int/lit8 v32, v31, -0x1

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 7700
    :goto_1
    if-gez p2, :cond_5

    .line 7701
    add-int/lit8 v32, v31, -0x1

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 7706
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 7709
    .local v14, "firstPosition":I
    if-nez v14, :cond_7

    .line 7710
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    move/from16 v32, v0

    if-eqz v32, :cond_6

    .line 7711
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v32, v0

    add-int v32, v32, v15

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    .line 7717
    :goto_3
    add-int v32, v14, v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_9

    .line 7719
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    move/from16 v32, v0

    if-eqz v32, :cond_8

    .line 7720
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    add-int v32, v32, v20

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    .line 7729
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    move/from16 v32, v0

    if-eqz v32, :cond_c

    .line 7730
    add-int v32, v14, v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

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

    .line 7731
    .local v5, "cannotScrollRight":Z
    :goto_5
    if-nez v14, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v32

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move/from16 v0, v32

    if-gt v15, v0, :cond_b

    if-gtz p2, :cond_b

    const/4 v4, 0x1

    .line 7737
    .local v4, "cannotScrollLeft":Z
    :goto_6
    if-nez v5, :cond_2

    if-eqz v4, :cond_10

    .line 7738
    :cond_2
    if-eqz p2, :cond_f

    const/16 v32, 0x1

    :goto_7
    return v32

    .line 7689
    .end local v4    # "cannotScrollLeft":Z
    .end local v5    # "cannotScrollRight":Z
    .end local v14    # "firstPosition":I
    .end local v28    # "spaceAbove":I
    .end local v29    # "spaceBelow":I
    .end local v31    # "width":I
    :cond_3
    sub-int v28, v10, v13

    .line 7690
    .restart local v28    # "spaceAbove":I
    sub-int v29, v21, v12

    .restart local v29    # "spaceBelow":I
    goto/16 :goto_0

    .line 7697
    .restart local v31    # "width":I
    :cond_4
    add-int/lit8 v32, v31, -0x1

    move/from16 v0, v32

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto/16 :goto_1

    .line 7703
    :cond_5
    add-int/lit8 v32, v31, -0x1

    move/from16 v0, v32

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_2

    .line 7713
    .restart local v14    # "firstPosition":I
    :cond_6
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    sub-int v32, v13, v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    goto/16 :goto_3

    .line 7715
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    move/from16 v32, v0

    add-int v32, v32, p2

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    goto/16 :goto_3

    .line 7722
    :cond_8
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v32, v0

    add-int v32, v32, v21

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mLastPositionDistanceGuess:I

    goto/16 :goto_4

    .line 7724
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mLastPositionDistanceGuess:I

    move/from16 v32, v0

    add-int v32, v32, p2

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mLastPositionDistanceGuess:I

    goto/16 :goto_4

    .line 7730
    :cond_a
    const/4 v5, 0x0

    .restart local v5    # "cannotScrollRight":Z
    goto :goto_5

    .line 7731
    :cond_b
    const/4 v4, 0x0

    .restart local v4    # "cannotScrollLeft":Z
    goto :goto_6

    .line 7733
    .end local v4    # "cannotScrollLeft":Z
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

    .line 7734
    .restart local v5    # "cannotScrollRight":Z
    :goto_8
    add-int v32, v14, v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

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
    goto/16 :goto_6

    .line 7733
    .end local v4    # "cannotScrollLeft":Z
    .end local v5    # "cannotScrollRight":Z
    :cond_d
    const/4 v5, 0x0

    .restart local v5    # "cannotScrollRight":Z
    goto :goto_8

    .line 7734
    :cond_e
    const/4 v4, 0x0

    .restart local v4    # "cannotScrollLeft":Z
    goto/16 :goto_6

    .line 7738
    :cond_f
    const/16 v32, 0x0

    goto/16 :goto_7

    .line 7740
    :cond_10
    if-gez p2, :cond_1b

    const/16 v27, 0x1

    .line 7742
    .local v27, "rightSide":Z
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v19

    .line 7743
    .local v19, "inTouchMode":Z
    if-eqz v19, :cond_11

    .line 7744
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->hideSelector()V

    .line 7747
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getHeaderViewsCount()I

    move-result v17

    .line 7748
    .local v17, "headerViewsCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v32, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getFooterViewsCount()I

    move-result v33

    sub-int v16, v32, v33

    .line 7750
    .local v16, "footerViewsStart":I
    const/16 v30, 0x0

    .line 7751
    .local v30, "start":I
    const/4 v9, 0x0

    .line 7753
    .local v9, "count":I
    const/16 v24, 0x1

    .line 7755
    .local v24, "performHaptic":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    move/from16 v32, v0

    if-eqz v32, :cond_21

    .line 7756
    if-eqz v27, :cond_1e

    .line 7759
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v22, v0

    .line 7760
    .local v22, "left":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v32, v0

    and-int/lit8 v32, v32, 0x22

    const/16 v33, 0x22

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_12

    .line 7761
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    add-int v22, v22, v32

    .line 7763
    :cond_12
    add-int/lit8 v18, v7, -0x1

    .local v18, "i":I
    :goto_a
    if-ltz v18, :cond_13

    .line 7764
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 7765
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v32

    move/from16 v0, v32

    move/from16 v1, v22

    if-lt v0, v1, :cond_1c

    .line 7855
    .end local v6    # "child":Landroid/view/View;
    .end local v22    # "left":I
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    move/from16 v32, v0

    add-int v32, v32, p1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mMotionViewNewLeft:I

    .line 7857
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 7859
    if-lez v9, :cond_14

    .line 7860
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1, v9}, Landroid/view/ViewGroup;->detachViewsFromParent(II)V

    .line 7861
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->removeSkippedScrap()V

    .line 7866
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v32

    if-nez v32, :cond_15

    .line 7867
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 7870
    :cond_15
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->semOffsetChildrenLeftAndRight(I)V

    .line 7872
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    move/from16 v32, v0

    if-eqz v32, :cond_16

    if-eqz v27, :cond_27

    .line 7874
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    move/from16 v32, v0

    if-nez v32, :cond_17

    if-eqz v27, :cond_17

    .line 7875
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v32, v0

    add-int v32, v32, v9

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 7877
    :cond_17
    :goto_b
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 7878
    .local v3, "absIncrementalDeltaX":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    move/from16 v32, v0

    if-eqz v32, :cond_28

    .line 7879
    move/from16 v0, v28

    if-lt v0, v3, :cond_18

    move/from16 v0, v29

    if-ge v0, v3, :cond_19

    .line 7880
    :cond_18
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->fillGapRTL(Z)V

    .line 7889
    :cond_19
    :goto_c
    if-nez v19, :cond_2a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v32, v0

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_2a

    .line 7890
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v33, v0

    sub-int v8, v32, v33

    .line 7891
    .local v8, "childIndex":I
    if-ltz v8, :cond_1a

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v32

    move/from16 v0, v32

    if-ge v8, v0, :cond_1a

    .line 7892
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v33

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 7903
    .end local v8    # "childIndex":I
    :cond_1a
    :goto_d
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 7905
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->invokeOnItemScrollListener()V

    .line 7907
    const/16 v32, 0x0

    return v32

    .line 7740
    .end local v3    # "absIncrementalDeltaX":I
    .end local v9    # "count":I
    .end local v16    # "footerViewsStart":I
    .end local v17    # "headerViewsCount":I
    .end local v18    # "i":I
    .end local v19    # "inTouchMode":Z
    .end local v24    # "performHaptic":Z
    .end local v27    # "rightSide":Z
    .end local v30    # "start":I
    :cond_1b
    const/16 v27, 0x0

    .restart local v27    # "rightSide":Z
    goto/16 :goto_9

    .line 7769
    .restart local v6    # "child":Landroid/view/View;
    .restart local v9    # "count":I
    .restart local v16    # "footerViewsStart":I
    .restart local v17    # "headerViewsCount":I
    .restart local v18    # "i":I
    .restart local v19    # "inTouchMode":Z
    .restart local v22    # "left":I
    .restart local v24    # "performHaptic":Z
    .restart local v30    # "start":I
    :cond_1c
    move/from16 v30, v18

    .line 7770
    add-int/lit8 v9, v9, 0x1

    .line 7771
    add-int v25, v14, v18

    .line 7772
    .local v25, "position":I
    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 7773
    move/from16 v0, v25

    move/from16 v1, v17

    if-lt v0, v1, :cond_1d

    move/from16 v0, v25

    move/from16 v1, v16

    if-ge v0, v1, :cond_1d

    .line 7776
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v25

    invoke-virtual {v0, v6, v1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 7763
    :cond_1d
    add-int/lit8 v18, v18, -0x1

    goto/16 :goto_a

    .line 7783
    .end local v6    # "child":Landroid/view/View;
    .end local v18    # "i":I
    .end local v22    # "left":I
    .end local v25    # "position":I
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v32

    sub-int v26, v32, p2

    .line 7784
    .local v26, "right":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v32, v0

    and-int/lit8 v32, v32, 0x22

    const/16 v33, 0x22

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1f

    .line 7785
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v32, v0

    sub-int v26, v26, v32

    .line 7787
    :cond_1f
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_e
    move/from16 v0, v18

    if-ge v0, v7, :cond_13

    .line 7788
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 7789
    .restart local v6    # "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v32

    move/from16 v0, v32

    move/from16 v1, v26

    if-le v0, v1, :cond_13

    .line 7793
    add-int/lit8 v9, v9, 0x1

    .line 7794
    add-int v25, v14, v18

    .line 7795
    .restart local v25    # "position":I
    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 7796
    move/from16 v0, v25

    move/from16 v1, v17

    if-lt v0, v1, :cond_20

    move/from16 v0, v25

    move/from16 v1, v16

    if-ge v0, v1, :cond_20

    .line 7800
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v25

    invoke-virtual {v0, v6, v1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 7787
    :cond_20
    add-int/lit8 v18, v18, 0x1

    goto :goto_e

    .line 7807
    .end local v6    # "child":Landroid/view/View;
    .end local v18    # "i":I
    .end local v25    # "position":I
    .end local v26    # "right":I
    :cond_21
    if-eqz v27, :cond_24

    .line 7809
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v22, v0

    .line 7810
    .restart local v22    # "left":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v32, v0

    and-int/lit8 v32, v32, 0x22

    const/16 v33, 0x22

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_22

    .line 7811
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    add-int v22, v22, v32

    .line 7813
    :cond_22
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_f
    move/from16 v0, v18

    if-ge v0, v7, :cond_13

    .line 7814
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 7815
    .restart local v6    # "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v32

    move/from16 v0, v32

    move/from16 v1, v22

    if-ge v0, v1, :cond_13

    .line 7820
    add-int/lit8 v9, v9, 0x1

    .line 7821
    add-int v25, v14, v18

    .line 7822
    .restart local v25    # "position":I
    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 7823
    move/from16 v0, v25

    move/from16 v1, v17

    if-lt v0, v1, :cond_23

    move/from16 v0, v25

    move/from16 v1, v16

    if-ge v0, v1, :cond_23

    .line 7827
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v25

    invoke-virtual {v0, v6, v1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 7813
    :cond_23
    add-int/lit8 v18, v18, 0x1

    goto :goto_f

    .line 7833
    .end local v6    # "child":Landroid/view/View;
    .end local v18    # "i":I
    .end local v22    # "left":I
    .end local v25    # "position":I
    :cond_24
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v32

    sub-int v26, v32, p2

    .line 7834
    .restart local v26    # "right":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v32, v0

    and-int/lit8 v32, v32, 0x22

    const/16 v33, 0x22

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_25

    .line 7835
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v32, v0

    sub-int v26, v26, v32

    .line 7837
    :cond_25
    add-int/lit8 v18, v7, -0x1

    .restart local v18    # "i":I
    :goto_10
    if-ltz v18, :cond_13

    .line 7838
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 7839
    .restart local v6    # "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v32

    move/from16 v0, v32

    move/from16 v1, v26

    if-le v0, v1, :cond_13

    .line 7842
    move/from16 v30, v18

    .line 7843
    add-int/lit8 v9, v9, 0x1

    .line 7844
    add-int v25, v14, v18

    .line 7845
    .restart local v25    # "position":I
    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 7846
    move/from16 v0, v25

    move/from16 v1, v17

    if-lt v0, v1, :cond_26

    move/from16 v0, v25

    move/from16 v1, v16

    if-ge v0, v1, :cond_26

    .line 7849
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v25

    invoke-virtual {v0, v6, v1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 7837
    :cond_26
    add-int/lit8 v18, v18, -0x1

    goto :goto_10

    .line 7873
    .end local v6    # "child":Landroid/view/View;
    .end local v25    # "position":I
    .end local v26    # "right":I
    :cond_27
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v32, v0

    add-int v32, v32, v9

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    goto/16 :goto_b

    .line 7883
    .restart local v3    # "absIncrementalDeltaX":I
    :cond_28
    move/from16 v0, v28

    if-lt v0, v3, :cond_29

    move/from16 v0, v29

    if-ge v0, v3, :cond_19

    .line 7884
    :cond_29
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->fillGap(Z)V

    goto/16 :goto_c

    .line 7894
    :cond_2a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    move/from16 v32, v0

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_2b

    .line 7895
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v33, v0

    sub-int v8, v32, v33

    .line 7896
    .restart local v8    # "childIndex":I
    if-ltz v8, :cond_1a

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v32

    move/from16 v0, v32

    if-ge v8, v0, :cond_1a

    .line 7897
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    const/16 v33, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_d

    .line 7900
    .end local v8    # "childIndex":I
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_d
.end method

.method triggerDoubleFling(I)V
    .locals 5
    .param p1, "initialVelocity"    # I

    .prologue
    const/4 v4, 0x0

    .line 6353
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 6354
    .local v0, "adapterCount":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 6356
    .local v1, "visibleItemsCount":I
    if-lez p1, :cond_2

    .line 6357
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    if-le v2, v3, :cond_0

    .line 6358
    mul-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 6360
    :cond_0
    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollToPosition(I)V

    .line 6352
    :cond_1
    :goto_0
    return-void

    .line 6361
    :cond_2
    if-gez p1, :cond_1

    .line 6362
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v3, v1, 0x3

    if-le v2, v3, :cond_3

    .line 6363
    add-int/lit8 v2, v0, -0x1

    mul-int/lit8 v3, v1, 0x3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 6365
    :cond_3
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollToPosition(I)V

    goto :goto_0
.end method

.method triggerJumpScrollToTop()V
    .locals 1

    .prologue
    .line 6330
    sget v0, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mJumpScrollToTopState:I

    .line 6331
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->triggerDoubleFling(I)V

    .line 6329
    return-void
.end method

.method public updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "edgeeffectCustomEdge"    # Landroid/graphics/drawable/Drawable;
    .param p2, "edgeeffectCustomGlow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1073
    return-void
.end method

.method updateScrollIndicators()V
    .locals 9

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 2995
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollLeft:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 2997
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 2999
    .local v3, "count":I
    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v4, :cond_5

    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v4, v7, :cond_4

    const/4 v0, 0x1

    .line 3003
    .local v0, "canScrollLeft":Z
    :goto_0
    if-nez v0, :cond_0

    if-lez v3, :cond_0

    .line 3005
    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v4, :cond_7

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3008
    .local v2, "child":Landroid/view/View;
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-ge v4, v7, :cond_8

    const/4 v0, 0x1

    .line 3012
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    :goto_2
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollLeft:Landroid/view/View;

    if-eqz v0, :cond_9

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3015
    .end local v0    # "canScrollLeft":Z
    .end local v3    # "count":I
    :cond_1
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollRight:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 3017
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 3020
    .restart local v3    # "count":I
    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v4, :cond_b

    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v4, :cond_a

    const/4 v1, 0x1

    .line 3024
    .local v1, "canScrollRight":Z
    :goto_4
    if-nez v1, :cond_2

    if-lez v3, :cond_2

    .line 3026
    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v4, :cond_d

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3029
    .restart local v2    # "child":Landroid/view/View;
    :goto_5
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    iget v7, p0, Landroid/view/View;->mRight:I

    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    if-le v4, v7, :cond_e

    const/4 v1, 0x1

    .line 3032
    .end local v2    # "child":Landroid/view/View;
    :cond_2
    :goto_6
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollRight:Landroid/view/View;

    if-eqz v1, :cond_f

    :goto_7
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2994
    .end local v1    # "canScrollRight":Z
    .end local v3    # "count":I
    :cond_3
    return-void

    .line 2999
    .restart local v3    # "count":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "canScrollLeft":Z
    goto :goto_0

    .line 3000
    .end local v0    # "canScrollLeft":Z
    :cond_5
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v4, :cond_6

    const/4 v0, 0x1

    .restart local v0    # "canScrollLeft":Z
    goto :goto_0

    .end local v0    # "canScrollLeft":Z
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "canScrollLeft":Z
    goto :goto_0

    .line 3006
    :cond_7
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "child":Landroid/view/View;
    goto :goto_1

    .line 3008
    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    .end local v2    # "child":Landroid/view/View;
    :cond_9
    move v4, v6

    .line 3012
    goto :goto_3

    .line 3020
    .end local v0    # "canScrollLeft":Z
    :cond_a
    const/4 v1, 0x0

    .restart local v1    # "canScrollRight":Z
    goto :goto_4

    .line 3021
    .end local v1    # "canScrollRight":Z
    :cond_b
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v4, v7, :cond_c

    const/4 v1, 0x1

    .restart local v1    # "canScrollRight":Z
    goto :goto_4

    .end local v1    # "canScrollRight":Z
    :cond_c
    const/4 v1, 0x0

    .restart local v1    # "canScrollRight":Z
    goto :goto_4

    .line 3027
    :cond_d
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "child":Landroid/view/View;
    goto :goto_5

    .line 3029
    :cond_e
    const/4 v1, 0x0

    goto :goto_6

    .end local v2    # "child":Landroid/view/View;
    :cond_f
    move v5, v6

    .line 3032
    goto :goto_7
.end method

.method updateSelectorState()V
    .locals 4

    .prologue
    .line 3741
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 3742
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->shouldShowSelector()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3743
    invoke-virtual {p0}, Landroid/view/View;->isHovered()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoveredByMouse:Z

    if-eqz v2, :cond_2

    .line 3753
    :cond_0
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3740
    :cond_1
    :goto_0
    return-void

    .line 3743
    :cond_2
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lt v2, v3, :cond_0

    .line 3744
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3745
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/view/View;->findEllipsizedTextView(Landroid/view/View;)Z

    move-result v1

    .line 3746
    .local v1, "ellipsized":Z
    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    if-nez v2, :cond_3

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3750
    :cond_3
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 3747
    :cond_4
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3748
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 3756
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "ellipsized":Z
    :cond_5
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3848
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
