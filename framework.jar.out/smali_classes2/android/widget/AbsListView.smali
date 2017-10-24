.class public abstract Landroid/widget/AbsListView;
.super Landroid/widget/AdapterView;
.source "AbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListView$1;,
        Landroid/widget/AbsListView$2;,
        Landroid/widget/AbsListView$3;,
        Landroid/widget/AbsListView$4;,
        Landroid/widget/AbsListView$5;,
        Landroid/widget/AbsListView$6;,
        Landroid/widget/AbsListView$AbsPositionScroller;,
        Landroid/widget/AbsListView$AdapterDataSetObserver;,
        Landroid/widget/AbsListView$CheckForDoublePenClick;,
        Landroid/widget/AbsListView$CheckForKeyLongPress;,
        Landroid/widget/AbsListView$CheckForLongPress;,
        Landroid/widget/AbsListView$CheckForTap;,
        Landroid/widget/AbsListView$FlingRunnable;,
        Landroid/widget/AbsListView$HoverScrollHandler;,
        Landroid/widget/AbsListView$InputConnectionWrapper;,
        Landroid/widget/AbsListView$LayoutParams;,
        Landroid/widget/AbsListView$ListItemAccessibilityDelegate;,
        Landroid/widget/AbsListView$MultiChoiceModeListener;,
        Landroid/widget/AbsListView$MultiChoiceModeWrapper;,
        Landroid/widget/AbsListView$OnScrollListener;,
        Landroid/widget/AbsListView$PerformClick;,
        Landroid/widget/AbsListView$PositionScroller;,
        Landroid/widget/AbsListView$RecycleBin;,
        Landroid/widget/AbsListView$RecyclerListener;,
        Landroid/widget/AbsListView$SavedState;,
        Landroid/widget/AbsListView$SelectionBoundsAdjuster;,
        Landroid/widget/AbsListView$SemFastScrollEventListener;,
        Landroid/widget/AbsListView$SemFluidScrollerEventListener;,
        Landroid/widget/AbsListView$SemSmoothScrollByMove;,
        Landroid/widget/AbsListView$WindowRunnnable;
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

.field static final DOUBLE_FLING_DETECTING_INTERVAL:I = 0xc8

.field private static final DRAGSCROLL_WORKING_ZONE_DP:I = 0x19

.field static final FLING_DOUBLE:I = 0x66

.field static final FLING_NONE:I = 0x64

.field static final FLING_SINGLE:I = 0x65

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

.field private static final SAVED_STATE_KEY_FOR_BUNDLE:Ljava/lang/String; = "com.sec.android.touchwiz.widget.TwAbsListView.SavedState"

.field private static final TAG:Ljava/lang/String; = "AbsListView"

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
.field private GO_TO_TOP_HIDE:I

.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:F

.field private QC_ICON_HIDE_DELAY:I

.field private final SWITCH_CONTROL_FLING:I

.field private final SWITCH_CONTROL_SCROLL_MAX_DURATION:I

.field private final SWITCH_CONTROL_SCROLL_MIN_DURATION:I

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field mAdapterHasStableIds:Z

.field private mAutoscrollDuration:I

.field private mAutoscrollDurationGap:I

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

.field mChnagedAdapter:Z

.field mChoiceActionMode:Landroid/view/ActionMode;

.field mChoiceMode:I

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mCurrentKeyCode:I

.field private mDVFSLockAcquired:Z

.field mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDeferNotifyDataSetChanged:Z

.field private mDeltamoveX:I

.field private mDeltamoveY:I

.field private mDensityScale:F

.field private mDirection:I

.field mDoubleFlingEnabled:Z

.field private mDragScrollWorkingZonePx:I

.field mDrawSelectorOnTop:Z

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mEnableVibrationAtLongPress:Z

.field private mExtraPaddingInBottomHoverArea:I

.field private mExtraPaddingInTopHoverArea:I

.field private mFastScroll:Landroid/widget/FastScroller;

.field mFastScrollAlwaysVisible:Z

.field mFastScrollEnabled:Z

.field private mFastScrollStyle:I

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field private mFirstPressedPoint:I

.field mFlingMode:I

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mForceTranscriptScroll:Z

.field private mForcedClick:Z

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mGlowPaddingLeft:I

.field private mGlowPaddingRight:I

.field private mHapticOverScroll:Z

.field private mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

.field private mHasPerformedLongPress:Z

.field private mHasWindowFocusForMotion:Z

.field public mHoverAreaEnter:Z

.field private mHoverBottomAreaHeight:I

.field private mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

.field private mHoverPosition:I

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

.field private mHoveredOnEllipsizedText:Z

.field mHoveringEnabled:Z

.field mInitAbsListView:Z

.field private mIsChildViewEnabled:Z

.field private mIsCloseChildSetted:Z

.field private mIsCtrlMultiSelection:Z

.field private mIsCtrlkeyPressed:Z

.field private mIsDetaching:Z

.field private mIsDexMode:Z

.field private mIsDragBlockEnabled:Z

.field private mIsDragScrolled:Z

.field private mIsEnabledPaddingInHoverScroll:Z

.field private mIsFirstMultiSelectionMove:Z

.field private mIsFirstPenClick:Z

.field private mIsHoverOverscrolled:Z

.field private mIsHoverScrolled:Z

.field mIsHoveredByMouse:Z

.field private mIsLongPressMultiSelection:Z

.field private mIsMovedbeforeUP:Z

.field private mIsMultiFocusEnabled:Z

.field private mIsNeedPenSelectIconSet:Z

.field private mIsNeedPenSelection:Z

.field private mIsPenHovered:Z

.field private mIsPenPressed:Z

.field private mIsPenSelectPointerSetted:Z

.field private mIsQCBtnFadeInSet:Z

.field private mIsQCBtnFadeOutSet:Z

.field private mIsQCShown:Z

.field final mIsScrap:[Z

.field private mIsSemOnClickEnabled:Z

.field private mIsSendHoverScrollState:Z

.field private mIsShiftkeyPressed:Z

.field private mIsTextSelectionStarted:Z

.field private mIsfirstMoveEvent:Z

.field mJumpAtFirst:Z

.field private mJumpScrollToTopState:I

.field private mLastAccessibilityScrollEventFromIndex:I

.field private mLastAccessibilityScrollEventToIndex:I

.field mLastFlingSpeed:I

.field private mLastHandledItemCount:I

.field private mLastPosition:I

.field private mLastPositionDistanceGuess:I

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mLongPressMultiSelectionEnabled:Z

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field mMotionPosition:I

.field private mMotionRecognitionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

.field private mMultiFocusImage:Landroid/graphics/drawable/Drawable;

.field private mNeedsHoverScroll:Z

.field private mNestedYOffset:I

.field private mNewTextViewHoverState:Z

.field private mOldAdapterItemCount:I

.field private mOldHoverScrollDirection:I

.field private mOldKeyCode:I

.field private mOldTextViewHoverState:Z

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field mOverscrollMax:I

.field private final mOwnerThread:Ljava/lang/Thread;

.field private mPenDragScrollTimeInterval:J

.field private mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

.field private mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

.field private mPendingSync:Landroid/widget/AbsListView$SavedState;

.field private mPerformClick:Landroid/widget/AbsListView$PerformClick;

.field private mPointerCount:I

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

.field private mPreviousTextViewScroll:Z

.field private mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

.field private mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

.field private mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

.field private final mQCBtnFadeInRunnable:Ljava/lang/Runnable;

.field private mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private final mQCBtnFadeOutRunnable:Ljava/lang/Runnable;

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

.field final mRecycler:Landroid/widget/AbsListView$RecycleBin;

.field private mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

.field mResurrectToPosition:I

.field private final mScrollConsumed:[I

.field mScrollDown:Landroid/view/View;

.field private mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private final mScrollOffset:[I

.field private mScrollProfilingStarted:Z

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

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

.field private final mSemAutoHide:Ljava/lang/Runnable;

.field private mSemCanGoFuther:Z

.field private mSemCloseChildByBottom:Landroid/view/View;

.field private mSemCloseChildByTop:Landroid/view/View;

.field private mSemCloseChildPositionByBottom:I

.field private mSemCloseChildPositionByTop:I

.field protected mSemCurrentFocusPosition:I

.field private mSemCustomMultiChoiceMode:Z

.field private mSemDistanceFromCloseChildBottom:I

.field private mSemDistanceFromCloseChildTop:I

.field private mSemDistanceFromTrackedChildTop:I

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

.field private mSemEnableGoToTop:Z

.field private mSemFastScroll:Landroid/widget/SemFastScroller;

.field mSemFastScrollCustomEffectEnabled:Z

.field public mSemFastScrollEffectState:Z

.field private mSemFastScrollEventListener:Landroid/widget/AbsListView$SemFastScrollEventListener;

.field private mSemFollow2016A:Z

.field protected mSemForcedDrawEdgeEffect:Z

.field private final mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

.field private final mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

.field private mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

.field private mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private mSemGoToTopFadeOutStart:Z

.field private mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

.field private mSemGoToTopLastState:I

.field private mSemGoToTopRect:Landroid/graphics/Rect;

.field private mSemGoToTopState:I

.field private mSemIsGoToTopShown:Z

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

.field private mSemSizeChnage:Z

.field private mSemSmoothScrollByMove:Landroid/widget/AbsListView$SemSmoothScrollByMove;

.field private mSemTrackedChild:Landroid/view/View;

.field private mSemTrackedChildPosition:I

.field private mShowFadeOutGTP:I

.field mShowGTPAtFirstTime:Z

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field protected mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private final mTmpPoint:[F

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTouchdownX:I

.field private mTouchdownY:I

.field private mTranscriptMode:I

.field private mVelocityScale:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field mWidthMeasureSpec:I

.field mWindowFocusChanged:Z


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_FINISHING:I

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    return v0
.end method

.method static synthetic -get10(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$FlingRunnable;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    return-object v0
.end method

.method static synthetic -get11(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object v0
.end method

.method static synthetic -get12(Landroid/widget/AbsListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    return v0
.end method

.method static synthetic -get13(Landroid/widget/AbsListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    return v0
.end method

.method static synthetic -get14(Landroid/widget/AbsListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    return v0
.end method

.method static synthetic -get15(Landroid/widget/AbsListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    return v0
.end method

.method static synthetic -get16(Landroid/widget/AbsListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsSemOnClickEnabled:Z

    return v0
.end method

.method static synthetic -get17(Landroid/widget/AbsListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    return v0
.end method

.method static synthetic -get18(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mJumpScrollToTopState:I

    return v0
.end method

.method static synthetic -get19(Landroid/widget/AbsListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mLongPressMultiSelectionEnabled:Z

    return v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    return v0
.end method

.method static synthetic -get20(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    return v0
.end method

.method static synthetic -get21(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic -get22(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic -get23(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic -get24(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic -get25(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic -get26(Landroid/widget/AbsListView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get27(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mQCScrollDirection:I

    return v0
.end method

.method static synthetic -get28(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mQCScrollFrom:I

    return v0
.end method

.method static synthetic -get29(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mQCScrollNext:I

    return v0
.end method

.method static synthetic -get3(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    return v0
.end method

.method static synthetic -get30(Landroid/widget/AbsListView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get31(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mQCScrollTo:I

    return v0
.end method

.method static synthetic -get32(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mQCScrollingCount:I

    return v0
.end method

.method static synthetic -get33(Landroid/widget/AbsListView;)Landroid/view/animation/DecelerateInterpolator;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object v0
.end method

.method static synthetic -get34(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic -get35(Landroid/widget/AbsListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemCanGoFuther:Z

    return v0
.end method

.method static synthetic -get36(Landroid/widget/AbsListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemCustomMultiChoiceMode:Z

    return v0
.end method

.method static synthetic -get37(Landroid/widget/AbsListView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get38(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemSize:I

    return v0
.end method

.method static synthetic -get39(Landroid/widget/AbsListView;)Landroid/widget/SemFastScroller;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    return-object v0
.end method

.method static synthetic -get4(Landroid/widget/AbsListView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get40(Landroid/widget/AbsListView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get41(Landroid/widget/AbsListView;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic -get42(Landroid/widget/AbsListView;)[F
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    return-object v0
.end method

.method static synthetic -get43(Landroid/widget/AbsListView;)Landroid/view/VelocityTracker;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic -get5(Landroid/widget/AbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic -get6(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic -get7(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic -get8(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    return-object v0
.end method

.method static synthetic -get9(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    return v0
.end method

.method static synthetic -set0(Landroid/widget/AbsListView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    return p1
.end method

.method static synthetic -set1(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p1
.end method

.method static synthetic -set10(Landroid/widget/AbsListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSemCanGoFuther:Z

    return p1
.end method

.method static synthetic -set11(Landroid/widget/AbsListView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemSize:I

    return p1
.end method

.method static synthetic -set12(Landroid/widget/AbsListView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    return p1
.end method

.method static synthetic -set13(Landroid/widget/AbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic -set2(Landroid/widget/AbsListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic -set3(Landroid/widget/AbsListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    return p1
.end method

.method static synthetic -set4(Landroid/widget/AbsListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    return p1
.end method

.method static synthetic -set5(Landroid/widget/AbsListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsQCShown:Z

    return p1
.end method

.method static synthetic -set6(Landroid/widget/AbsListView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/AbsListView;->mJumpScrollToTopState:I

    return p1
.end method

.method static synthetic -set7(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)Landroid/widget/AbsListView$CheckForLongPress;
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic -set8(Landroid/widget/AbsListView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/AbsListView;->mQCScrollNext:I

    return p1
.end method

.method static synthetic -set9(Landroid/widget/AbsListView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/AbsListView;->mQCScrollingCount:I

    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/AbsListView;)Landroid/widget/EditText;
    .locals 1

    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/widget/AbsListView;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Landroid/widget/AbsListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/AbsListView;->playQCBtnFadeIn()V

    return-void
.end method

.method static synthetic -wrap11(Landroid/widget/AbsListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/AbsListView;->playQCBtnFadeOut()V

    return-void
.end method

.method static synthetic -wrap12(Landroid/widget/AbsListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/AbsListView;->postOnJumpScrollToFinished()V

    return-void
.end method

.method static synthetic -wrap13(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic -wrap14(Landroid/widget/AbsListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/AbsListView;->semPlayGotoToFadeIn()V

    return-void
.end method

.method static synthetic -wrap15(Landroid/widget/AbsListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/AbsListView;->semPlayGotoToFadeOut()V

    return-void
.end method

.method static synthetic -wrap16(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->semSetFastScrollEnabledUiThread(Z)V

    return-void
.end method

.method static synthetic -wrap17(Landroid/widget/AbsListView;II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsListView;->semToNotifyMultiSelectionEnded(II)V

    return-void
.end method

.method static synthetic -wrap18(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap19(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/widget/AbsListView;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p1, "alwaysShow"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    return-void
.end method

.method static synthetic -wrap21(Landroid/widget/AbsListView;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/widget/AbsListView;Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->isItemClickable(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/widget/AbsListView;IIIIIIIIZ)Z
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
    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Landroid/widget/AbsListView;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsSupportGotoTop()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Landroid/widget/AbsListView;)I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Landroid/widget/AbsListView;II)V
    .locals 0
    .param p1, "firstpoint"    # I
    .param p2, "secondpoint"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    return-void
.end method

.method static synthetic -wrap8(Landroid/widget/AbsListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    return-void
.end method

.method static synthetic -wrap9(Landroid/widget/AbsListView;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 171
    sput-boolean v1, Landroid/widget/AbsListView;->DEBUG_VELOCITY_TRACKER_TRACE:Z

    .line 1025
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/widget/AbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 6889
    sput v1, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    .line 6890
    const/4 v0, 0x1

    sput v0, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    .line 6891
    const/4 v0, 0x2

    sput v0, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_FINISHING:I

    .line 7917
    const/16 v0, 0x1f4

    sput v0, Landroid/widget/AbsListView;->mSemScrollAmount:I

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 1250
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 163
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mHasWindowFocusForMotion:Z

    .line 164
    iput-object v7, p0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    .line 167
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v4, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v1, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 244
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mDoubleFlingEnabled:Z

    .line 250
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mSemFastScrollEffectState:Z

    .line 253
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mHoveringEnabled:Z

    .line 258
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mSemForcedDrawEdgeEffect:Z

    .line 262
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mEnableVibrationAtLongPress:Z

    .line 332
    const/16 v1, 0x64

    iput v1, p0, Landroid/widget/AbsListView;->mFlingMode:I

    .line 334
    iput v3, p0, Landroid/widget/AbsListView;->mLastFlingSpeed:I

    .line 405
    iput v3, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 438
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 463
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 468
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 478
    iput v6, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 483
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 489
    new-instance v1, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 494
    iput v3, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 499
    iput v3, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 504
    iput v3, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 509
    iput v3, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 514
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 519
    iput v3, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 567
    iput v6, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 598
    iput v3, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 647
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 667
    iput v6, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 669
    iput-object v7, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 695
    iput v6, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 698
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 701
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 708
    iput-object v7, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 709
    iput-object v7, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 726
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    .line 727
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsMovedbeforeUP:Z

    .line 732
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    .line 733
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mSemSizeChnage:Z

    .line 734
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mSemCanGoFuther:Z

    .line 736
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    .line 740
    iput v3, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    .line 741
    iput v3, p0, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    .line 742
    sget-boolean v1, Landroid/view/View;->TW_SCAFE_2016A:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mSemFollow2016A:Z

    .line 743
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mShowGTPAtFirstTime:Z

    .line 744
    iput v3, p0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    .line 746
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsDexMode:Z

    .line 747
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsHoverScrolled:Z

    .line 748
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    .line 797
    iput v3, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 826
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 828
    new-array v1, v2, [Z

    iput-object v1, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 830
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 831
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    .line 833
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    .line 839
    iput v3, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 849
    iput v6, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 854
    iput v3, p0, Landroid/widget/AbsListView;->mPointerCount:I

    .line 860
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mHapticOverScroll:Z

    .line 911
    iput v3, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 945
    iput v3, p0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    .line 947
    iput v3, p0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    .line 957
    iput-wide v8, p0, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    .line 959
    iput-wide v8, p0, Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:J

    .line 961
    iput-wide v8, p0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 963
    const-wide/16 v4, 0x12c

    iput-wide v4, p0, Landroid/widget/AbsListView;->mHoverScrollTimeInterval:J

    .line 965
    const-wide/16 v4, 0x1f4

    iput-wide v4, p0, Landroid/widget/AbsListView;->mPenDragScrollTimeInterval:J

    .line 967
    iput-wide v8, p0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 969
    iput v6, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 974
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 979
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    .line 985
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 987
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    .line 992
    const/high16 v1, 0x44480000    # 800.0f

    iput v1, p0, Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:F

    .line 1002
    iput v3, p0, Landroid/widget/AbsListView;->HOVERSCROLL_DELAY:I

    .line 1004
    const/16 v1, 0x1e

    iput v1, p0, Landroid/widget/AbsListView;->QC_ICON_HIDE_DELAY:I

    .line 1006
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    .line 1008
    iput v3, p0, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    .line 1010
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    .line 1012
    iput v3, p0, Landroid/widget/AbsListView;->mExtraPaddingInTopHoverArea:I

    .line 1013
    iput v3, p0, Landroid/widget/AbsListView;->mExtraPaddingInBottomHoverArea:I

    .line 1015
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mChnagedAdapter:Z

    .line 1016
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mWindowFocusChanged:Z

    .line 1017
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mInitAbsListView:Z

    .line 1018
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mJumpAtFirst:Z

    .line 1044
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mSemCustomMultiChoiceMode:Z

    .line 1049
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    .line 1050
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    .line 1051
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    .line 1052
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    .line 1053
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsfirstMoveEvent:Z

    .line 1055
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    .line 1059
    iput v6, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    .line 1060
    iput v6, p0, Landroid/widget/AbsListView;->mSecondPressedPoint:I

    .line 1061
    iput v3, p0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    .line 1062
    iput v3, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    .line 1063
    iput v3, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    .line 1066
    iput v6, p0, Landroid/widget/AbsListView;->mSemCurrentFocusPosition:I

    .line 1070
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    .line 1071
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    .line 1073
    iput v3, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemSize:I

    .line 1074
    iput v6, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 1075
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    .line 1076
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsNeedPenSelectIconSet:Z

    .line 1077
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mOldTextViewHoverState:Z

    .line 1078
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mNewTextViewHoverState:Z

    .line 1079
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mPreviousTextViewScroll:Z

    .line 1082
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    .line 1083
    iput v3, p0, Landroid/widget/AbsListView;->mSemDragStartX:I

    .line 1084
    iput v3, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    .line 1085
    iput v3, p0, Landroid/widget/AbsListView;->mSemDragEndX:I

    .line 1086
    iput v3, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    .line 1088
    iput v3, p0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    .line 1089
    iput v3, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    .line 1090
    iput v3, p0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    .line 1091
    iput v3, p0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    .line 1093
    iput-object v7, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 1094
    iput v6, p0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    .line 1095
    iput v3, p0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    .line 1097
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    .line 1098
    iput v6, p0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    .line 1099
    iput-object v7, p0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    .line 1100
    iput v6, p0, Landroid/widget/AbsListView;->mSemCloseChildPositionByTop:I

    .line 1101
    iput v3, p0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildTop:I

    .line 1102
    iput-object v7, p0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    .line 1103
    iput v6, p0, Landroid/widget/AbsListView;->mSemCloseChildPositionByBottom:I

    .line 1104
    iput v3, p0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildBottom:I

    .line 1107
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    .line 1109
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsSemOnClickEnabled:Z

    .line 1113
    const/16 v1, 0xfa0

    iput v1, p0, Landroid/widget/AbsListView;->SWITCH_CONTROL_FLING:I

    .line 1115
    const/16 v1, 0x64

    iput v1, p0, Landroid/widget/AbsListView;->SWITCH_CONTROL_SCROLL_MIN_DURATION:I

    .line 1116
    const/16 v1, 0x7f0

    iput v1, p0, Landroid/widget/AbsListView;->SWITCH_CONTROL_SCROLL_MAX_DURATION:I

    .line 1117
    const/16 v1, 0x8a

    iput v1, p0, Landroid/widget/AbsListView;->mAutoscrollDurationGap:I

    .line 1120
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    .line 1121
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mLongPressMultiSelectionEnabled:Z

    .line 1122
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsFirstMultiSelectionMove:Z

    .line 1123
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsCtrlMultiSelection:Z

    .line 1193
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 4136
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    .line 5502
    iput v3, p0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    .line 5503
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 6892
    sget v1, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    iput v1, p0, Landroid/widget/AbsListView;->mJumpScrollToTopState:I

    .line 6950
    iput v6, p0, Landroid/widget/AbsListView;->mHoverPosition:I

    .line 6952
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    .line 7915
    iput-object v7, p0, Landroid/widget/AbsListView;->mSemSmoothScrollByMove:Landroid/widget/AbsListView$SemSmoothScrollByMove;

    .line 7916
    iput-object v7, p0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    .line 10354
    iput v3, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    .line 10759
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsQCBtnFadeInSet:Z

    .line 10760
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsQCBtnFadeOutSet:Z

    .line 10764
    const/16 v1, 0x9c4

    iput v1, p0, Landroid/widget/AbsListView;->GO_TO_TOP_HIDE:I

    .line 10767
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutStart:Z

    .line 10768
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mSemIsGoToTopShown:Z

    .line 10770
    new-instance v1, Landroid/widget/AbsListView$1;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$1;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mQCBtnFadeInRunnable:Ljava/lang/Runnable;

    .line 10776
    new-instance v1, Landroid/widget/AbsListView$2;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$2;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mQCBtnFadeOutRunnable:Ljava/lang/Runnable;

    .line 10782
    new-instance v1, Landroid/widget/AbsListView$3;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$3;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    .line 10787
    new-instance v1, Landroid/widget/AbsListView$4;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$4;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

    .line 10792
    new-instance v1, Landroid/widget/AbsListView$5;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$5;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    .line 10799
    iput v6, p0, Landroid/widget/AbsListView;->mQCLocation:I

    .line 10800
    iput v3, p0, Landroid/widget/AbsListView;->mQCstate:I

    .line 10801
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsQCShown:Z

    .line 10806
    iput v2, p0, Landroid/widget/AbsListView;->mQCScrollingCount:I

    .line 11173
    new-instance v1, Landroid/widget/AbsListView$6;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$6;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    .line 1251
    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 1253
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 1255
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 1256
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1257
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->initializeScrollbarsInternal(Landroid/content/res/TypedArray;)V

    .line 1258
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1263
    iget-object v1, p0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-nez v1, :cond_0

    .line 1264
    const-string/jumbo v1, "AbsListView"

    const-string/jumbo v2, "Get MotionRecognitionManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    const-string/jumbo v1, "motion_recognition"

    .line 1265
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    iput-object v1, p0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    .line 1249
    :cond_0
    return-void

    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    move v1, v3

    .line 742
    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1271
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1270
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 1275
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1274
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 1279
    invoke-direct/range {p0 .. p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 163
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mHasWindowFocusForMotion:Z

    .line 164
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    .line 167
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v14

    const-string/jumbo v15, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v14, v15}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 244
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mDoubleFlingEnabled:Z

    .line 250
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mSemFastScrollEffectState:Z

    .line 253
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mHoveringEnabled:Z

    .line 258
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mSemForcedDrawEdgeEffect:Z

    .line 262
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mEnableVibrationAtLongPress:Z

    .line 332
    const/16 v14, 0x64

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mFlingMode:I

    .line 334
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mLastFlingSpeed:I

    .line 405
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 438
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 463
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 468
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 478
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 483
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 489
    new-instance v14, Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    .line 494
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 499
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 504
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 509
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 514
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 519
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    .line 567
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 598
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 647
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 667
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 669
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 695
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 698
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    .line 701
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    .line 708
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 709
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 726
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    .line 727
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsMovedbeforeUP:Z

    .line 732
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    .line 733
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mSemSizeChnage:Z

    .line 734
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mSemCanGoFuther:Z

    .line 736
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    .line 740
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    .line 741
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    .line 742
    sget-boolean v14, Landroid/view/View;->TW_SCAFE_2016A:Z

    if-eqz v14, :cond_2

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mSemFollow2016A:Z

    .line 743
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mShowGTPAtFirstTime:Z

    .line 744
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    .line 746
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsDexMode:Z

    .line 747
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsHoverScrolled:Z

    .line 748
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    .line 797
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 826
    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 828
    const/4 v14, 0x1

    new-array v14, v14, [Z

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mIsScrap:[Z

    .line 830
    const/4 v14, 0x2

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 831
    const/4 v14, 0x2

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    .line 833
    const/4 v14, 0x2

    new-array v14, v14, [F

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mTmpPoint:[F

    .line 839
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 849
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 854
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mPointerCount:I

    .line 860
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mHapticOverScroll:Z

    .line 911
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mDirection:I

    .line 945
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    .line 947
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    .line 957
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    .line 959
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:J

    .line 961
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 963
    const-wide/16 v14, 0x12c

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverScrollTimeInterval:J

    .line 965
    const-wide/16 v14, 0x1f4

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mPenDragScrollTimeInterval:J

    .line 967
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 969
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 974
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 979
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    .line 985
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 987
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    .line 992
    const/high16 v14, 0x44480000    # 800.0f

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:F

    .line 1002
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->HOVERSCROLL_DELAY:I

    .line 1004
    const/16 v14, 0x1e

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->QC_ICON_HIDE_DELAY:I

    .line 1006
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    .line 1008
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    .line 1010
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    .line 1012
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mExtraPaddingInTopHoverArea:I

    .line 1013
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mExtraPaddingInBottomHoverArea:I

    .line 1015
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mChnagedAdapter:Z

    .line 1016
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mWindowFocusChanged:Z

    .line 1017
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mInitAbsListView:Z

    .line 1018
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mJumpAtFirst:Z

    .line 1044
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mSemCustomMultiChoiceMode:Z

    .line 1049
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    .line 1050
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    .line 1051
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    .line 1052
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    .line 1053
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsfirstMoveEvent:Z

    .line 1055
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    .line 1059
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    .line 1060
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSecondPressedPoint:I

    .line 1061
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    .line 1062
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mOldKeyCode:I

    .line 1063
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    .line 1066
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSemCurrentFocusPosition:I

    .line 1070
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    .line 1071
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    .line 1073
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSemDragSelectedItemSize:I

    .line 1074
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 1075
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    .line 1076
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsNeedPenSelectIconSet:Z

    .line 1077
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mOldTextViewHoverState:Z

    .line 1078
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mNewTextViewHoverState:Z

    .line 1079
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mPreviousTextViewScroll:Z

    .line 1082
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    .line 1083
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSemDragStartX:I

    .line 1084
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    .line 1085
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSemDragEndX:I

    .line 1086
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    .line 1088
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    .line 1089
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    .line 1090
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    .line 1091
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    .line 1093
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 1094
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    .line 1095
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    .line 1097
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    .line 1098
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    .line 1099
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    .line 1100
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSemCloseChildPositionByTop:I

    .line 1101
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildTop:I

    .line 1102
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    .line 1103
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSemCloseChildPositionByBottom:I

    .line 1104
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildBottom:I

    .line 1107
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    .line 1109
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsSemOnClickEnabled:Z

    .line 1113
    const/16 v14, 0xfa0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->SWITCH_CONTROL_FLING:I

    .line 1115
    const/16 v14, 0x64

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->SWITCH_CONTROL_SCROLL_MIN_DURATION:I

    .line 1116
    const/16 v14, 0x7f0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->SWITCH_CONTROL_SCROLL_MAX_DURATION:I

    .line 1117
    const/16 v14, 0x8a

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mAutoscrollDurationGap:I

    .line 1120
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    .line 1121
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mLongPressMultiSelectionEnabled:Z

    .line 1122
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsFirstMultiSelectionMove:Z

    .line 1123
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsCtrlMultiSelection:Z

    .line 1193
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 4136
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mForcedClick:Z

    .line 5502
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    .line 5503
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 6892
    sget v14, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mJumpScrollToTopState:I

    .line 6950
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    .line 6952
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    .line 7915
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mSemSmoothScrollByMove:Landroid/widget/AbsListView$SemSmoothScrollByMove;

    .line 7916
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    .line 10354
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    .line 10759
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsQCBtnFadeInSet:Z

    .line 10760
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsQCBtnFadeOutSet:Z

    .line 10764
    const/16 v14, 0x9c4

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->GO_TO_TOP_HIDE:I

    .line 10767
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutStart:Z

    .line 10768
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mSemIsGoToTopShown:Z

    .line 10770
    new-instance v14, Landroid/widget/AbsListView$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/AbsListView$1;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mQCBtnFadeInRunnable:Ljava/lang/Runnable;

    .line 10776
    new-instance v14, Landroid/widget/AbsListView$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/AbsListView$2;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mQCBtnFadeOutRunnable:Ljava/lang/Runnable;

    .line 10782
    new-instance v14, Landroid/widget/AbsListView$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/AbsListView$3;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    .line 10787
    new-instance v14, Landroid/widget/AbsListView$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/AbsListView$4;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

    .line 10792
    new-instance v14, Landroid/widget/AbsListView$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/AbsListView$5;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    .line 10799
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mQCLocation:I

    .line 10800
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mQCstate:I

    .line 10801
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mIsQCShown:Z

    .line 10806
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView;->mQCScrollingCount:I

    .line 11173
    new-instance v14, Landroid/widget/AbsListView$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/AbsListView$6;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    .line 1280
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->initAbsListView()V

    .line 1282
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 1285
    sget-object v14, Lcom/android/internal/R$styleable;->AbsListView:[I

    .line 1284
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v14, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 1287
    .local v4, "a":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1288
    .local v9, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_0

    .line 1289
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1293
    :cond_0
    const/4 v14, 0x1

    const/4 v15, 0x0

    .line 1292
    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 1295
    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 1296
    .local v11, "stackFromBottom":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->setStackFromBottom(Z)V

    .line 1298
    const/4 v14, 0x3

    const/4 v15, 0x1

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    .line 1299
    .local v8, "scrollingCacheEnabled":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 1301
    const/4 v14, 0x4

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 1302
    .local v13, "useTextFilter":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 1304
    const/4 v14, 0x5

    .line 1305
    const/4 v15, 0x0

    .line 1304
    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 1306
    .local v12, "transcriptMode":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->setTranscriptMode(I)V

    .line 1308
    const/4 v14, 0x6

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 1309
    .local v5, "color":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 1311
    const/16 v14, 0x8

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 1312
    .local v6, "enableFastScroll":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 1314
    const/16 v14, 0xb

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 1315
    .local v7, "fastScrollStyle":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->setFastScrollStyle(I)V

    .line 1317
    const/16 v14, 0x9

    const/4 v15, 0x1

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 1318
    .local v10, "smoothScrollbar":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/AbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 1320
    const/4 v14, 0x7

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 1322
    const/16 v14, 0xa

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    .line 1321
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 1323
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1327
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-nez v14, :cond_1

    .line 1328
    const-string/jumbo v14, "AbsListView"

    const-string/jumbo v15, "Get MotionRecognitionManager"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    const-string/jumbo v14, "motion_recognition"

    .line 1329
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/AbsListView;->mMotionRecognitionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    .line 1278
    :cond_1
    return-void

    .line 742
    .end local v4    # "a":Landroid/content/res/TypedArray;
    .end local v5    # "color":I
    .end local v6    # "enableFastScroll":Z
    .end local v7    # "fastScrollStyle":I
    .end local v8    # "scrollingCacheEnabled":Z
    .end local v9    # "selector":Landroid/graphics/drawable/Drawable;
    .end local v10    # "smoothScrollbar":Z
    .end local v11    # "stackFromBottom":Z
    .end local v12    # "transcriptMode":I
    .end local v13    # "useTextFilter":Z
    :cond_2
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method private acceptFilter()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2769
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_1

    .line 2770
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2769
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 2770
    goto :goto_0

    :cond_1
    move v0, v1

    .line 2769
    goto :goto_0
.end method

.method private addToPressItemListArray(II)V
    .locals 4
    .param p1, "firstpoint"    # I
    .param p2, "secondpoint"    # I

    .prologue
    .line 10670
    const/4 v0, 0x0

    .line 10672
    .local v0, "checkCount":I
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    if-nez v2, :cond_0

    .line 10673
    return-void

    .line 10676
    :cond_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    .line 10677
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10678
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10713
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 10669
    return-void

    .line 10680
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10683
    :cond_3
    if-ge p1, p2, :cond_5

    .line 10684
    sub-int v2, p2, p1

    add-int/lit8 v0, v2, 0x1

    .line 10685
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 10686
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10687
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10691
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 10685
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 10689
    :cond_4
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 10693
    .end local v1    # "i":I
    :cond_5
    if-le p1, p2, :cond_7

    .line 10694
    sub-int v2, p1, p2

    add-int/lit8 v0, v2, 0x1

    .line 10695
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v0, :cond_1

    .line 10696
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 10697
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10701
    :goto_4
    add-int/lit8 p1, p1, -0x1

    .line 10695
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 10699
    :cond_6
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 10704
    .end local v1    # "i":I
    :cond_7
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 10705
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10707
    :cond_8
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private autoScrollWithDuration(I)V
    .locals 9
    .param p1, "duration"    # I

    .prologue
    .line 2389
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 2390
    .local v0, "firstPosition":I
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2391
    .local v3, "mFirst":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2392
    .local v4, "mLast":Landroid/view/View;
    const/4 v1, 0x0

    .line 2393
    .local v1, "height":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v2

    .line 2394
    .local v2, "mCount":I
    const-string/jumbo v6, "AbsListView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "autoScrollWithDuration:CASE  mFirst "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "mCount is"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 2396
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v1, v6

    .line 2398
    :cond_1
    const-string/jumbo v6, "AbsListView"

    const-string/jumbo v7, "autoScrollWithDuration:CASEE  height > 0 && getAdapter()!= null && mCount > 0 "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    sub-int v6, v2, v0

    mul-int v5, p1, v6

    .line 2400
    .local v5, "tempdur":I
    const-string/jumbo v6, "AbsListView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "autoScrollWithDuration(), duration = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    add-int/lit8 v6, v2, -0x1

    .line 2403
    mul-int v7, v0, v1

    div-int/lit8 v7, v7, 0x2

    mul-int/lit8 v7, v7, -0x1

    .line 2401
    invoke-virtual {p0, v6, v7, v5}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(III)V

    .line 2388
    return-void
.end method

.method private canScrollDown()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 3115
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    .line 3118
    .local v2, "count":I
    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v3, v2

    iget v4, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-ge v3, v4, :cond_0

    const/4 v0, 0x1

    .line 3121
    .local v0, "canScrollDown":Z
    :cond_0
    if-nez v0, :cond_1

    if-lez v2, :cond_1

    .line 3122
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3123
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/AbsListView;->mBottom:I

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_2

    const/4 v0, 0x1

    .line 3126
    .end local v0    # "canScrollDown":Z
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    :goto_0
    return v0

    .line 3123
    .restart local v0    # "canScrollDown":Z
    .restart local v1    # "child":Landroid/view/View;
    :cond_2
    const/4 v0, 0x0

    .local v0, "canScrollDown":Z
    goto :goto_0
.end method

.method private canScrollUp()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3100
    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v3, :cond_1

    const/4 v0, 0x1

    .line 3103
    .local v0, "canScrollUp":Z
    :goto_0
    if-nez v0, :cond_0

    .line 3104
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 3105
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3106
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_2

    const/4 v0, 0x1

    .line 3110
    .end local v0    # "canScrollUp":Z
    .end local v1    # "child":Landroid/view/View;
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v2

    .line 3100
    goto :goto_0

    .line 3106
    .restart local v0    # "canScrollUp":Z
    .restart local v1    # "child":Landroid/view/View;
    :cond_2
    const/4 v0, 0x0

    .local v0, "canScrollUp":Z
    goto :goto_1
.end method

.method private clearScrollingCache()V
    .locals 1

    .prologue
    .line 8084
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8085
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 8086
    new-instance v0, Landroid/widget/AbsListView$15;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$15;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 8102
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 8083
    :cond_1
    return-void
.end method

.method private contentFits()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1955
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 1956
    .local v0, "childCount":I
    if-nez v0, :cond_0

    return v1

    .line 1957
    :cond_0
    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-eq v0, v3, :cond_1

    return v2

    .line 1959
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v3, v4, :cond_3

    .line 1960
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-gt v3, v4, :cond_2

    .line 1959
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 1960
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1959
    goto :goto_0
.end method

.method private createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 8076
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    if-eqz v0, :cond_1

    .line 8075
    :cond_0
    :goto_0
    return-void

    .line 8076
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8077
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 8078
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 8079
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mCachingActive:Z

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    goto :goto_0
.end method

.method private createTextFilter(Z)V
    .locals 5
    .param p1, "animateEntrance"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 9130
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 9131
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 9132
    .local v0, "p":Landroid/widget/PopupWindow;
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 9133
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 9134
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 9135
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 9136
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 9137
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 9138
    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9139
    iput-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 9140
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 9141
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 9143
    .end local v0    # "p":Landroid/widget/PopupWindow;
    :cond_0
    if-eqz p1, :cond_1

    .line 9144
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v2, 0x10302e9

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 9129
    :goto_0
    return-void

    .line 9146
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v2, 0x10302ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private dismissPopup()V
    .locals 1

    .prologue
    .line 8758
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 8759
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 8757
    :cond_0
    return-void
.end method

.method private doScrollToBottomEnd()V
    .locals 1

    .prologue
    .line 11160
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/AbsListView;->mQCScrollDirection:I

    .line 11161
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mQCScrollFrom:I

    .line 11162
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mQCScrollTo:I

    .line 11163
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mQCScrollNext:I

    .line 11164
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/AbsListView;->mQCScrollingCount:I

    .line 11166
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-nez v0, :cond_0

    .line 11167
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 11170
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 11159
    return-void
.end method

.method private doScrollToTopEnd()V
    .locals 1

    .prologue
    .line 11146
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/AbsListView;->mQCScrollDirection:I

    .line 11147
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mQCScrollFrom:I

    .line 11148
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mQCScrollTo:I

    .line 11149
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mQCScrollNext:I

    .line 11150
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/AbsListView;->mQCScrollingCount:I

    .line 11152
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-nez v0, :cond_0

    .line 11153
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 11156
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 11145
    return-void
.end method

.method private drawGoToTop(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 10921
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 10922
    .local v1, "scrollY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 10924
    .local v0, "restoreCount":I
    const/4 v2, 0x0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10927
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10929
    iget v2, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-nez v2, :cond_0

    .line 10940
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 10941
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 10920
    return-void

    .line 10934
    :cond_1
    iget v2, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-eqz v2, :cond_0

    .line 10935
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    goto :goto_0
.end method

.method private drawQuickController(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 11084
    iget v2, p0, Landroid/widget/AbsListView;->mQCstate:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Landroid/widget/AbsListView;->mQCstate:I

    if-ne v2, v6, :cond_5

    .line 11085
    :cond_0
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 11086
    .local v1, "scrollY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 11087
    .local v0, "restoreCount":I
    int-to-float v2, v1

    invoke-virtual {p1, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 11089
    iget v2, p0, Landroid/widget/AbsListView;->mQCstate:I

    if-ne v2, v3, :cond_4

    .line 11090
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsQCBtnFadeInSet:Z

    if-eqz v2, :cond_1

    .line 11091
    iget-object v2, p0, Landroid/widget/AbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 11092
    iget-object v2, p0, Landroid/widget/AbsListView;->mQCBtnFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 11093
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsQCBtnFadeInSet:Z

    .line 11095
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 11100
    :cond_2
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 11102
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsQCShown:Z

    .line 11103
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsQCBtnFadeOutSet:Z

    .line 11083
    .end local v0    # "restoreCount":I
    .end local v1    # "scrollY":I
    :cond_3
    :goto_1
    return-void

    .line 11096
    .restart local v0    # "restoreCount":I
    .restart local v1    # "scrollY":I
    :cond_4
    iget v2, p0, Landroid/widget/AbsListView;->mQCstate:I

    if-ne v2, v6, :cond_2

    .line 11097
    iget-object v2, p0, Landroid/widget/AbsListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 11104
    .end local v0    # "restoreCount":I
    .end local v1    # "scrollY":I
    :cond_5
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsQCShown:Z

    if-eqz v2, :cond_3

    .line 11105
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 11106
    .restart local v1    # "scrollY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 11107
    .restart local v0    # "restoreCount":I
    int-to-float v2, v1

    invoke-virtual {p1, v5, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 11108
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsQCBtnFadeOutSet:Z

    if-eqz v2, :cond_6

    .line 11109
    iget-object v2, p0, Landroid/widget/AbsListView;->mQCBtnFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 11110
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsQCBtnFadeOutSet:Z

    .line 11112
    :cond_6
    iget-object v2, p0, Landroid/widget/AbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 11113
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 11114
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsQCBtnFadeInSet:Z

    goto :goto_1
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3700
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 3701
    .local v4, "tempSelectorRect":Landroid/graphics/Rect;
    const/4 v0, 0x0

    .line 3702
    .local v0, "selectedChild":Landroid/view/View;
    iget-object v5, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3703
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3704
    .local v3, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3705
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3709
    .end local v3    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    if-eqz v5, :cond_2

    .line 3711
    iget-object v5, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

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

    .line 3712
    .local v1, "selectedPosition":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3714
    .local v0, "selectedChild":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 3715
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 3716
    iget-object v5, p0, Landroid/widget/AbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3717
    iget-object v5, p0, Landroid/widget/AbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 3699
    .end local v0    # "selectedChild":Landroid/view/View;
    .end local v1    # "selectedPosition":Ljava/lang/Integer;
    .end local v2    # "selectedPosition$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private endLongPressMultiSelection(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 6133
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->semNotifyLongPressMultiSelectionEnded(II)V

    .line 6135
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsFirstMultiSelectionMove:Z

    .line 6136
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 6138
    iput v1, p0, Landroid/widget/AbsListView;->mSemDragStartX:I

    .line 6139
    iput v1, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    .line 6140
    iput v1, p0, Landroid/widget/AbsListView;->mSemDragEndX:I

    .line 6141
    iput v1, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    .line 6143
    iput v1, p0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    .line 6144
    iput v1, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    .line 6145
    iput v1, p0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    .line 6146
    iput v1, p0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    .line 6148
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6149
    iput v1, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemSize:I

    .line 6150
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 6151
    iput v1, p0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    .line 6154
    iget-object v0, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6155
    iget-object v0, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 6157
    :cond_0
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 6159
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 6160
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    .line 6132
    return-void
.end method

.method private finishGlows()V
    .locals 1

    .prologue
    .line 9372
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 9373
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 9374
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 9371
    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8
    .param p0, "source"    # Landroid/graphics/Rect;
    .param p1, "dest"    # Landroid/graphics/Rect;
    .param p2, "direction"    # I

    .prologue
    .line 8804
    sparse-switch p2, :sswitch_data_0

    .line 8837
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 8806
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 8807
    .local v4, "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 8808
    .local v5, "sY":I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 8809
    .local v0, "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 8841
    .local v1, "dY":I
    :goto_0
    sub-int v2, v0, v4

    .line 8842
    .local v2, "deltaX":I
    sub-int v3, v1, v5

    .line 8843
    .local v3, "deltaY":I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 8812
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

    .line 8813
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 8814
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 8815
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .restart local v1    # "dY":I
    goto :goto_0

    .line 8818
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 8819
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 8820
    .restart local v5    # "sY":I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 8821
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 8822
    .restart local v1    # "dY":I
    goto :goto_0

    .line 8824
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

    .line 8825
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 8826
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 8827
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .restart local v1    # "dY":I
    goto :goto_0

    .line 8831
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

    .line 8832
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 8833
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 8834
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 8835
    .restart local v1    # "dY":I
    goto :goto_0

    .line 8804
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
    const/4 v5, 0x0

    .line 3854
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_0

    .line 3856
    invoke-super {p0}, Landroid/widget/AdapterView;->getDrawableState()[I

    move-result-object v4

    return-object v4

    .line 3862
    :cond_0
    sget-object v4, Landroid/widget/AbsListView;->ENABLED_STATE_SET:[I

    aget v1, v4, v5

    .line 3868
    .local v1, "enabledState":I
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 3870
    .local v3, "state":[I
    const/4 v0, -0x1

    .line 3871
    .local v0, "enabledPos":I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 3872
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 3873
    move v0, v2

    .line 3879
    :cond_1
    if-ltz v0, :cond_2

    .line 3880
    add-int/lit8 v4, v0, 0x1

    .line 3881
    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    .line 3880
    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy([II[III)V

    .line 3884
    :cond_2
    return-object v3

    .line 3871
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private getTextFilterInput()Landroid/widget/EditText;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 9151
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-nez v1, :cond_0

    .line 9152
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 9154
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v1, 0x1090175

    .line 9153
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 9158
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 9160
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 9161
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 9163
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    return-object v1
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 10373
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 10372
    :cond_0
    :goto_0
    return-void

    .line 10375
    :pswitch_0
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/AbsListView;->mQCstate:I

    .line 10376
    invoke-virtual {p0}, Landroid/widget/AbsListView;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 10379
    :pswitch_1
    const/4 v7, 0x0

    .line 10381
    .local v7, "offset":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:J

    .line 10382
    iget-wide v10, p0, Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:J

    iget-wide v12, p0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    iput-wide v10, p0, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    .line 10384
    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    if-eqz v9, :cond_1

    iget-wide v10, p0, Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:J

    iget-wide v12, p0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    sub-long/2addr v10, v12

    iget-wide v12, p0, Landroid/widget/AbsListView;->mHoverScrollTimeInterval:J

    cmp-long v9, v10, v12

    if-ltz v9, :cond_0

    .line 10386
    :cond_1
    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    if-eqz v9, :cond_2

    iget-wide v10, p0, Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:J

    iget-wide v12, p0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    sub-long/2addr v10, v12

    iget-wide v12, p0, Landroid/widget/AbsListView;->mPenDragScrollTimeInterval:J

    cmp-long v9, v10, v12

    if-ltz v9, :cond_0

    .line 10390
    :cond_2
    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    if-eqz v9, :cond_4

    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    if-nez v9, :cond_4

    .line 10391
    iget-object v9, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v9, :cond_3

    .line 10392
    const/4 v9, 0x1

    iput v9, p0, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    .line 10393
    iget-object v9, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    const/4 v10, 0x1

    invoke-interface {v9, p0, v10}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 10396
    :cond_3
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    .line 10397
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsHoverScrolled:Z

    .line 10400
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v5

    .line 10405
    .local v5, "count":I
    iget v9, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v9, v5

    iget v10, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-ge v9, v10, :cond_d

    const/4 v1, 0x1

    .line 10407
    .local v1, "canScrollDown":Z
    :goto_1
    if-nez v1, :cond_5

    if-lez v5, :cond_5

    .line 10408
    add-int/lit8 v9, v5, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 10409
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, p0, Landroid/widget/AbsListView;->mBottom:I

    iget-object v11, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    if-gt v9, v10, :cond_e

    .line 10410
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    iget-object v11, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    if-le v9, v10, :cond_f

    const/4 v1, 0x1

    .line 10414
    .end local v1    # "canScrollDown":Z
    .end local v3    # "child":Landroid/view/View;
    :cond_5
    :goto_2
    iget v9, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v9, :cond_10

    const/4 v2, 0x1

    .line 10416
    .local v2, "canScrollUp":Z
    :goto_3
    if-nez v2, :cond_6

    .line 10417
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_6

    .line 10418
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 10419
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    iget-object v10, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    if-ge v9, v10, :cond_11

    const/4 v2, 0x1

    .line 10423
    .end local v2    # "canScrollUp":Z
    .end local v3    # "child":Landroid/view/View;
    :cond_6
    :goto_4
    iget v9, p0, Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:F

    .line 10424
    iget-object v10, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 10423
    const/4 v11, 0x1

    invoke-static {v11, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    .line 10424
    const/high16 v10, 0x3f000000    # 0.5f

    .line 10423
    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    .line 10426
    iget-wide v10, p0, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v12, 0x2

    cmp-long v9, v10, v12

    if-lez v9, :cond_12

    iget-wide v10, p0, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v12, 0x4

    cmp-long v9, v10, v12

    if-gez v9, :cond_12

    .line 10427
    iget v9, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    iget v10, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    int-to-double v10, v10

    const-wide v12, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v10, v12

    double-to-int v10, v10

    add-int/2addr v9, v10

    iput v9, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    .line 10434
    :cond_7
    :goto_5
    iget v9, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_15

    .line 10435
    iget v9, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    mul-int/lit8 v7, v9, -0x1

    .line 10436
    iget-object v9, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    if-nez v9, :cond_14

    iget-object v9, p0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    if-eqz v9, :cond_14

    .line 10437
    :goto_6
    iget-object v9, p0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    iput-object v9, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 10438
    iget v9, p0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildBottom:I

    iput v9, p0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    .line 10439
    iget v9, p0, Landroid/widget/AbsListView;->mSemCloseChildPositionByBottom:I

    iput v9, p0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    .line 10440
    iget v9, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    iput v9, p0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    .line 10441
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    .line 10454
    :cond_8
    :goto_7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 10458
    if-gez v7, :cond_9

    if-nez v2, :cond_a

    :cond_9
    if-lez v7, :cond_17

    if-eqz v1, :cond_17

    .line 10460
    :cond_a
    iget-object v9, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v9, :cond_b

    .line 10461
    new-instance v9, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v9, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v9, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 10463
    :cond_b
    iget-object v9, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    const/4 v10, 0x1

    invoke-virtual {v9, v7, v10}, Landroid/widget/AbsListView$FlingRunnable;->start(IZ)V

    .line 10464
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 10467
    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    if-eqz v9, :cond_c

    iget v9, p0, Landroid/widget/AbsListView;->mSemDragEndX:I

    if-eqz v9, :cond_c

    iget v9, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    if-eqz v9, :cond_c

    .line 10468
    iget v9, p0, Landroid/widget/AbsListView;->mSemDragEndX:I

    iget v10, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    const/4 v11, 0x0

    invoke-direct {p0, v9, v10, v11}, Landroid/widget/AbsListView;->updateLongPressMultiSelection(IIZ)V

    .line 10472
    :cond_c
    iget-object v9, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    iget v10, p0, Landroid/widget/AbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v10, v10

    const/4 v12, 0x1

    invoke-virtual {v9, v12, v10, v11}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 10405
    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 10409
    .restart local v1    # "canScrollDown":Z
    .restart local v3    # "child":Landroid/view/View;
    :cond_e
    const/4 v1, 0x1

    .local v1, "canScrollDown":Z
    goto/16 :goto_2

    .line 10410
    .local v1, "canScrollDown":Z
    :cond_f
    const/4 v1, 0x0

    .local v1, "canScrollDown":Z
    goto/16 :goto_2

    .line 10414
    .end local v1    # "canScrollDown":Z
    .end local v3    # "child":Landroid/view/View;
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 10419
    .restart local v2    # "canScrollUp":Z
    .restart local v3    # "child":Landroid/view/View;
    :cond_11
    const/4 v2, 0x0

    .local v2, "canScrollUp":Z
    goto/16 :goto_4

    .line 10428
    .end local v2    # "canScrollUp":Z
    .end local v3    # "child":Landroid/view/View;
    :cond_12
    iget-wide v10, p0, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v12, 0x4

    cmp-long v9, v10, v12

    if-ltz v9, :cond_13

    iget-wide v10, p0, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v12, 0x5

    cmp-long v9, v10, v12

    if-gez v9, :cond_13

    .line 10429
    iget v9, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    iget v10, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    int-to-double v10, v10

    const-wide v12, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v10, v12

    double-to-int v10, v10

    add-int/2addr v9, v10

    iput v9, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    goto/16 :goto_5

    .line 10430
    :cond_13
    iget-wide v10, p0, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v12, 0x5

    cmp-long v9, v10, v12

    if-ltz v9, :cond_7

    .line 10431
    iget v9, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    iget v10, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    int-to-double v10, v10

    const-wide v12, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v10, v12

    double-to-int v10, v10

    add-int/2addr v9, v10

    iput v9, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    goto/16 :goto_5

    .line 10436
    :cond_14
    iget v9, p0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    iget v10, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    if-eq v9, v10, :cond_8

    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    if-eqz v9, :cond_8

    goto/16 :goto_6

    .line 10444
    :cond_15
    iget v9, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    mul-int/lit8 v7, v9, 0x1

    .line 10445
    iget-object v9, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    if-nez v9, :cond_16

    iget-object v9, p0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    if-eqz v9, :cond_16

    .line 10446
    :goto_8
    iget-object v9, p0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    iput-object v9, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 10447
    iget v9, p0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildTop:I

    iput v9, p0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    .line 10448
    iget v9, p0, Landroid/widget/AbsListView;->mSemCloseChildPositionByTop:I

    iput v9, p0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    .line 10449
    iget v9, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    iput v9, p0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    .line 10450
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    goto/16 :goto_7

    .line 10445
    :cond_16
    iget v9, p0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    iget v10, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    if-eq v9, v10, :cond_8

    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    if-eqz v9, :cond_8

    goto :goto_8

    .line 10475
    :cond_17
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v8

    .line 10476
    .local v8, "overscrollMode":I
    if-eqz v8, :cond_1a

    .line 10477
    const/4 v9, 0x1

    if-ne v8, v9, :cond_18

    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v9

    if-eqz v9, :cond_1b

    :cond_18
    const/4 v0, 0x0

    .line 10479
    .local v0, "canOverscroll":Z
    :goto_9
    if-eqz v0, :cond_19

    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    if-eqz v9, :cond_1c

    .line 10503
    :cond_19
    :goto_a
    if-nez v0, :cond_0

    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    if-nez v9, :cond_0

    .line 10504
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    .line 10476
    .end local v0    # "canOverscroll":Z
    :cond_1a
    const/4 v0, 0x1

    goto :goto_9

    .line 10477
    :cond_1b
    const/4 v0, 0x1

    goto :goto_9

    .line 10480
    .restart local v0    # "canOverscroll":Z
    :cond_1c
    iget v9, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1f

    .line 10481
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 10482
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 10483
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-nez v9, :cond_1d

    .line 10484
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 10496
    :cond_1d
    :goto_b
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v9, :cond_1e

    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-eqz v9, :cond_20

    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-eqz v9, :cond_20

    .line 10500
    :cond_1e
    :goto_c
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    goto :goto_a

    .line 10486
    :cond_1f
    iget v9, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1d

    .line 10487
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 10488
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 10489
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 10490
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->semAutoHide(I)V

    .line 10491
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-nez v9, :cond_1d

    .line 10492
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_b

    .line 10497
    :cond_20
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    goto :goto_c

    .line 10512
    .end local v0    # "canOverscroll":Z
    .end local v5    # "count":I
    .end local v7    # "offset":I
    .end local v8    # "overscrollMode":I
    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    .line 10514
    .local v4, "childCount":I
    add-int/lit8 v9, v4, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 10519
    iget v9, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v9, v4

    iget v10, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-ge v9, v10, :cond_26

    const/4 v1, 0x1

    .line 10521
    .local v1, "canScrollDown":Z
    :goto_d
    if-nez v1, :cond_21

    if-lez v4, :cond_21

    .line 10522
    add-int/lit8 v9, v4, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 10523
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, p0, Landroid/widget/AbsListView;->mBottom:I

    iget-object v11, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    if-gt v9, v10, :cond_27

    .line 10524
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    iget-object v11, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    if-le v9, v10, :cond_28

    const/4 v1, 0x1

    .line 10528
    .end local v1    # "canScrollDown":Z
    .end local v3    # "child":Landroid/view/View;
    :cond_21
    :goto_e
    iget v9, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v9, :cond_29

    const/4 v2, 0x1

    .line 10530
    .local v2, "canScrollUp":Z
    :goto_f
    if-nez v2, :cond_22

    .line 10531
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_22

    .line 10532
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 10533
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    iget-object v10, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    if-ge v9, v10, :cond_2a

    const/4 v2, 0x1

    .line 10538
    .end local v2    # "canScrollUp":Z
    .end local v3    # "child":Landroid/view/View;
    :cond_22
    :goto_10
    iget-object v9, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 10537
    const/4 v10, 0x1

    const v11, 0x453b8000    # 3000.0f

    invoke-static {v10, v11, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    .line 10538
    const/high16 v10, 0x3f000000    # 0.5f

    .line 10537
    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    .line 10540
    iget v9, p0, Landroid/widget/AbsListView;->mQCLocation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2b

    iget v9, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    neg-int v6, v9

    .line 10542
    .local v6, "distanceToMove":I
    :goto_11
    if-gez v6, :cond_23

    if-nez v2, :cond_24

    :cond_23
    if-lez v6, :cond_2c

    if-eqz v1, :cond_2c

    .line 10545
    :cond_24
    iget-object v9, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v9, :cond_25

    .line 10546
    new-instance v9, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v9, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v9, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 10548
    :cond_25
    iget-object v9, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    const/4 v10, 0x1

    invoke-virtual {v9, v6, v10}, Landroid/widget/AbsListView$FlingRunnable;->start(IZ)V

    .line 10549
    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 10551
    iget-object v9, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    iget v10, p0, Landroid/widget/AbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v10, v10

    const/4 v12, 0x2

    invoke-virtual {v9, v12, v10, v11}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 10519
    .end local v6    # "distanceToMove":I
    :cond_26
    const/4 v1, 0x0

    goto/16 :goto_d

    .line 10523
    .restart local v1    # "canScrollDown":Z
    .restart local v3    # "child":Landroid/view/View;
    :cond_27
    const/4 v1, 0x1

    .local v1, "canScrollDown":Z
    goto :goto_e

    .line 10524
    .local v1, "canScrollDown":Z
    :cond_28
    const/4 v1, 0x0

    .local v1, "canScrollDown":Z
    goto :goto_e

    .line 10528
    .end local v1    # "canScrollDown":Z
    .end local v3    # "child":Landroid/view/View;
    :cond_29
    const/4 v2, 0x0

    goto :goto_f

    .line 10533
    .restart local v2    # "canScrollUp":Z
    .restart local v3    # "child":Landroid/view/View;
    :cond_2a
    const/4 v2, 0x0

    .local v2, "canScrollUp":Z
    goto :goto_10

    .line 10540
    .end local v2    # "canScrollUp":Z
    .end local v3    # "child":Landroid/view/View;
    :cond_2b
    iget v6, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    goto :goto_11

    .line 10554
    .restart local v6    # "distanceToMove":I
    :cond_2c
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v8

    .line 10555
    .restart local v8    # "overscrollMode":I
    if-eqz v8, :cond_2f

    .line 10556
    const/4 v9, 0x1

    if-ne v8, v9, :cond_2d

    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v9

    if-eqz v9, :cond_30

    :cond_2d
    const/4 v0, 0x0

    .line 10558
    .restart local v0    # "canOverscroll":Z
    :goto_12
    if-eqz v0, :cond_2e

    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    if-eqz v9, :cond_31

    .line 10580
    :cond_2e
    :goto_13
    if-nez v0, :cond_0

    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    if-nez v9, :cond_0

    .line 10581
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    .line 10555
    .end local v0    # "canOverscroll":Z
    :cond_2f
    const/4 v0, 0x1

    goto :goto_12

    .line 10556
    :cond_30
    const/4 v0, 0x1

    goto :goto_12

    .line 10559
    .restart local v0    # "canOverscroll":Z
    :cond_31
    iget v9, p0, Landroid/widget/AbsListView;->mQCLocation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_34

    .line 10560
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 10561
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 10562
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-nez v9, :cond_32

    .line 10563
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 10573
    :cond_32
    :goto_14
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v9, :cond_33

    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-eqz v9, :cond_35

    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-eqz v9, :cond_35

    .line 10577
    :cond_33
    :goto_15
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    goto :goto_13

    .line 10565
    :cond_34
    iget v9, p0, Landroid/widget/AbsListView;->mQCLocation:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_32

    .line 10566
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 10567
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 10568
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v9

    if-nez v9, :cond_32

    .line 10569
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v9}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_14

    .line 10574
    :cond_35
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    goto :goto_15

    .line 10587
    .end local v0    # "canOverscroll":Z
    .end local v4    # "childCount":I
    .end local v6    # "distanceToMove":I
    .end local v8    # "overscrollMode":I
    :pswitch_3
    iget v9, p0, Landroid/widget/AbsListView;->mQCLocation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_36

    .line 10588
    invoke-direct {p0}, Landroid/widget/AbsListView;->doScrollToTopEnd()V

    goto/16 :goto_0

    .line 10589
    :cond_36
    iget v9, p0, Landroid/widget/AbsListView;->mQCLocation:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_0

    .line 10590
    invoke-direct {p0}, Landroid/widget/AbsListView;->doScrollToBottomEnd()V

    goto/16 :goto_0

    .line 10373
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initAbsListView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1336
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mInitAbsListView:Z

    .line 1337
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setClickable(Z)V

    .line 1338
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setFocusableInTouchMode(Z)V

    .line 1339
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setWillNotDraw(Z)V

    .line 1340
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 1341
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    .line 1343
    iget-object v3, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 1344
    iget-object v3, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1345
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 1346
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    .line 1347
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    .line 1348
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    .line 1349
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView;->mOverflingDistance:I

    .line 1352
    .end local v0    # "configuration":Landroid/view/ViewConfiguration;
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1353
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Landroid/widget/AbsListView;->mDensityScale:F

    .line 1356
    :cond_1
    new-instance v3, Landroid/view/HapticPreDrawListener;

    invoke-direct {v3}, Landroid/view/HapticPreDrawListener;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    .line 1359
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 1360
    .local v2, "value":Landroid/util/TypedValue;
    iget-object v3, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_3

    .line 1361
    iget-object v3, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 1362
    const v4, 0x11600dd

    .line 1361
    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    .line 1363
    .local v1, "resolved":Z
    if-eqz v1, :cond_2

    .line 1365
    iget-object v3, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1364
    iput-object v3, p0, Landroid/widget/AbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    .line 1368
    :cond_2
    iget-object v3, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 1369
    const v4, 0x11600de

    .line 1368
    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    .line 1370
    if-eqz v1, :cond_3

    .line 1372
    iget-object v3, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1371
    iput-object v3, p0, Landroid/widget/AbsListView;->mSemDragBlockImage:Landroid/graphics/drawable/Drawable;

    .line 1376
    .end local v1    # "resolved":Z
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080a50

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    .line 1378
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mIsDexMode:Z

    .line 1334
    return-void
.end method

.method private initGoToTOP()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10821
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    .line 10822
    iget v0, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 10823
    :cond_0
    iput v1, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    .line 10824
    iput v1, p0, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    .line 10825
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mShowGTPAtFirstTime:Z

    .line 10826
    iput v1, p0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    .line 10827
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10828
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10829
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10818
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 7254
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 7255
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 7253
    :goto_0
    return-void

    .line 7257
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 7262
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 7263
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 7261
    :cond_0
    return-void
.end method

.method private invalidateBottomGlow()V
    .locals 6

    .prologue
    .line 5048
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    if-nez v4, :cond_0

    .line 5049
    return-void

    .line 5051
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getClipToPadding()Z

    move-result v1

    .line 5052
    .local v1, "clipToPadding":Z
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int v0, v4, v5

    .line 5053
    .local v0, "bottom":I
    :goto_0
    if-eqz v1, :cond_2

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    .line 5054
    .local v2, "left":I
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int v3, v4, v5

    .line 5055
    .local v3, "right":I
    :goto_2
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {p0, v2, v4, v3, v0}, Landroid/widget/AbsListView;->invalidate(IIII)V

    .line 5047
    return-void

    .line 5052
    .end local v0    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    .restart local v0    # "bottom":I
    goto :goto_0

    .line 5053
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "left":I
    goto :goto_1

    .line 5054
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v3

    .restart local v3    # "right":I
    goto :goto_2
.end method

.method private invalidateTopGlow()V
    .locals 6

    .prologue
    .line 5037
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v4, :cond_0

    .line 5038
    return-void

    .line 5040
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getClipToPadding()Z

    move-result v0

    .line 5041
    .local v0, "clipToPadding":Z
    if-eqz v0, :cond_1

    iget v3, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    .line 5042
    .local v3, "top":I
    :goto_0
    if-eqz v0, :cond_2

    iget v1, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    .line 5043
    .local v1, "left":I
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int v2, v4, v5

    .line 5044
    .local v2, "right":I
    :goto_2
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v1, v3, v2, v4}, Landroid/widget/AbsListView;->invalidate(IIII)V

    .line 5036
    return-void

    .line 5041
    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v3    # "top":I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "top":I
    goto :goto_0

    .line 5042
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "left":I
    goto :goto_1

    .line 5043
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    .restart local v2    # "right":I
    goto :goto_2
.end method

.method private isItemClickable(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3441
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isOwnerThread()Z
    .locals 2

    .prologue
    .line 2079
    iget-object v0, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

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
    .line 10812
    sget v0, Landroid/widget/AbsListView;->sSpenUspLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemFollow2016A:Z

    if-eqz v0, :cond_0

    .line 10813
    const/4 v0, 0x1

    return v0

    .line 10815
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 10609
    const-string/jumbo v0, "AbsListView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10608
    return-void
.end method

.method private onHoverDrawableState(Landroid/view/MotionEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v12, 0xa

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 6957
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 6958
    .local v0, "action":I
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    .line 6961
    .local v6, "toolType":I
    const/4 v9, 0x7

    if-eq v0, v9, :cond_0

    const/16 v9, 0x9

    if-ne v0, v9, :cond_3

    :cond_0
    const/4 v9, 0x2

    if-ne v6, v9, :cond_3

    .line 6962
    iput-boolean v11, p0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    .line 6968
    :cond_1
    :goto_0
    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsDexMode:Z

    if-eqz v9, :cond_4

    const/4 v9, 0x3

    if-ne v6, v9, :cond_4

    .line 6969
    iput-boolean v11, p0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    .line 6975
    :goto_1
    iget-object v9, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_2

    iget-object v9, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-boolean v9, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-eqz v9, :cond_5

    .line 6976
    :cond_2
    return-void

    .line 6963
    :cond_3
    if-ne v0, v12, :cond_1

    .line 6964
    iput-boolean v10, p0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    goto :goto_0

    .line 6972
    :cond_4
    iput-boolean v10, p0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    goto :goto_1

    .line 7005
    :cond_5
    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    if-eqz v9, :cond_e

    .line 7007
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v9

    if-nez v9, :cond_6

    .line 7008
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 7009
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 7013
    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHovered()Z

    move-result v9

    if-nez v9, :cond_8

    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsHoverScrolled:Z

    if-eqz v9, :cond_8

    .line 7014
    if-ne v6, v11, :cond_7

    .line 7015
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->setFingerHovered(Z)V

    .line 7017
    :cond_7
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->setHovered(Z)V

    .line 7018
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsHoverScrolled:Z

    .line 7020
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 7021
    .local v7, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 7022
    .local v8, "y":I
    invoke-virtual {p0, v7, v8}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v4

    .line 7023
    .local v4, "newHoverPosition":I
    iget v9, p0, Landroid/widget/AbsListView;->mHoverPosition:I

    if-eq v9, v4, :cond_c

    const/4 v1, 0x1

    .line 7024
    .local v1, "bChanged":Z
    :goto_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v5

    .line 7026
    .local v5, "shouldShowSelector":Z
    const/4 v2, 0x0

    .line 7028
    .local v2, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHovered()Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 7032
    :cond_9
    :goto_3
    if-gez v4, :cond_f

    .line 7033
    if-nez v5, :cond_a

    .line 7034
    iget-object v9, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    .line 7037
    :cond_a
    iget-boolean v9, p0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    if-eqz v9, :cond_b

    .line 7038
    iget-object v9, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v10, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 7039
    invoke-virtual {p0}, Landroid/widget/AbsListView;->postInvalidateOnAnimation()V

    .line 7040
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    .line 7042
    :cond_b
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mHoverPosition:I

    .line 7043
    return-void

    .line 7023
    .end local v1    # "bChanged":Z
    .end local v2    # "child":Landroid/view/View;
    .end local v5    # "shouldShowSelector":Z
    :cond_c
    const/4 v1, 0x0

    .restart local v1    # "bChanged":Z
    goto :goto_2

    .line 7029
    .restart local v2    # "child":Landroid/view/View;
    .restart local v5    # "shouldShowSelector":Z
    :cond_d
    iget-object v9, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v10, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setState([I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 7075
    .end local v1    # "bChanged":Z
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "newHoverPosition":I
    .end local v5    # "shouldShowSelector":Z
    .end local v7    # "x":I
    .end local v8    # "y":I
    :catch_0
    move-exception v3

    .line 7076
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 6955
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_e
    :goto_4
    return-void

    .line 7046
    .restart local v1    # "bChanged":Z
    .restart local v2    # "child":Landroid/view/View;
    .restart local v4    # "newHoverPosition":I
    .restart local v5    # "shouldShowSelector":Z
    .restart local v7    # "x":I
    .restart local v8    # "y":I
    :cond_f
    :try_start_1
    iput v4, p0, Landroid/widget/AbsListView;->mHoverPosition:I

    .line 7048
    iget v9, p0, Landroid/widget/AbsListView;->mHoverPosition:I

    iget v10, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v9, v10

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7050
    .local v2, "child":Landroid/view/View;
    iget-boolean v9, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v9, :cond_10

    iget-object v9, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v10, p0, Landroid/widget/AbsListView;->mHoverPosition:I

    invoke-interface {v9, v10}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_10

    iget-boolean v9, p0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    if-eqz v9, :cond_10

    .line 7052
    iget v9, p0, Landroid/widget/AbsListView;->mHoverPosition:I

    invoke-virtual {p0, v9, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 7053
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    .line 7057
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 7067
    :goto_5
    if-ne v0, v12, :cond_e

    .line 7069
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    .line 7070
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView;->mHoverPosition:I

    .line 7071
    iget-object v9, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v10, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 7072
    iget-object v9, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    .line 7073
    invoke-virtual {p0}, Landroid/widget/AbsListView;->postInvalidateOnAnimation()V

    goto :goto_4

    .line 7059
    :cond_10
    if-nez v5, :cond_11

    .line 7060
    iget-object v9, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    .line 7062
    :cond_11
    iget-object v9, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v10, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 7064
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 7390
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v2, v4, 0x8

    .line 7392
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 7393
    .local v1, "pointerId":I
    iget v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    if-ne v1, v4, :cond_0

    .line 7397
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 7398
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 7399
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 7400
    iput v3, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 7401
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 7407
    iget v3, p0, Landroid/widget/AbsListView;->mMotionY:I

    iput v3, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 7389
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    :cond_1
    move v0, v3

    .line 7397
    goto :goto_0
.end method

.method private onTouchCancel()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 6856
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v1, :pswitch_data_0

    .line 6869
    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6870
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 6871
    iget v1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6872
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 6873
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 6875
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 6876
    iget-object v1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6877
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 6880
    .end local v0    # "motionView":Landroid/view/View;
    :goto_0
    :pswitch_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    .line 6881
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 6882
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 6884
    :cond_1
    iput v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 6885
    iput v3, p0, Landroid/widget/AbsListView;->mPointerCount:I

    .line 6855
    return-void

    .line 6858
    :pswitch_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_2

    .line 6859
    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 6861
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto :goto_0

    .line 6856
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

    const/4 v6, 0x0

    .line 6557
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mHasPerformedLongPress:Z

    .line 6558
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 6559
    iget v4, p0, Landroid/widget/AbsListView;->mPointerCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/AbsListView;->mPointerCount:I

    .line 6561
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    .line 6563
    iget-object v4, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 6564
    iget-object v4, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v4, :cond_0

    .line 6565
    iget-object v4, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v4}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 6567
    :cond_0
    const/4 v4, 0x5

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6568
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 6569
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 6570
    iget v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    iput v4, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 6571
    iput v6, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 6572
    iput v6, p0, Landroid/widget/AbsListView;->mDirection:I

    .line 6615
    :goto_0
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v4, :cond_1

    iget v4, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 6616
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 6615
    if-eqz v4, :cond_1

    .line 6617
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6556
    :cond_1
    return-void

    .line 6574
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 6575
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 6576
    .local v3, "y":I
    invoke-virtual {p0, v2, v3}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 6578
    .local v0, "motionPosition":I
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v4, :cond_3

    .line 6579
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 6581
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 6582
    const/4 v4, 0x3

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6583
    iput v6, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 6584
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v0

    .line 6585
    iget-object v4, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/AbsListView$FlingRunnable;->flywheelTouch()V

    .line 6603
    :cond_3
    :goto_1
    if-ltz v0, :cond_4

    .line 6605
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v4, v0, v4

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6606
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 6609
    .end local v1    # "v":Landroid/view/View;
    :cond_4
    iput v2, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 6610
    iput v3, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 6611
    iput v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 6612
    const/high16 v4, -0x80000000

    iput v4, p0, Landroid/widget/AbsListView;->mLastY:I

    goto :goto_0

    .line 6586
    :cond_5
    if-ltz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6590
    iput v6, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6593
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    if-nez v4, :cond_6

    .line 6594
    new-instance v4, Landroid/widget/AbsListView$CheckForTap;

    invoke-direct {v4, p0, v7}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForTap;)V

    iput-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    .line 6597
    :cond_6
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v4, Landroid/widget/AbsListView$CheckForTap;->x:F

    .line 6598
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v4, Landroid/widget/AbsListView$CheckForTap;->y:F

    .line 6599
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {p0, v4, v6, v7}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 6622
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mHasPerformedLongPress:Z

    if-eqz v5, :cond_0

    .line 6624
    return-void

    .line 6627
    :cond_0
    iget v5, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 6628
    .local v2, "pointerIndex":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    .line 6629
    const/4 v2, 0x0

    .line 6630
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 6633
    :cond_1
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v5, :cond_2

    .line 6636
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 6639
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v4, v5

    .line 6641
    .local v4, "y":I
    iget v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v5, :pswitch_data_0

    .line 6621
    :cond_3
    :goto_0
    :pswitch_0
    return-void

    .line 6647
    :pswitch_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v5, v4, p2}, Landroid/widget/AbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 6652
    iget v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6653
    .local v0, "motionView":Landroid/view/View;
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 6654
    .local v3, "x":F
    int-to-float v5, v4

    iget v6, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    int-to-float v6, v6

    invoke-virtual {p0, v3, v5, v6}, Landroid/widget/AbsListView;->pointInView(FFF)Z

    move-result v5

    if-nez v5, :cond_6

    .line 6655
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 6656
    if-eqz v0, :cond_4

    .line 6657
    invoke-virtual {v0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 6659
    :cond_4
    iget v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v5, :cond_5

    .line 6660
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    .line 6659
    :goto_1
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6661
    const/4 v5, 0x2

    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6662
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto :goto_0

    .line 6660
    :cond_5
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    goto :goto_1

    .line 6663
    :cond_6
    if-eqz v0, :cond_3

    .line 6665
    iget-object v1, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    .line 6666
    .local v1, "point":[F
    aput v3, v1, v7

    .line 6667
    int-to-float v5, v4

    aput v5, v1, v8

    .line 6668
    invoke-virtual {p0, v1, v0}, Landroid/widget/AbsListView;->transformPointToViewLocal([FLandroid/view/View;)V

    .line 6669
    aget v5, v1, v7

    aget v6, v1, v8

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->drawableHotspotChanged(FF)V

    goto :goto_0

    .line 6674
    .end local v0    # "motionView":Landroid/view/View;
    .end local v1    # "point":[F
    .end local v3    # "x":F
    :pswitch_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v5, v4, p2}, Landroid/widget/AbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    goto :goto_0

    .line 6641
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
    .line 6680
    const-string/jumbo v17, "AbsListView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "onTouchUp() mTouchMode : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6681
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 6827
    :cond_0
    :goto_0
    :pswitch_0
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 6829
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 6830
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 6831
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 6835
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 6836
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6837
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 6839
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 6840
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mPointerCount:I

    .line 6849
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 6850
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StrictMode$Span;->finish()V

    .line 6851
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 6679
    :cond_2
    return-void

    .line 6685
    :pswitch_1
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 6686
    .local v13, "motionPosition":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v13, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 6687
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_4

    .line 6688
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 6689
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 6692
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    .line 6693
    .local v16, "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v16, v17

    if-lez v17, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v16, v17

    if-gez v17, :cond_5

    const/4 v10, 0x1

    .line 6694
    .local v10, "inList":Z
    :goto_1
    if-eqz v10, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 6753
    .end local v10    # "inList":Z
    .end local v16    # "x":F
    :cond_4
    :goto_2
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6754
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto/16 :goto_0

    .line 6693
    .restart local v16    # "x":F
    :cond_5
    const/4 v10, 0x0

    goto :goto_1

    .line 6695
    .restart local v10    # "inList":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    move-object/from16 v17, v0

    if-nez v17, :cond_7

    .line 6696
    new-instance v17, Landroid/widget/AbsListView$PerformClick;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$PerformClick;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 6699
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    .line 6700
    .local v14, "performClick":Landroid/widget/AbsListView$PerformClick;
    iput v13, v14, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    .line 6701
    invoke-virtual {v14}, Landroid/widget/AbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 6703
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 6705
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 6706
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v17, v0

    if-nez v17, :cond_d

    .line 6707
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    move-object/from16 v17, v0

    .line 6706
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6708
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 6709
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    move/from16 v17, v0

    if-nez v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 6710
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6711
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 6712
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 6713
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 6714
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 6715
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 6716
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    .line 6717
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 6718
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_9

    instance-of v0, v8, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 6719
    check-cast v8, Landroid/graphics/drawable/TransitionDrawable;

    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 6721
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 6723
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    .line 6724
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6726
    :cond_b
    new-instance v17, Landroid/widget/AbsListView$13;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v14}, Landroid/widget/AbsListView$13;-><init>(Landroid/widget/AbsListView;Landroid/view/View;Landroid/widget/AbsListView$PerformClick;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 6738
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    .line 6739
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 6738
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6747
    :cond_c
    :goto_4
    return-void

    .line 6707
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object/from16 v17, v0

    goto/16 :goto_3

    .line 6741
    :cond_e
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6742
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 6743
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mForcedClick:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 6744
    invoke-virtual {v14}, Landroid/widget/AbsListView$PerformClick;->run()V

    goto :goto_4

    .line 6748
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mForcedClick:Z

    move/from16 v17, v0

    if-nez v17, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    move/from16 v17, v0

    if-nez v17, :cond_4

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 6749
    invoke-virtual {v14}, Landroid/widget/AbsListView$PerformClick;->run()V

    goto/16 :goto_2

    .line 6757
    .end local v4    # "child":Landroid/view/View;
    .end local v10    # "inList":Z
    .end local v13    # "motionPosition":I
    .end local v14    # "performClick":Landroid/widget/AbsListView$PerformClick;
    .end local v16    # "x":F
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v5

    .line 6758
    .local v5, "childCount":I
    if-lez v5, :cond_17

    .line 6759
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v9

    .line 6760
    .local v9, "firstChildTop":I
    add-int/lit8 v17, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v12

    .line 6761
    .local v12, "lastChildBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 6762
    .local v7, "contentTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v6, v17, v18

    .line 6763
    .local v6, "contentBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v17, v0

    if-nez v17, :cond_11

    if-lt v9, v7, :cond_11

    .line 6764
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v17, v0

    add-int v17, v17, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_11

    .line 6765
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v17

    sub-int v17, v17, v6

    move/from16 v0, v17

    if-gt v12, v0, :cond_11

    .line 6766
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6767
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 6769
    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6770
    .local v15, "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x3e8

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 6773
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mVelocityScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    .line 6772
    move/from16 v0, v17

    float-to-int v11, v0

    .line 6778
    .local v11, "initialVelocity":I
    const-string/jumbo v17, "AbsListView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "onTouchUp() TOUCH_MODE_SCROLL initialVelocity : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6779
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_15

    .line 6780
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v17, v0

    if-nez v17, :cond_12

    .line 6781
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move/from16 v17, v0

    sub-int v17, v7, v17

    move/from16 v0, v17

    if-eq v9, v0, :cond_15

    .line 6782
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v17, v0

    add-int v17, v17, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    .line 6783
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move/from16 v17, v0

    add-int v17, v17, v6

    move/from16 v0, v17

    if-eq v12, v0, :cond_15

    .line 6784
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    if-nez v17, :cond_14

    .line 6785
    new-instance v17, Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 6787
    :cond_14
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 6789
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    neg-int v0, v11

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_0

    .line 6791
    :cond_15
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6792
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 6793
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_16

    .line 6794
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 6796
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 6797
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    goto/16 :goto_0

    .line 6802
    .end local v6    # "contentBottom":I
    .end local v7    # "contentTop":I
    .end local v9    # "firstChildTop":I
    .end local v11    # "initialVelocity":I
    .end local v12    # "lastChildBottom":I
    .end local v15    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_17
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6803
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 6808
    .end local v5    # "childCount":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    if-nez v17, :cond_18

    .line 6809
    new-instance v17, Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 6811
    :cond_18
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6812
    .restart local v15    # "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x3e8

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 6813
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v11, v0

    .line 6815
    .restart local v11    # "initialVelocity":I
    const-string/jumbo v17, "AbsListView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "onTouchUp() TOUCH_MODE_OVERSCROLL initialVelocity : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6817
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 6818
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_19

    .line 6819
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    neg-int v0, v11

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_0

    .line 6821
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_0

    .line 6681
    nop

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
    const/4 v6, 0x0

    .line 4275
    iget v4, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v4, :cond_0

    .line 4276
    iget v4, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v5, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4277
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 4278
    iget v1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4279
    .local v1, "longPressPosition":I
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 4280
    .local v2, "longPressId":J
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4281
    const/4 v4, -0x1

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4282
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4283
    invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 4284
    const/4 v4, 0x1

    return v4

    .line 4288
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "longPressPosition":I
    .end local v2    # "longPressId":J
    :cond_0
    return v6
.end method

.method private playQCBtnFadeIn()V
    .locals 3

    .prologue
    .line 11120
    iget-object v0, p0, Landroid/widget/AbsListView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 11121
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    const/16 v2, 0xff

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 11122
    iget-object v0, p0, Landroid/widget/AbsListView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 11119
    return-void
.end method

.method private playQCBtnFadeOut()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 11125
    iget-object v0, p0, Landroid/widget/AbsListView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 11126
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Landroid/widget/AbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 11127
    iget-object v0, p0, Landroid/widget/AbsListView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 11124
    return-void
.end method

.method private positionPopup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 8777
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 8778
    .local v1, "screenHeight":I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 8779
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getLocationOnScreen([I)V

    .line 8782
    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/AbsListView;->mDensityScale:F

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 8783
    .local v0, "bottomGap":I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 8784
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 8785
    aget v4, v2, v7

    .line 8784
    const/16 v5, 0x51

    invoke-virtual {v3, p0, v5, v4, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 8776
    :goto_0
    return-void

    .line 8787
    :cond_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v2, v7

    invoke-virtual {v3, v4, v0, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private positionSelector(ILandroid/view/View;ZFF)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "manageHotspot"    # Z
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    const/4 v9, 0x0

    .line 3470
    iget v5, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    if-eq p1, v5, :cond_8

    const/4 v2, 0x1

    .line 3471
    .local v2, "positionChanged":Z
    :goto_0
    const/4 v5, -0x1

    if-eq p1, v5, :cond_0

    .line 3472
    iput p1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 3475
    :cond_0
    iget-object v4, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3476
    .local v4, "selectorRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 3477
    instance-of v5, p2, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    if-eqz v5, :cond_1

    move-object v5, p2

    .line 3478
    check-cast v5, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    invoke-interface {v5, v4}, Landroid/widget/AbsListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 3483
    :cond_1
    instance-of v5, p0, Landroid/widget/SemExpandableListView;

    if-eqz v5, :cond_2

    instance-of v5, p2, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_2

    move-object v5, p2

    .line 3484
    check-cast v5, Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v5

    if-lez v5, :cond_2

    move-object v5, p2

    .line 3485
    check-cast v5, Landroid/widget/FrameLayout;

    invoke-virtual {v5, v9}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3486
    .local v0, "child":Landroid/view/View;
    instance-of v5, v0, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    if-eqz v5, :cond_2

    .line 3487
    check-cast v0, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v0, v4}, Landroid/widget/AbsListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    .line 3493
    :cond_2
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 3494
    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 3495
    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 3496
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    iget v7, p2, Landroid/view/View;->mTwExtraPaddingBottomForPreference:I

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 3499
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v1

    .line 3500
    .local v1, "isChildViewEnabled":Z
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eq v5, v1, :cond_3

    .line 3501
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    .line 3505
    :cond_3
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3506
    .local v3, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_7

    .line 3508
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 3514
    :cond_4
    :goto_1
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3515
    if-eqz v2, :cond_6

    .line 3516
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5

    .line 3517
    const/4 v5, 0x1

    invoke-virtual {v3, v5, v9}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 3519
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 3521
    :cond_6
    if-eqz p3, :cond_7

    .line 3522
    invoke-virtual {v3, p4, p5}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 3469
    :cond_7
    return-void

    .line 3470
    .end local v1    # "isChildViewEnabled":Z
    .end local v2    # "positionChanged":Z
    .end local v3    # "selector":Landroid/graphics/drawable/Drawable;
    .end local v4    # "selectorRect":Landroid/graphics/Rect;
    :cond_8
    const/4 v2, 0x0

    .restart local v2    # "positionChanged":Z
    goto/16 :goto_0

    .line 3511
    .restart local v1    # "isChildViewEnabled":Z
    .restart local v3    # "selector":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "selectorRect":Landroid/graphics/Rect;
    :cond_9
    invoke-virtual {v3, v9, v9}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 3512
    sget-object v5, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_1
.end method

.method private postOnJumpScrollToFinished()V
    .locals 1

    .prologue
    .line 6903
    new-instance v0, Landroid/widget/AbsListView$14;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$14;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6902
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7268
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 7269
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 7270
    iput-object v1, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 7267
    :cond_0
    return-void
.end method

.method private releaseAllBoosters()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1196
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_0

    .line 1197
    invoke-static {v1}, Lcom/samsung/android/os/SemPerfManager;->onScrollEvent(Z)V

    .line 1198
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 1195
    :cond_0
    return-void
.end method

.method private scrollIfNeeded(IILandroid/view/MotionEvent;)V
    .locals 36
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4841
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v33, p2, v3

    .line 4842
    .local v33, "rawDeltaY":I
    const/16 v35, 0x0

    .line 4843
    .local v35, "scrollOffsetCorrection":I
    const/16 v34, 0x0

    .line 4844
    .local v34, "scrollConsumedCorrection":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_0

    .line 4845
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    sub-int v33, v33, v3

    .line 4847
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_b

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    sub-int v3, v3, p2

    .line 4848
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 4847
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v3, v4, v5}, Landroid/widget/AbsListView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4849
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    add-int v33, v33, v3

    .line 4850
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    neg-int v0, v3

    move/from16 v35, v0

    .line 4851
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    const/4 v4, 0x1

    aget v34, v3, v4

    .line 4852
    if-eqz p3, :cond_1

    .line 4853
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4854
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 4857
    :cond_1
    move/from16 v20, v33

    .line 4859
    .local v20, "deltaY":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_c

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    sub-int v3, p2, v3

    add-int v21, v3, v34

    .line 4860
    .local v21, "incrementalDeltaY":I
    :goto_1
    const/16 v22, 0x0

    .line 4862
    .local v22, "lastYCorrection":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_14

    .line 4870
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v3, :cond_2

    .line 4872
    const-string/jumbo v3, "AbsListView-scroll"

    invoke-static {v3}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 4875
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, p2

    if-eq v0, v3, :cond_a

    .line 4879
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-nez v3, :cond_3

    .line 4880
    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v3, v4, :cond_3

    .line 4881
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v32

    .line 4882
    .local v32, "parent":Landroid/view/ViewParent;
    if-eqz v32, :cond_3

    .line 4883
    const/4 v3, 0x1

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4888
    .end local v32    # "parent":Landroid/view/ViewParent;
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    if-ltz v3, :cond_d

    .line 4889
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v23, v3, v4

    .line 4896
    .local v23, "motionIndex":I
    :goto_2
    const/16 v26, 0x0

    .line 4897
    .local v26, "motionViewPrevTop":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 4898
    .local v25, "motionView":Landroid/view/View;
    if-eqz v25, :cond_4

    .line 4899
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v26

    .line 4903
    :cond_4
    const/16 v18, 0x0

    .line 4904
    .local v18, "atEdge":Z
    if-eqz v21, :cond_5

    .line 4905
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v18

    .line 4909
    .end local v18    # "atEdge":Z
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 4910
    if-eqz v25, :cond_9

    .line 4913
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v27

    .line 4914
    .local v27, "motionViewRealTop":I
    if-eqz v18, :cond_8

    .line 4917
    move/from16 v0, v21

    neg-int v3, v0

    .line 4918
    sub-int v4, v27, v26

    .line 4917
    sub-int v7, v3, v4

    .line 4919
    .local v7, "overscroll":I
    sub-int v5, v7, v21

    .line 4920
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    .line 4919
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/widget/AbsListView;->dispatchNestedScroll(IIII[I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4920
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/AbsListView;->mSemForcedDrawEdgeEffect:Z

    if-eqz v3, :cond_e

    .line 4929
    :cond_6
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/AbsListView;->mScrollY:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    .line 4928
    const/4 v6, 0x0

    .line 4929
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x1

    move-object/from16 v5, p0

    .line 4928
    invoke-virtual/range {v5 .. v14}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v19

    .line 4931
    .local v19, "atOverscrollEdge":Z
    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_7

    .line 4933
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 4936
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v31

    .line 4937
    .local v31, "overscrollMode":I
    if-eqz v31, :cond_f

    .line 4938
    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_8

    .line 4939
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 4962
    .end local v7    # "overscroll":I
    .end local v19    # "atOverscrollEdge":Z
    .end local v31    # "overscrollMode":I
    :cond_8
    :goto_3
    add-int v3, p2, v22

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionY:I

    .line 4964
    .end local v27    # "motionViewRealTop":I
    :cond_9
    add-int v3, p2, v22

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mLastY:I

    .line 4840
    .end local v23    # "motionIndex":I
    .end local v25    # "motionView":Landroid/view/View;
    .end local v26    # "motionViewPrevTop":I
    :cond_a
    :goto_4
    return-void

    .line 4847
    .end local v20    # "deltaY":I
    .end local v21    # "incrementalDeltaY":I
    .end local v22    # "lastYCorrection":I
    :cond_b
    move/from16 v0, v33

    neg-int v3, v0

    goto/16 :goto_0

    .line 4859
    .restart local v20    # "deltaY":I
    :cond_c
    move/from16 v21, v20

    .restart local v21    # "incrementalDeltaY":I
    goto/16 :goto_1

    .line 4893
    .restart local v22    # "lastYCorrection":I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    div-int/lit8 v23, v3, 0x2

    .restart local v23    # "motionIndex":I
    goto/16 :goto_2

    .line 4922
    .restart local v7    # "overscroll":I
    .restart local v25    # "motionView":Landroid/view/View;
    .restart local v26    # "motionViewPrevTop":I
    .restart local v27    # "motionViewRealTop":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    rsub-int/lit8 v22, v3, 0x0

    .line 4923
    if-eqz p3, :cond_8

    .line 4924
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4925
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    goto :goto_3

    .line 4940
    .restart local v19    # "atOverscrollEdge":Z
    .restart local v31    # "overscrollMode":I
    :cond_f
    if-nez v19, :cond_10

    .line 4941
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mDirection:I

    .line 4942
    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4944
    :cond_10
    if-lez v21, :cond_12

    .line 4945
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    neg-int v4, v7

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 4946
    move/from16 v0, p1

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 4945
    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 4947
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_11

    .line 4948
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4950
    :cond_11
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateTopGlow()V

    goto/16 :goto_3

    .line 4951
    :cond_12
    if-gez v21, :cond_8

    .line 4952
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v4, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 4953
    move/from16 v0, p1

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    .line 4952
    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 4954
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_13

    .line 4955
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4957
    :cond_13
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateBottomGlow()V

    goto/16 :goto_3

    .line 4966
    .end local v7    # "overscroll":I
    .end local v19    # "atOverscrollEdge":Z
    .end local v23    # "motionIndex":I
    .end local v25    # "motionView":Landroid/view/View;
    .end local v26    # "motionViewPrevTop":I
    .end local v27    # "motionViewRealTop":I
    .end local v31    # "overscrollMode":I
    :cond_14
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_a

    .line 4967
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, p2

    if-eq v0, v3, :cond_a

    .line 4968
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mScrollY:I

    move/from16 v30, v0

    .line 4969
    .local v30, "oldScroll":I
    sub-int v29, v30, v21

    .line 4970
    .local v29, "newScroll":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, p2

    if-le v0, v3, :cond_1a

    const/16 v28, 0x1

    .line 4972
    .local v28, "newDirection":I
    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mDirection:I

    if-nez v3, :cond_15

    .line 4973
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    .line 4976
    :cond_15
    move/from16 v0, v21

    neg-int v10, v0

    .line 4977
    .local v10, "overScrollDistance":I
    if-gez v29, :cond_1b

    if-ltz v30, :cond_1b

    .line 4978
    :cond_16
    move/from16 v0, v30

    neg-int v10, v0

    .line 4979
    add-int v21, v21, v10

    .line 4984
    :goto_6
    if-eqz v10, :cond_17

    .line 4985
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/AbsListView;->mScrollY:I

    .line 4986
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move/from16 v16, v0

    .line 4985
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 4986
    const/4 v15, 0x0

    const/16 v17, 0x1

    move-object/from16 v8, p0

    .line 4985
    invoke-virtual/range {v8 .. v17}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    .line 4987
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v31

    .line 4988
    .restart local v31    # "overscrollMode":I
    if-eqz v31, :cond_1d

    .line 4989
    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_17

    .line 4990
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 5009
    .end local v31    # "overscrollMode":I
    :cond_17
    :goto_7
    if-eqz v21, :cond_19

    .line 5011
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v3, :cond_18

    .line 5012
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mScrollY:I

    .line 5013
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateParentIfNeeded()V

    .line 5016
    :cond_18
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 5018
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5022
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->findClosestMotionRow(I)I

    move-result v24

    .line 5024
    .local v24, "motionPosition":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 5025
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v3, v24, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 5026
    .restart local v25    # "motionView":Landroid/view/View;
    if-eqz v25, :cond_21

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v3

    :goto_8
    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 5027
    add-int v3, p2, v35

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionY:I

    .line 5028
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 5030
    .end local v24    # "motionPosition":I
    .end local v25    # "motionView":Landroid/view/View;
    :cond_19
    add-int/lit8 v3, p2, 0x0

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mLastY:I

    .line 5031
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    goto/16 :goto_4

    .line 4970
    .end local v10    # "overScrollDistance":I
    .end local v28    # "newDirection":I
    :cond_1a
    const/16 v28, -0x1

    .restart local v28    # "newDirection":I
    goto/16 :goto_5

    .line 4977
    .restart local v10    # "overScrollDistance":I
    :cond_1b
    if-lez v29, :cond_1c

    if-lez v30, :cond_16

    .line 4981
    :cond_1c
    const/16 v21, 0x0

    goto/16 :goto_6

    .line 4991
    .restart local v31    # "overscrollMode":I
    :cond_1d
    if-lez v33, :cond_1f

    .line 4992
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v4, v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 4993
    move/from16 v0, p1

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 4992
    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 4994
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 4995
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4997
    :cond_1e
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateTopGlow()V

    goto/16 :goto_7

    .line 4998
    :cond_1f
    if-gez v33, :cond_17

    .line 4999
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v4, v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 5000
    move/from16 v0, p1

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    .line 4999
    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 5001
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_20

    .line 5002
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 5004
    :cond_20
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateBottomGlow()V

    goto/16 :goto_7

    .line 5026
    .end local v31    # "overscrollMode":I
    .restart local v24    # "motionPosition":I
    .restart local v25    # "motionView":Landroid/view/View;
    :cond_21
    const/4 v3, 0x0

    goto/16 :goto_8
.end method

.method private semGetEnableVibrationAtLongPress()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mEnableVibrationAtLongPress:Z

    return v0
.end method

.method private semIsSupportGotoTop()Z
    .locals 1

    .prologue
    .line 5678
    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsTalkBackIsRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private semIsTalkBackIsRunning()Z
    .locals 5

    .prologue
    .line 5666
    const/4 v2, 0x0

    .line 5667
    .local v2, "isRunning":Z
    iget-object v3, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 5668
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5669
    iget-object v3, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 5670
    const-string/jumbo v4, "enabled_accessibility_services"

    .line 5669
    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5671
    .local v1, "enabledServices":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string/jumbo v3, "(?i).*TalkBackService.*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    .line 5674
    .end local v1    # "enabledServices":Ljava/lang/String;
    .end local v2    # "isRunning":Z
    :cond_0
    :goto_0
    return v2

    .line 5671
    .restart local v1    # "enabledServices":Ljava/lang/String;
    .restart local v2    # "isRunning":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private semMultiSelection(IIIIZ)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "contentTop"    # I
    .param p4, "contentBottom"    # I
    .param p5, "needToScroll"    # Z

    .prologue
    .line 5722
    iget v7, p0, Landroid/widget/AbsListView;->mTouchdownX:I

    sub-int v7, p1, v7

    iput v7, p0, Landroid/widget/AbsListView;->mDeltamoveX:I

    .line 5723
    iget v7, p0, Landroid/widget/AbsListView;->mTouchdownY:I

    sub-int v7, p2, v7

    iput v7, p0, Landroid/widget/AbsListView;->mDeltamoveY:I

    .line 5725
    iget v7, p0, Landroid/widget/AbsListView;->mDeltamoveX:I

    iget v8, p0, Landroid/widget/AbsListView;->mDeltamoveX:I

    mul-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsListView;->mDeltamoveY:I

    iget v9, p0, Landroid/widget/AbsListView;->mDeltamoveY:I

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    iget v9, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    mul-int/2addr v8, v9

    if-le v7, v8, :cond_0

    .line 5726
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/AbsListView;->mIsMovedbeforeUP:Z

    .line 5728
    :cond_0
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    if-eqz v7, :cond_18

    .line 5729
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v5

    .line 5731
    .local v5, "count":I
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsfirstMoveEvent:Z

    if-eqz v7, :cond_4

    .line 5732
    iput p1, p0, Landroid/widget/AbsListView;->mSemDragStartX:I

    .line 5733
    iput p2, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    .line 5734
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->semNotifyMultiSelectedStart(II)V

    .line 5735
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    .line 5737
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    .line 5739
    iget v7, p0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_9

    .line 5740
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->semPointToNearPosition(II)I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    .line 5741
    iget-object v7, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    if-nez v7, :cond_2

    .line 5742
    iget v7, p0, Landroid/widget/AbsListView;->mSemCloseChildPositionByTop:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    .line 5743
    iget-object v7, p0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    if-eqz v7, :cond_1

    .line 5744
    iget v7, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    iget-object v8, p0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, p0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildTop:I

    .line 5747
    :cond_1
    iget v7, p0, Landroid/widget/AbsListView;->mSemCloseChildPositionByBottom:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    .line 5748
    iget-object v7, p0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    if-eqz v7, :cond_2

    .line 5749
    iget v7, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    iget-object v8, p0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, p0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildBottom:I

    .line 5756
    :cond_2
    :goto_0
    iget-object v7, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    if-eqz v7, :cond_3

    .line 5757
    iget v7, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    iget-object v8, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, p0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    .line 5759
    :cond_3
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/AbsListView;->mIsfirstMoveEvent:Z

    .line 5762
    :cond_4
    iget v7, p0, Landroid/widget/AbsListView;->mSemDragStartX:I

    if-nez v7, :cond_5

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    if-nez v7, :cond_5

    .line 5763
    iput p1, p0, Landroid/widget/AbsListView;->mSemDragStartX:I

    .line 5764
    iput p2, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    .line 5765
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->semNotifyMultiSelectedStart(II)V

    .line 5766
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    .line 5769
    :cond_5
    iput p1, p0, Landroid/widget/AbsListView;->mSemDragEndX:I

    .line 5770
    iput p2, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    .line 5772
    iget v7, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    if-gez v7, :cond_a

    .line 5773
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    .line 5778
    :cond_6
    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 5780
    iget v7, p0, Landroid/widget/AbsListView;->mSemDragStartX:I

    iget v8, p0, Landroid/widget/AbsListView;->mSemDragEndX:I

    if-ge v7, v8, :cond_b

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragStartX:I

    :goto_2
    iput v7, p0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    .line 5781
    iget v7, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    iget v8, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    if-ge v7, v8, :cond_c

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    :goto_3
    iput v7, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    .line 5782
    iget v7, p0, Landroid/widget/AbsListView;->mSemDragEndX:I

    iget v8, p0, Landroid/widget/AbsListView;->mSemDragStartX:I

    if-le v7, v8, :cond_d

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragEndX:I

    :goto_4
    iput v7, p0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    .line 5783
    iget v7, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    iget v8, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    if-le v7, v8, :cond_e

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    :goto_5
    iput v7, p0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    .line 5785
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6
    if-ge v6, v5, :cond_17

    .line 5786
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5787
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_8

    .line 5788
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 5789
    .local v2, "childLeft":I
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 5790
    .local v4, "childTop":I
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    .line 5791
    .local v3, "childRight":I
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 5793
    .local v1, "childBottom":I
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_8

    .line 5794
    iget v7, p0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    if-le v7, v2, :cond_f

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    if-le v7, v4, :cond_f

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    if-ge v7, v3, :cond_f

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    if-ge v7, v1, :cond_f

    .line 5797
    :cond_7
    add-int/lit8 v7, v2, 0x1

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p0, v7, v8}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 5798
    iget v7, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_8

    iget-object v7, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v8, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-interface {v7, v8}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 5799
    iget-object v7, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v8, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 5785
    .end local v1    # "childBottom":I
    .end local v2    # "childLeft":I
    .end local v3    # "childRight":I
    .end local v4    # "childTop":I
    :cond_8
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 5753
    .end local v0    # "child":Landroid/view/View;
    .end local v6    # "i":I
    :cond_9
    iget v7, p0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    goto/16 :goto_0

    .line 5774
    :cond_a
    iget v7, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    if-le v7, p4, :cond_6

    .line 5775
    iput p4, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    goto/16 :goto_1

    .line 5780
    :cond_b
    iget v7, p0, Landroid/widget/AbsListView;->mSemDragEndX:I

    goto/16 :goto_2

    .line 5781
    :cond_c
    iget v7, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    goto/16 :goto_3

    .line 5782
    :cond_d
    iget v7, p0, Landroid/widget/AbsListView;->mSemDragStartX:I

    goto/16 :goto_4

    .line 5783
    :cond_e
    iget v7, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    goto :goto_5

    .line 5795
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childBottom":I
    .restart local v2    # "childLeft":I
    .restart local v3    # "childRight":I
    .restart local v4    # "childTop":I
    .restart local v6    # "i":I
    :cond_f
    iget v7, p0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    if-le v7, v2, :cond_14

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    if-ge v7, v3, :cond_14

    .line 5796
    :cond_10
    :goto_8
    iget v7, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    if-lt v7, v4, :cond_11

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    if-le v7, v1, :cond_7

    :cond_11
    iget v7, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    if-gt v7, v4, :cond_12

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    if-gt v7, v4, :cond_7

    :cond_12
    iget v7, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    if-ge v7, v1, :cond_13

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    if-ge v7, v1, :cond_7

    .line 5807
    :cond_13
    add-int/lit8 v7, v2, 0x1

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p0, v7, v8}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 5808
    iget v7, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_8

    iget-object v7, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v8, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-interface {v7, v8}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 5809
    iget-object v7, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v8, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 5808
    if-eqz v7, :cond_8

    .line 5810
    iget-object v7, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    new-instance v8, Ljava/lang/Integer;

    iget v9, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5811
    iget-object v7, p0, Landroid/widget/AbsListView;->mSemMultiSelectionListener:Landroid/widget/AdapterView$SemMultiSelectionListener;

    if-nez v7, :cond_8

    .line 5812
    iget v7, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    const/4 v8, -0x1

    invoke-direct {p0, v7, v8}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    .line 5813
    iget v7, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    iget v8, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v8

    invoke-direct {p0, v0, v7, v8, v9}, Landroid/widget/AbsListView;->semToNotifyMultiSelectionState(Landroid/view/View;IJ)Z

    goto/16 :goto_7

    .line 5795
    :cond_14
    iget v7, p0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    if-ge v7, v2, :cond_15

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    if-gt v7, v2, :cond_10

    :cond_15
    iget v7, p0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    if-ge v7, v3, :cond_13

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    if-le v7, v3, :cond_13

    goto :goto_8

    .line 5800
    :cond_16
    iget-object v7, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v8, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5801
    iget-object v7, p0, Landroid/widget/AbsListView;->mSemMultiSelectionListener:Landroid/widget/AdapterView$SemMultiSelectionListener;

    if-nez v7, :cond_8

    .line 5802
    iget v7, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    const/4 v8, -0x1

    invoke-direct {p0, v7, v8}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    .line 5803
    iget v7, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    iget v8, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v8

    invoke-direct {p0, v0, v7, v8, v9}, Landroid/widget/AbsListView;->semToNotifyMultiSelectionState(Landroid/view/View;IJ)Z

    goto/16 :goto_7

    .line 5820
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childBottom":I
    .end local v2    # "childLeft":I
    .end local v3    # "childRight":I
    .end local v4    # "childTop":I
    :cond_17
    const/4 p5, 0x1

    .line 5823
    .end local v5    # "count":I
    .end local v6    # "i":I
    .end local p5    # "needToScroll":Z
    :cond_18
    if-eqz p5, :cond_21

    .line 5824
    add-int/lit8 v7, p3, 0x0

    if-lt p2, v7, :cond_1c

    iget v7, p0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    add-int/2addr v7, p3

    if-gt p2, v7, :cond_1c

    .line 5825
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v7, :cond_19

    .line 5826
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 5827
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 5829
    iget-object v7, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v7, :cond_19

    .line 5830
    iget-object v7, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    const/4 v8, 0x1

    invoke-interface {v7, p0, v8}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 5835
    :cond_19
    iget-object v7, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_1a

    .line 5836
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 5837
    const/4 v7, 0x2

    iput v7, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 5838
    iget-object v7, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 5873
    :cond_1a
    :goto_9
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    if-eqz v7, :cond_1b

    .line 5874
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 5882
    :cond_1b
    :goto_a
    iput-boolean p5, p0, Landroid/widget/AbsListView;->mPreviousTextViewScroll:Z

    .line 5721
    return-void

    .line 5840
    :cond_1c
    iget v7, p0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    sub-int v7, p4, v7

    if-lt p2, v7, :cond_1e

    if-gt p2, p4, :cond_1e

    .line 5841
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v7, :cond_1d

    .line 5842
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 5843
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 5845
    iget-object v7, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v7, :cond_1d

    .line 5846
    iget-object v7, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    const/4 v8, 0x1

    invoke-interface {v7, p0, v8}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 5851
    :cond_1d
    iget-object v7, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_1a

    .line 5852
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 5853
    const/4 v7, 0x1

    iput v7, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 5854
    iget-object v7, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_9

    .line 5857
    :cond_1e
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-eqz v7, :cond_1f

    iget-object v7, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v7, :cond_1f

    .line 5858
    iget-object v7, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    const/4 v8, 0x0

    invoke-interface {v7, p0, v8}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 5861
    :cond_1f
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 5862
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 5863
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 5866
    iget-object v7, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 5867
    iget-object v7, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5870
    :cond_20
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    goto :goto_9

    .line 5876
    :cond_21
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mPreviousTextViewScroll:Z

    if-eqz v7, :cond_1b

    .line 5878
    iget-object v7, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 5879
    iget-object v7, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    goto :goto_a
.end method

.method private semMultiSelectionEnd(III)V
    .locals 8
    .param p1, "action"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 5886
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    if-nez v0, :cond_3

    .line 5887
    const/16 v0, 0xd4

    if-ne p1, v0, :cond_0

    .line 5888
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    .line 5890
    :cond_0
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 5891
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, v1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 5894
    :cond_1
    iput-wide v4, p0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 5895
    iput-wide v4, p0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 5896
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 5898
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemSize:I

    .line 5900
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    if-nez v0, :cond_2

    .line 5901
    new-instance v0, Landroid/widget/AbsListView$CheckForDoublePenClick;

    invoke-direct {v0, p0, v6}, Landroid/widget/AbsListView$CheckForDoublePenClick;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForDoublePenClick;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    .line 5904
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    iput p2, v0, Landroid/widget/AbsListView$CheckForDoublePenClick;->x:I

    .line 5905
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    iput p3, v0, Landroid/widget/AbsListView$CheckForDoublePenClick;->y:I

    .line 5907
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    if-eqz v0, :cond_8

    .line 5908
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsMovedbeforeUP:Z

    if-eqz v0, :cond_7

    .line 5909
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 5920
    :cond_3
    :goto_1
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    .line 5921
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsfirstMoveEvent:Z

    .line 5922
    iput v7, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 5924
    iput v1, p0, Landroid/widget/AbsListView;->mSemDragStartX:I

    .line 5925
    iput v1, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    .line 5926
    iput v1, p0, Landroid/widget/AbsListView;->mSemDragEndX:I

    .line 5927
    iput v1, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    .line 5929
    iput v1, p0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    .line 5930
    iput v1, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    .line 5931
    iput v1, p0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    .line 5932
    iput v1, p0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    .line 5934
    iput-object v6, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 5935
    iput v1, p0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    .line 5937
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    .line 5938
    iput v7, p0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    .line 5939
    iput-object v6, p0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    .line 5940
    iput v7, p0, Landroid/widget/AbsListView;->mSemCloseChildPositionByTop:I

    .line 5941
    iput v1, p0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildTop:I

    .line 5942
    iput-object v6, p0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    .line 5943
    iput v7, p0, Landroid/widget/AbsListView;->mSemCloseChildPositionByBottom:I

    .line 5944
    iput v1, p0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildBottom:I

    .line 5946
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    if-eqz v0, :cond_4

    .line 5947
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 5951
    :cond_4
    iget-object v0, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5952
    iget-object v0, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5954
    :cond_5
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsMovedbeforeUP:Z

    .line 5885
    return-void

    :cond_6
    move v0, v2

    .line 5888
    goto :goto_0

    .line 5911
    :cond_7
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v0, v4, v5}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 5914
    :cond_8
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5915
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5916
    iput v1, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemSize:I

    goto :goto_1
.end method

.method private semPerformItemCheck(Landroid/view/View;IJ)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1541
    const/4 v0, 0x0

    .line 1542
    .local v0, "checkedStateChanged":Z
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 1543
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_3

    .line 1544
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v6, 0x0

    .line 1545
    .local v6, "checked":Z
    :goto_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1546
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1547
    if-eqz v6, :cond_6

    .line 1548
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1553
    :cond_1
    :goto_1
    if-eqz v6, :cond_7

    .line 1554
    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1558
    :goto_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_2

    .line 1559
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1562
    :cond_2
    const/4 v0, 0x1

    .line 1564
    .end local v6    # "checked":Z
    :cond_3
    if-eqz v0, :cond_4

    .line 1565
    invoke-direct {p0}, Landroid/widget/AbsListView;->updateOnScreenCheckedViews()V

    .line 1540
    :cond_4
    return-void

    .line 1544
    :cond_5
    const/4 v6, 0x1

    .restart local v6    # "checked":Z
    goto :goto_0

    .line 1550
    :cond_6
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 1556
    :cond_7
    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_2
.end method

.method private semPlayGotoToFadeIn()V
    .locals 4

    .prologue
    .line 11139
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 11140
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 11141
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0xff

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 11142
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 11138
    return-void
.end method

.method private semPlayGotoToFadeOut()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 11132
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 11133
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 11134
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 11135
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 11131
    return-void
.end method

.method private semSetFastScrollEnabledUiThread(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 11265
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_2

    .line 11266
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/SemFastScroller;->setEnabled(Z)V

    .line 11274
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resolvePadding()V

    .line 11276
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_1

    .line 11277
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v0}, Landroid/widget/SemFastScroller;->updateLayout()V

    .line 11264
    :cond_1
    return-void

    .line 11267
    :cond_2
    if-eqz p1, :cond_0

    .line 11268
    new-instance v0, Landroid/widget/SemFastScroller;

    iget v1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    invoke-direct {v0, p0, v1}, Landroid/widget/SemFastScroller;-><init>(Landroid/widget/AbsListView;I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    .line 11269
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SemFastScroller;->setEnabled(Z)V

    .line 11271
    iput-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    goto :goto_0
.end method

.method private semToNotifyMultiSelectionEnded(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 4789
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->semNotifyMultiSelectedStop(II)V

    .line 4788
    return-void
.end method

.method private semToNotifyMultiSelectionState(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1725
    const/4 v0, 0x0

    .line 1726
    .local v0, "handledNotifyMultiSelect":Z
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    iget-boolean v8, p0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-super/range {v1 .. v8}, Landroid/widget/AdapterView;->semNotifyMultiSelectedState(Landroid/view/View;IJZZZ)Z

    move-result v0

    .line 1728
    .local v0, "handledNotifyMultiSelect":Z
    return v0
.end method

.method private setFastScrollerAlwaysVisibleUiThread(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 2070
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 2071
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setAlwaysShow(Z)V

    .line 2069
    :cond_0
    return-void
.end method

.method private setFastScrollerEnabledUiThread(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2004
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_2

    .line 2005
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setEnabled(Z)V

    .line 2013
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resolvePadding()V

    .line 2015
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_1

    .line 2016
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->updateLayout()V

    .line 2003
    :cond_1
    return-void

    .line 2006
    :cond_2
    if-eqz p1, :cond_0

    .line 2007
    new-instance v0, Landroid/widget/FastScroller;

    iget v1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    invoke-direct {v0, p0, v1}, Landroid/widget/FastScroller;-><init>(Landroid/widget/AbsListView;I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    .line 2008
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setEnabled(Z)V

    .line 2010
    iput-object v2, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    goto :goto_0
.end method

.method private setItemViewLayoutParams(Landroid/view/View;I)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 3295
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 3297
    .local v1, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_2

    .line 3298
    invoke-virtual {p0}, Landroid/widget/AbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .line 3305
    .local v0, "lp":Landroid/widget/AbsListView$LayoutParams;
    :goto_0
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v2, :cond_0

    .line 3306
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    .line 3308
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    iput v2, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 3309
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    iput-boolean v2, v0, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 3310
    if-eq v0, v1, :cond_1

    .line 3311
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3294
    :cond_1
    return-void

    .line 3299
    .end local v0    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3300
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .restart local v0    # "lp":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_0

    .end local v0    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_3
    move-object v0, v1

    .line 3302
    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    .restart local v0    # "lp":Landroid/widget/AbsListView$LayoutParams;
    goto :goto_0
.end method

.method private setupQuickController(I)V
    .locals 23
    .param p1, "where"    # I

    .prologue
    .line 10946
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v17

    .line 10947
    .local v17, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v11

    .line 10948
    .local v11, "h":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingLeft:I

    move/from16 v18, v0

    sub-int v18, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingRight:I

    move/from16 v19, v0

    sub-int v9, v18, v19

    .line 10949
    .local v9, "contentW":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingLeft:I

    move/from16 v18, v0

    div-int/lit8 v19, v9, 0x2

    add-int v7, v18, v19

    .line 10951
    .local v7, "centerX":I
    const/16 v16, 0x0

    .line 10952
    .local v16, "paddingTop":I
    const/4 v15, 0x0

    .line 10954
    .local v15, "paddingBottom":I
    const/4 v6, 0x0

    .line 10955
    .local v6, "btnW":I
    const/4 v5, 0x0

    .line 10957
    .local v5, "btnH":I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mQCLocation:I

    .line 10958
    .local v13, "oldLocation":I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mQCLocation:I

    .line 10960
    const/4 v8, 0x1

    .line 10961
    .local v8, "checkBoundary":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v4

    .line 10962
    .local v4, "basePkgName":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string/jumbo v18, "cocktailbarservice"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    const-string/jumbo v18, "com.sec.android.app.launcher"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 10965
    :cond_0
    const/4 v8, 0x0

    .line 10970
    :cond_1
    if-eqz v8, :cond_3

    .line 10971
    const/16 v18, 0x0

    const/16 v19, 0x0

    filled-new-array/range {v18 .. v19}, [I

    move-result-object v12

    .line 10972
    .local v12, "locOnScr":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->getLocationOnScreen([I)V

    .line 10973
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 10976
    .local v10, "dm":Landroid/util/DisplayMetrics;
    const/16 v18, 0x0

    aget v18, v12, v18

    if-gez v18, :cond_2

    .line 10977
    const/16 v18, 0x0

    aget v18, v12, v18

    move/from16 v0, v18

    neg-int v14, v0

    .line 10978
    .local v14, "overlappedW":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingLeft:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v14, v0, :cond_2

    .line 10979
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingLeft:I

    move/from16 v18, v0

    sub-int v18, v14, v18

    div-int/lit8 v18, v18, 0x2

    add-int v7, v7, v18

    .line 10984
    .end local v14    # "overlappedW":I
    :cond_2
    const/16 v18, 0x0

    aget v18, v12, v18

    add-int v18, v18, v17

    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    .line 10985
    const/16 v18, 0x0

    aget v18, v12, v18

    add-int v18, v18, v17

    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    sub-int v14, v18, v19

    .line 10986
    .restart local v14    # "overlappedW":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingRight:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v14, v0, :cond_3

    .line 10987
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingRight:I

    move/from16 v18, v0

    sub-int v18, v14, v18

    div-int/lit8 v18, v18, 0x2

    sub-int v7, v7, v18

    .line 10992
    .end local v10    # "dm":Landroid/util/DisplayMetrics;
    .end local v12    # "locOnScr":[I
    .end local v14    # "overlappedW":I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 10993
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    .line 10994
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v15, v0, Landroid/graphics/Rect;->bottom:I

    .line 10999
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 11035
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mQCRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 11036
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mQCRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 11038
    const/16 v18, 0x0

    const/16 v19, 0xff

    filled-new-array/range {v18 .. v19}, [I

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 11039
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    const-wide/16 v20, 0x96

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 11041
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mQCBtnFadeInAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    new-instance v19, Landroid/widget/AbsListView$16;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$16;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual/range {v18 .. v19}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11052
    const/16 v18, 0x0

    const/16 v19, 0xff

    filled-new-array/range {v18 .. v19}, [I

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 11053
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    const-wide/16 v20, 0x96

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 11055
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    new-instance v19, Landroid/widget/AbsListView$17;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$17;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual/range {v18 .. v19}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11066
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mQCBtnFadeOutAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v18, v0

    new-instance v19, Landroid/widget/AbsListView$18;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$18;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual/range {v18 .. v19}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 10945
    return-void

    .line 10996
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mExtraPaddingInTopHoverArea:I

    move/from16 v16, v0

    .line 10997
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AbsListView;->mExtraPaddingInBottomHoverArea:I

    goto/16 :goto_0

    .line 11001
    :pswitch_0
    new-instance v18, Landroid/graphics/Rect;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v18 .. v22}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_1

    .line 11005
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mQCLocation:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v13, :cond_5

    .line 11006
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x108053f

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    .line 11007
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x1080540

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 11010
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x10502ed

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 11011
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x10502ed

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 11012
    new-instance v18, Landroid/graphics/Rect;

    div-int/lit8 v19, v6, 0x2

    sub-int v19, v7, v19

    add-int/lit8 v20, v16, 0x0

    div-int/lit8 v21, v6, 0x2

    add-int v21, v21, v7

    add-int v22, v5, v16

    invoke-direct/range {v18 .. v22}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_1

    .line 11016
    :pswitch_2
    new-instance v18, Landroid/graphics/Rect;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v18 .. v22}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_1

    .line 11020
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mQCLocation:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v13, :cond_6

    .line 11021
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x108053d

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    .line 11022
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x108053e

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 11025
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x10502ed

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 11026
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x10502ed

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 11027
    new-instance v18, Landroid/graphics/Rect;

    div-int/lit8 v19, v6, 0x2

    sub-int v19, v7, v19

    sub-int v20, v11, v5

    sub-int v20, v20, v15

    div-int/lit8 v21, v6, 0x2

    add-int v21, v21, v7

    sub-int v22, v11, v15

    invoke-direct/range {v18 .. v22}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_1

    .line 10999
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showContextMenuForChildInternal(Landroid/view/View;FFZ)Z
    .locals 8
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "useOffsets"    # Z

    .prologue
    const/4 v0, 0x0

    .line 4394
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 4395
    .local v3, "longPressPosition":I
    if-gez v3, :cond_0

    .line 4396
    return v0

    .line 4399
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 4400
    .local v4, "longPressId":J
    const/4 v7, 0x0

    .line 4402
    .local v7, "handled":Z
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_1

    .line 4403
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v7

    .line 4407
    .end local v7    # "handled":Z
    :cond_1
    if-nez v7, :cond_2

    .line 4408
    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4409
    .local v6, "child":Landroid/view/View;
    invoke-virtual {p0, v6, v3, v4, v5}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 4411
    if-eqz p4, :cond_3

    .line 4412
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result v7

    .line 4418
    .end local v6    # "child":Landroid/view/View;
    :cond_2
    :goto_0
    return v7

    .line 4414
    .restart local v6    # "child":Landroid/view/View;
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v7

    .local v7, "handled":Z
    goto :goto_0
.end method

.method private showContextMenuInternal(FFZ)Z
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "useOffsets"    # Z

    .prologue
    const/4 v6, 0x0

    .line 4357
    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {p0, v4, v5}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v1

    .line 4358
    .local v1, "position":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 4359
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 4360
    .local v2, "id":J
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v4, v1, v4

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4361
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 4362
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 4363
    if-eqz p3, :cond_0

    .line 4364
    invoke-super {p0, p0, p1, p2}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result v4

    return v4

    .line 4366
    :cond_0
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    return v4

    .line 4370
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "id":J
    :cond_1
    iput-object v6, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 4372
    :cond_2
    if-eqz p3, :cond_3

    .line 4373
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->showContextMenu(FF)Z

    move-result v4

    return v4

    .line 4375
    :cond_3
    invoke-super {p0}, Landroid/widget/AdapterView;->showContextMenu()Z

    move-result v4

    return v4
.end method

.method private showPointerIcon(Landroid/view/MotionEvent;I)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "iconId"    # I

    .prologue
    .line 10600
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    .line 10601
    .local v0, "inputDevice":Landroid/view/InputDevice;
    if-eqz v0, :cond_0

    .line 10602
    invoke-virtual {v0, p2}, Landroid/view/InputDevice;->setPointerType(I)V

    .line 10599
    :goto_0
    return-void

    .line 10604
    :cond_0
    const-string/jumbo v1, "AbsListView"

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
    .line 8768
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 8769
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 8770
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 8772
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkFocus()V

    .line 8766
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

    .line 4795
    iget v7, p0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v1, p2, v7

    .line 4796
    .local v1, "deltaY":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 4797
    .local v2, "distance":I
    iget v7, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v7, :cond_2

    move v5, v8

    .line 4798
    .local v5, "overscroll":Z
    :goto_0
    if-nez v5, :cond_0

    iget v7, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v2, v7, :cond_7

    .line 4799
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getNestedScrollAxes()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_7

    .line 4800
    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    .line 4801
    if-eqz v5, :cond_3

    .line 4802
    const/4 v7, 0x5

    iput v7, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4803
    iput v9, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 4808
    :goto_1
    iget-object v7, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4809
    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4810
    iget v7, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v10, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v7, v10

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4811
    .local v4, "motionView":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 4812
    invoke-virtual {v4, v9}, Landroid/view/View;->setPressed(Z)V

    .line 4815
    :cond_1
    iget v7, p0, Landroid/widget/AbsListView;->mPointerCount:I

    if-le v7, v8, :cond_5

    .line 4821
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 4822
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_5

    .line 4823
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setPressed(Z)V

    .line 4822
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0    # "childCount":I
    .end local v3    # "i":I
    .end local v4    # "motionView":Landroid/view/View;
    .end local v5    # "overscroll":Z
    :cond_2
    move v5, v9

    .line 4797
    goto :goto_0

    .line 4805
    .restart local v5    # "overscroll":Z
    :cond_3
    const/4 v7, 0x3

    iput v7, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4806
    if-lez v1, :cond_4

    iget v7, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    :goto_3
    iput v7, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    goto :goto_1

    :cond_4
    iget v7, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    neg-int v7, v7

    goto :goto_3

    .line 4826
    .restart local v4    # "motionView":Landroid/view/View;
    :cond_5
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4829
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 4830
    .local v6, "parent":Landroid/view/ViewParent;
    if-eqz v6, :cond_6

    .line 4831
    invoke-interface {v6, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4833
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    .line 4834
    return v8

    .line 4837
    .end local v4    # "motionView":Landroid/view/View;
    .end local v6    # "parent":Landroid/view/ViewParent;
    :cond_7
    return v9
.end method

.method private updateLongPressMultiSelection(IIZ)V
    .locals 25
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "fromUserTouch"    # Z

    .prologue
    .line 5958
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v14

    .line 5960
    .local v14, "count":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsFirstMultiSelectionMove:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    .line 5961
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemDragStartX:I

    .line 5962
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemDragStartY:I

    .line 5963
    invoke-super/range {p0 .. p2}, Landroid/widget/AdapterView;->semNotifyLongPressMultiSelectionStarted(II)V

    .line 5965
    invoke-virtual/range {p0 .. p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 5966
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 5967
    invoke-virtual/range {p0 .. p2}, Landroid/widget/AbsListView;->semPointToNearPosition(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    .line 5968
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    .line 5969
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemCloseChildPositionByTop:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v22

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    .line 5970
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 5971
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildTop:I

    .line 5974
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemCloseChildPositionByBottom:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v22

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    .line 5975
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    .line 5976
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildBottom:I

    .line 5983
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    .line 5984
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    .line 5986
    :cond_2
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsFirstMultiSelectionMove:Z

    .line 5989
    :cond_3
    const/4 v13, 0x0

    .line 5990
    .local v13, "contentTop":I
    const/4 v12, 0x0

    .line 5992
    .local v12, "contentBottom":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    move/from16 v21, v0

    if-eqz v21, :cond_8

    .line 5993
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v13, v0, Landroid/graphics/Rect;->top:I

    .line 5994
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v12, v21, v22

    .line 6000
    :goto_1
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemDragEndX:I

    .line 6001
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemDragEndY:I

    .line 6003
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    move/from16 v21, v0

    if-gez v21, :cond_9

    .line 6004
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemDragEndY:I

    .line 6009
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragEndX:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v20

    .line 6011
    .local v20, "touchedPosition":I
    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_a

    .line 6012
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 6020
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_b

    .line 6021
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    move/from16 v19, v0

    .line 6022
    .local v19, "startPosition":I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 6028
    .local v15, "endPosition":I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragStartX:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragEndX:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragStartX:I

    move/from16 v21, v0

    :goto_5
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    .line 6029
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    move/from16 v21, v0

    :goto_6
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    .line 6030
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragEndX:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragStartX:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragEndX:I

    move/from16 v21, v0

    :goto_7
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    .line 6031
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    move/from16 v21, v0

    :goto_8
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    .line 6033
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_9
    move/from16 v0, v16

    if-ge v0, v14, :cond_14

    .line 6034
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 6035
    .local v6, "child":Landroid/view/View;
    if-eqz v6, :cond_6

    .line 6036
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 6037
    .local v8, "childLeft":I
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v11

    .line 6038
    .local v11, "childTop":I
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v10

    .line 6039
    .local v10, "childRight":I
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 6040
    .local v7, "childBottom":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v9

    .line 6042
    .local v9, "childPosition":I
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v21

    if-nez v21, :cond_6

    .line 6043
    const/16 v17, 0x0

    .line 6044
    .local v17, "needSelected":Z
    const/16 v18, 0x0

    .line 6045
    .local v18, "notNeedToCheck":Z
    move/from16 v0, v19

    if-gt v0, v9, :cond_5

    if-gt v9, v15, :cond_5

    .line 6046
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v21, v0

    if-eqz v21, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 6047
    const/16 v18, 0x1

    .line 6051
    :goto_a
    const/16 v17, 0x1

    .line 6054
    :cond_5
    if-eqz v17, :cond_13

    .line 6055
    add-int/lit8 v21, v8, 0x1

    add-int/lit8 v22, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 6056
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 6057
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 6033
    .end local v7    # "childBottom":I
    .end local v8    # "childLeft":I
    .end local v9    # "childPosition":I
    .end local v10    # "childRight":I
    .end local v11    # "childTop":I
    .end local v17    # "needSelected":Z
    .end local v18    # "notNeedToCheck":Z
    :cond_6
    :goto_b
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_9

    .line 5980
    .end local v6    # "child":Landroid/view/View;
    .end local v12    # "contentBottom":I
    .end local v13    # "contentTop":I
    .end local v15    # "endPosition":I
    .end local v16    # "i":I
    .end local v19    # "startPosition":I
    .end local v20    # "touchedPosition":I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v22

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    goto/16 :goto_0

    .line 5996
    .restart local v12    # "contentBottom":I
    .restart local v13    # "contentTop":I
    :cond_8
    const/4 v13, 0x0

    .line 5997
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v12

    goto/16 :goto_1

    .line 6005
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-le v0, v12, :cond_4

    .line 6006
    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    goto/16 :goto_2

    .line 6014
    .restart local v20    # "touchedPosition":I
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragEndX:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->semPointToNearPosition(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    goto/16 :goto_3

    .line 6024
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v19, v0

    .line 6025
    .restart local v19    # "startPosition":I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    .restart local v15    # "endPosition":I
    goto/16 :goto_4

    .line 6028
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragEndX:I

    move/from16 v21, v0

    goto/16 :goto_5

    .line 6029
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    move/from16 v21, v0

    goto/16 :goto_6

    .line 6030
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragStartX:I

    move/from16 v21, v0

    goto/16 :goto_7

    .line 6031
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    move/from16 v21, v0

    goto/16 :goto_8

    .line 6049
    .restart local v6    # "child":Landroid/view/View;
    .restart local v7    # "childBottom":I
    .restart local v8    # "childLeft":I
    .restart local v9    # "childPosition":I
    .restart local v10    # "childRight":I
    .restart local v11    # "childTop":I
    .restart local v16    # "i":I
    .restart local v17    # "needSelected":Z
    .restart local v18    # "notNeedToCheck":Z
    :cond_10
    const/16 v18, 0x0

    goto/16 :goto_a

    .line 6058
    :cond_11
    if-eqz v18, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    if-gt v0, v1, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-gt v0, v15, :cond_12

    .line 6059
    const/16 v18, 0x0

    .line 6063
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6064
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    .line 6065
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-super {v0, v6, v1, v2, v3}, Landroid/widget/AdapterView;->semNotifyLongPressMultiSelectionState(Landroid/view/View;IJ)Z

    goto/16 :goto_b

    .line 6061
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v22

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v21

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/AbsListView;->semPerformItemCheck(Landroid/view/View;IJ)V

    goto :goto_c

    .line 6068
    :cond_13
    add-int/lit8 v21, v8, 0x1

    add-int/lit8 v22, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    .line 6069
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 6070
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v21

    .line 6069
    if-eqz v21, :cond_6

    .line 6071
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v22

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v21

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/AbsListView;->semPerformItemCheck(Landroid/view/View;IJ)V

    .line 6072
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6073
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    .line 6074
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-super {v0, v6, v1, v2, v3}, Landroid/widget/AdapterView;->semNotifyLongPressMultiSelectionState(Landroid/view/View;IJ)Z

    goto/16 :goto_b

    .line 6080
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "childBottom":I
    .end local v8    # "childLeft":I
    .end local v9    # "childPosition":I
    .end local v10    # "childRight":I
    .end local v11    # "childTop":I
    .end local v17    # "needSelected":Z
    .end local v18    # "notNeedToCheck":Z
    :cond_14
    if-eqz p3, :cond_16

    .line 6081
    add-int/lit8 v21, v13, 0x0

    move/from16 v0, p2

    move/from16 v1, v21

    if-lt v0, v1, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    move/from16 v21, v0

    add-int v21, v21, v13

    move/from16 v0, p2

    move/from16 v1, v21

    if-gt v0, v1, :cond_17

    .line 6082
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    move/from16 v21, v0

    if-nez v21, :cond_15

    .line 6083
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 6084
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 6086
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_15

    .line 6087
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 6092
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v21

    if-nez v21, :cond_16

    .line 6093
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 6094
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 6095
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 6129
    :cond_16
    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 5957
    return-void

    .line 6097
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    move/from16 v21, v0

    sub-int v21, v12, v21

    move/from16 v0, p2

    move/from16 v1, v21

    if-lt v0, v1, :cond_19

    move/from16 v0, p2

    if-gt v0, v12, :cond_19

    .line 6098
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    move/from16 v21, v0

    if-nez v21, :cond_18

    .line 6099
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 6100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 6102
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_18

    .line 6103
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 6107
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v21

    if-nez v21, :cond_16

    .line 6108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 6109
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 6110
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_d

    .line 6113
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1a

    .line 6114
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 6117
    :cond_1a
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 6118
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 6119
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 6122
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v21

    if-eqz v21, :cond_1b

    .line 6123
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 6126
    :cond_1b
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    goto/16 :goto_d
.end method

.method private updateOnScreenCheckedViews()V
    .locals 8

    .prologue
    .line 1737
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 1738
    .local v2, "firstPos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 1739
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1740
    const/16 v7, 0xb

    .line 1739
    if-lt v6, v7, :cond_1

    const/4 v5, 0x1

    .line 1741
    .local v5, "useActivated":Z
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 1742
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1743
    .local v0, "child":Landroid/view/View;
    add-int v4, v2, v3

    .line 1745
    .local v4, "position":I
    instance-of v6, v0, Landroid/widget/Checkable;

    if-eqz v6, :cond_2

    .line 1746
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "child":Landroid/view/View;
    iget-object v6, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1741
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1739
    .end local v3    # "i":I
    .end local v4    # "position":I
    .end local v5    # "useActivated":Z
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "useActivated":Z
    goto :goto_0

    .line 1747
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    .restart local v4    # "position":I
    :cond_2
    if-eqz v5, :cond_0

    .line 1748
    iget-object v6, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2

    .line 1736
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "position":I
    :cond_3
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 2493
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2494
    const v1, 0x1080062

    .line 2493
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2492
    return-void
.end method


# virtual methods
.method public addExtraPaddingInBottomHoverArea(I)V
    .locals 3
    .param p1, "extraSpace"    # I

    .prologue
    .line 5157
    int-to-float v0, p1

    .line 5158
    iget-object v1, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 5157
    const/4 v2, 0x1

    .line 5156
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 5158
    const/high16 v1, 0x3f000000    # 0.5f

    .line 5156
    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/AbsListView;->mExtraPaddingInBottomHoverArea:I

    .line 5155
    return-void
.end method

.method public addExtraPaddingInTopHoverArea(I)V
    .locals 3
    .param p1, "extraSpace"    # I

    .prologue
    .line 5148
    int-to-float v0, p1

    .line 5149
    iget-object v1, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 5148
    const/4 v2, 0x1

    .line 5147
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 5149
    const/high16 v1, 0x3f000000    # 0.5f

    .line 5147
    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/AbsListView;->mExtraPaddingInTopHoverArea:I

    .line 5146
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
    .line 7416
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    .line 7417
    .local v2, "count":I
    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 7418
    .local v3, "firstPosition":I
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 7420
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_0

    .line 7421
    return-void

    .line 7424
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 7425
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 7426
    .local v1, "child":Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7427
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7429
    :cond_1
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 7424
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7415
    .end local v1    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 9248
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 9207
    return-void
.end method

.method public canScrollList(I)Z
    .locals 10
    .param p1, "direction"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 8126
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 8127
    .local v0, "childCount":I
    if-nez v0, :cond_0

    .line 8128
    return v7

    .line 8131
    :cond_0
    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 8132
    .local v1, "firstPosition":I
    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 8133
    .local v5, "listPadding":Landroid/graphics/Rect;
    if-lez p1, :cond_3

    .line 8134
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 8135
    .local v3, "lastBottom":I
    add-int v4, v1, v0

    .line 8136
    .local v4, "lastPosition":I
    iget v8, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lt v4, v8, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v3, v8, :cond_2

    :cond_1
    :goto_0
    return v6

    :cond_2
    move v6, v7

    goto :goto_0

    .line 8138
    .end local v3    # "lastBottom":I
    .end local v4    # "lastPosition":I
    :cond_3
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v2

    .line 8139
    .local v2, "firstTop":I
    if-gtz v1, :cond_4

    iget v8, v5, Landroid/graphics/Rect;->top:I

    if-ge v2, v8, :cond_5

    :cond_4
    :goto_1
    return v6

    :cond_5
    move v6, v7

    goto :goto_1
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 9121
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

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
    .line 9277
    instance-of v0, p1, Landroid/widget/AbsListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 1530
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1531
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1533
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 1534
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1536
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1529
    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    .prologue
    .line 9170
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 9171
    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 9172
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 9173
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9174
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 9169
    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2861
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 2862
    .local v1, "count":I
    if-lez v1, :cond_3

    .line 2863
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v6, :cond_2

    .line 2864
    mul-int/lit8 v2, v1, 0x64

    .line 2866
    .local v2, "extent":I
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2867
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2868
    .local v4, "top":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2869
    .local v3, "height":I
    if-lez v3, :cond_0

    .line 2870
    mul-int/lit8 v6, v4, 0x64

    div-int/2addr v6, v3

    add-int/2addr v2, v6

    .line 2873
    :cond_0
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2874
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2875
    .local v0, "bottom":I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2876
    if-lez v3, :cond_1

    .line 2877
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v3

    sub-int/2addr v2, v6

    .line 2880
    :cond_1
    return v2

    .line 2882
    .end local v0    # "bottom":I
    .end local v2    # "extent":I
    .end local v3    # "height":I
    .end local v4    # "top":I
    .end local v5    # "view":Landroid/view/View;
    :cond_2
    const/4 v6, 0x1

    return v6

    .line 2885
    :cond_3
    return v7
.end method

.method protected computeVerticalScrollOffset()I
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 2890
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 2891
    .local v2, "firstPosition":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2892
    .local v0, "childCount":I
    if-ltz v2, :cond_3

    if-lez v0, :cond_3

    .line 2893
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_0

    .line 2894
    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2895
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 2896
    .local v5, "top":I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 2897
    .local v3, "height":I
    if-lez v3, :cond_3

    .line 2898
    mul-int/lit8 v7, v2, 0x64

    mul-int/lit8 v8, v5, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v7, v8

    .line 2899
    iget v8, p0, Landroid/widget/AbsListView;->mScrollY:I

    int-to-float v8, v8

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    iget v9, p0, Landroid/widget/AbsListView;->mItemCount:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    .line 2898
    add-int/2addr v7, v8

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    return v7

    .line 2903
    .end local v3    # "height":I
    .end local v5    # "top":I
    .end local v6    # "view":Landroid/view/View;
    :cond_0
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 2904
    .local v1, "count":I
    if-nez v2, :cond_1

    .line 2905
    const/4 v4, 0x0

    .line 2911
    .local v4, "index":I
    :goto_0
    int-to-float v7, v2

    int-to-float v8, v0

    int-to-float v9, v4

    int-to-float v10, v1

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    return v7

    .line 2906
    .end local v4    # "index":I
    :cond_1
    add-int v7, v2, v0

    if-ne v7, v1, :cond_2

    .line 2907
    move v4, v1

    .restart local v4    # "index":I
    goto :goto_0

    .line 2909
    .end local v4    # "index":I
    :cond_2
    div-int/lit8 v7, v0, 0x2

    add-int v4, v2, v7

    .restart local v4    # "index":I
    goto :goto_0

    .line 2914
    .end local v1    # "count":I
    .end local v4    # "index":I
    :cond_3
    return v10
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2920
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_1

    .line 2921
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2922
    .local v0, "result":I
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v1, :cond_0

    .line 2924
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2929
    :cond_0
    :goto_0
    return v0

    .line 2927
    .end local v0    # "result":I
    :cond_1
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method confirmCheckedPositionsById()V
    .locals 18

    .prologue
    .line 8542
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 8544
    const/4 v2, 0x0

    .line 8545
    .local v2, "checkedCountChanged":Z
    const/4 v9, 0x0

    .local v9, "checkedIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v9, v3, :cond_4

    .line 8546
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 8547
    .local v6, "id":J
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 8549
    .local v5, "lastPos":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    .line 8550
    .local v12, "lastPosId":J
    cmp-long v3, v6, v12

    if-eqz v3, :cond_3

    .line 8552
    add-int/lit8 v3, v5, -0x14

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 8553
    .local v17, "start":I
    add-int/lit8 v3, v5, 0x14

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 8554
    .local v10, "end":I
    const/4 v11, 0x0

    .line 8555
    .local v11, "found":Z
    move/from16 v16, v17

    .local v16, "searchPos":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v10, :cond_0

    .line 8556
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v14

    .line 8557
    .local v14, "searchId":J
    cmp-long v3, v6, v14

    if-nez v3, :cond_2

    .line 8558
    const/4 v11, 0x1

    .line 8559
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 8560
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 8565
    .end local v14    # "searchId":J
    :cond_0
    if-nez v11, :cond_1

    .line 8566
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v6, v7}, Landroid/util/LongSparseArray;->delete(J)V

    .line 8567
    add-int/lit8 v9, v9, -0x1

    .line 8568
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 8569
    const/4 v2, 0x1

    .line 8570
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v3, :cond_1

    .line 8571
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 8572
    const/4 v8, 0x0

    .line 8571
    invoke-virtual/range {v3 .. v8}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 8545
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 8555
    .restart local v10    # "end":I
    .restart local v11    # "found":Z
    .restart local v14    # "searchId":J
    .restart local v16    # "searchPos":I
    .restart local v17    # "start":I
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 8576
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v14    # "searchId":J
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 8580
    .end local v5    # "lastPos":I
    .end local v6    # "id":J
    .end local v12    # "lastPosId":J
    :cond_4
    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_5

    .line 8581
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidate()V

    .line 8540
    :cond_5
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 4096
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;
    .locals 1

    .prologue
    .line 7822
    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    return-object v0
.end method

.method public deferNotifyDataSetChanged()V
    .locals 1

    .prologue
    .line 9424
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 9423
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 18
    .param p1, "ev"    # Landroid/view/DragEvent;

    .prologue
    .line 5510
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    .line 5512
    .local v2, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v5

    .line 5513
    .local v5, "cd":Landroid/content/ClipDescription;
    if-eqz v5, :cond_2

    const-string/jumbo v13, "cropUri"

    invoke-virtual {v5}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 5518
    const/4 v13, 0x1

    if-ne v2, v13, :cond_3

    .line 5519
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    if-gtz v13, :cond_0

    .line 5521
    const/high16 v13, 0x41c80000    # 25.0f

    .line 5522
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    .line 5521
    const/4 v15, 0x1

    .line 5520
    invoke-static {v15, v13, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v13

    .line 5522
    const/high16 v14, 0x3f000000    # 0.5f

    .line 5520
    add-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    .line 5524
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    if-nez v13, :cond_1

    :cond_1
    const/4 v13, 0x1

    return v13

    .line 5514
    :cond_2
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    return v13

    .line 5527
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v13

    float-to-int v11, v13

    .line 5528
    .local v11, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v13

    float-to-int v12, v13

    .line 5529
    .local v12, "y":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v7

    .line 5530
    .local v7, "childCount":I
    const/4 v8, 0x0

    .line 5531
    .local v8, "contentBottom":I
    const/4 v10, 0x0

    .line 5532
    .local v10, "lastChildBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v9

    .line 5536
    .local v9, "count":I
    if-eqz v7, :cond_4

    .line 5537
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    .line 5541
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v13, v9

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-ge v13, v14, :cond_c

    const/4 v3, 0x1

    .line 5543
    .local v3, "canScrollDown":Z
    :goto_0
    if-nez v3, :cond_5

    if-lez v9, :cond_5

    .line 5544
    add-int/lit8 v13, v9, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 5545
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mBottom:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    if-gt v13, v14, :cond_d

    .line 5546
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    if-le v13, v14, :cond_e

    const/4 v3, 0x1

    .line 5550
    .end local v3    # "canScrollDown":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v13, :cond_f

    const/4 v4, 0x1

    .line 5552
    .local v4, "canScrollUp":Z
    :goto_2
    if-nez v4, :cond_6

    .line 5553
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v13

    if-lez v13, :cond_6

    .line 5554
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 5555
    .restart local v6    # "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    if-ge v13, v14, :cond_10

    const/4 v4, 0x1

    .line 5560
    .end local v4    # "canScrollUp":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    if-le v12, v13, :cond_11

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    sub-int v13, v8, v13

    if-ge v12, v13, :cond_11

    .line 5563
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 5564
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5567
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    if-nez v13, :cond_9

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_a

    .line 5568
    :cond_9
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 5571
    :cond_a
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 5572
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 5573
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 5576
    const/4 v13, 0x2

    if-ne v2, v13, :cond_b

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    if-eqz v13, :cond_b

    .line 5577
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 5578
    invoke-virtual/range {p0 .. p1}, Landroid/widget/AbsListView;->resetDragableChildren(Landroid/view/DragEvent;)Z

    .line 5581
    :cond_b
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    return v13

    .line 5541
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 5545
    .restart local v3    # "canScrollDown":Z
    .restart local v6    # "child":Landroid/view/View;
    :cond_d
    const/4 v3, 0x1

    .local v3, "canScrollDown":Z
    goto/16 :goto_1

    .line 5546
    .local v3, "canScrollDown":Z
    :cond_e
    const/4 v3, 0x0

    .local v3, "canScrollDown":Z
    goto/16 :goto_1

    .line 5550
    .end local v3    # "canScrollDown":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 5555
    .restart local v4    # "canScrollUp":Z
    .restart local v6    # "child":Landroid/view/View;
    :cond_10
    const/4 v4, 0x0

    .local v4, "canScrollUp":Z
    goto :goto_3

    .line 5561
    .end local v4    # "canScrollUp":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_11
    if-lez v11, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getRight()I

    move-result v13

    if-gt v11, v13, :cond_7

    if-nez v4, :cond_12

    if-eqz v3, :cond_7

    .line 5585
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    if-nez v13, :cond_13

    .line 5586
    new-instance v13, Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/AbsListView$HoverScrollHandler;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    .line 5588
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v13, :cond_14

    .line 5589
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 5591
    :cond_14
    packed-switch v2, :pswitch_data_0

    .line 5662
    :cond_15
    :goto_4
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    return v13

    .line 5593
    :pswitch_0
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 5594
    if-ltz v12, :cond_16

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    if-gt v12, v13, :cond_16

    .line 5596
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_15

    .line 5597
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 5598
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 5599
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 5600
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 5602
    :cond_16
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    sub-int v13, v8, v13

    if-lt v12, v13, :cond_15

    if-gt v12, v8, :cond_15

    .line 5604
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_15

    .line 5605
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 5606
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 5607
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 5608
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 5614
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v13, :cond_17

    .line 5615
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 5618
    :cond_17
    if-ltz v12, :cond_18

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    if-gt v12, v13, :cond_18

    .line 5620
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_15

    .line 5621
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 5622
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 5623
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 5624
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_4

    .line 5626
    :cond_18
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    sub-int v13, v8, v13

    if-lt v12, v13, :cond_15

    if-gt v12, v8, :cond_15

    .line 5628
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_15

    .line 5629
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 5630
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 5631
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 5632
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_4

    .line 5639
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    if-eqz v13, :cond_19

    .line 5640
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 5641
    invoke-virtual/range {p0 .. p1}, Landroid/widget/AbsListView;->resetDragableChildren(Landroid/view/DragEvent;)Z

    .line 5647
    :cond_19
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 5648
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5650
    :cond_1a
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    .line 5652
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 5653
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 5654
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 5655
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    goto/16 :goto_4

    .line 5591
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

    .line 3530
    const/4 v4, 0x0

    .line 3531
    .local v4, "saveCount":I
    const/4 v7, 0x0

    .line 3532
    .local v7, "trackChildTop":I
    const/4 v2, 0x0

    .line 3533
    .local v2, "firstChildPosition":I
    const/4 v3, 0x0

    .line 3535
    .local v3, "lastChildPosition":I
    iget v8, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v8, v8, 0x22

    const/16 v9, 0x22

    if-ne v8, v9, :cond_0

    const/4 v0, 0x1

    .line 3536
    .local v0, "clipToPadding":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 3537
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3538
    iget v5, p0, Landroid/widget/AbsListView;->mScrollX:I

    .line 3539
    .local v5, "scrollX":I
    iget v6, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 3540
    .local v6, "scrollY":I
    iget v8, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    add-int/2addr v8, v5

    iget v9, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    add-int/2addr v9, v6

    .line 3541
    iget v10, p0, Landroid/widget/AbsListView;->mRight:I

    add-int/2addr v10, v5

    iget v11, p0, Landroid/widget/AbsListView;->mLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int/2addr v10, v11

    .line 3542
    iget v11, p0, Landroid/widget/AbsListView;->mBottom:I

    add-int/2addr v11, v6

    iget v12, p0, Landroid/widget/AbsListView;->mTop:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int/2addr v11, v12

    .line 3540
    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 3543
    iget v8, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v8, v8, -0x23

    iput v8, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    .line 3546
    .end local v5    # "scrollX":I
    .end local v6    # "scrollY":I
    :cond_1
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 3547
    .local v1, "drawSelectorOnTop":Z
    if-nez v1, :cond_2

    .line 3548
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 3551
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3553
    if-eqz v1, :cond_3

    .line 3554
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 3557
    :cond_3
    if-eqz v0, :cond_4

    .line 3558
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3559
    iget v8, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    or-int/lit8 v8, v8, 0x22

    iput v8, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    .line 3563
    :cond_4
    iget-boolean v8, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    if-eqz v8, :cond_8

    iget-boolean v8, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    if-nez v8, :cond_8

    .line 3564
    iget v8, p0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    if-nez v8, :cond_5

    iget v8, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    if-nez v8, :cond_5

    .line 3565
    return-void

    .line 3567
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 3568
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v3

    .line 3570
    iget v8, p0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    if-lt v8, v2, :cond_7

    iget v8, p0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    if-gt v8, v3, :cond_7

    .line 3571
    iget v8, p0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 3572
    iget-object v8, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    if-eqz v8, :cond_6

    .line 3573
    iget-object v8, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v7

    .line 3575
    :cond_6
    iget v8, p0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    add-int/2addr v8, v7

    iput v8, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    .line 3578
    :cond_7
    iget v8, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    iget v9, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    if-ge v8, v9, :cond_9

    iget v8, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    :goto_0
    iput v8, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    .line 3579
    iget v8, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    iget v9, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    if-le v8, v9, :cond_a

    iget v8, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    :goto_1
    iput v8, p0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    .line 3581
    iget-object v8, p0, Landroid/widget/AbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    iget v9, p0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    iget v10, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    iget v11, p0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    iget v12, p0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 3582
    iget-object v8, p0, Landroid/widget/AbsListView;->mSemDragBlockImage:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Landroid/widget/AbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3583
    iget-object v8, p0, Landroid/widget/AbsListView;->mSemDragBlockImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3529
    :cond_8
    return-void

    .line 3578
    :cond_9
    iget v8, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    goto :goto_0

    .line 3579
    :cond_a
    iget v8, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    goto :goto_1
.end method

.method public dispatchDrawableHotspotChanged(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 4537
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 24
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 5176
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 5179
    .local v4, "action":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHoveringEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 5180
    :cond_0
    invoke-direct/range {p0 .. p1}, Landroid/widget/AbsListView;->onHoverDrawableState(Landroid/view/MotionEvent;)V

    .line 5185
    :cond_1
    invoke-static {}, Landroid/text/MultiSelection;->isTextViewHovered()Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mNewTextViewHoverState:Z

    .line 5188
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mNewTextViewHoverState:Z

    move/from16 v19, v0

    if-nez v19, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mOldTextViewHoverState:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    .line 5189
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    move/from16 v19, v0

    .line 5188
    if-eqz v19, :cond_7

    .line 5189
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v19

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 5190
    :cond_2
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsNeedPenSelectIconSet:Z

    .line 5196
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mNewTextViewHoverState:Z

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mOldTextViewHoverState:Z

    .line 5199
    const/16 v19, 0x9

    move/from16 v0, v19

    if-ne v4, v0, :cond_d

    .line 5200
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v16

    .line 5202
    .local v16, "toolType":I
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    .line 5205
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isHoveringUIEnabled()Z

    move-result v19

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 5210
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    const/16 v19, 0x2

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 5212
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    .line 5213
    const-string/jumbo v20, "pen_hovering"

    const/16 v21, 0x0

    .line 5212
    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    .line 5213
    const/16 v20, 0x1

    .line 5212
    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    const/4 v13, 0x1

    .line 5214
    .local v13, "isHoveringOn":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    .line 5215
    const-string/jumbo v20, "car_mode_on"

    const/16 v21, 0x0

    const/16 v22, -0x3

    .line 5214
    invoke-static/range {v19 .. v22}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v19

    .line 5215
    const/16 v20, 0x1

    .line 5214
    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    const/4 v12, 0x1

    .line 5217
    .local v12, "isCarModeOn":Z
    :goto_3
    if-eqz v13, :cond_3

    if-eqz v12, :cond_4

    .line 5218
    :cond_3
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    .line 5221
    :cond_4
    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    .line 5229
    .end local v12    # "isCarModeOn":Z
    .end local v13    # "isHoveringOn":Z
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    const/16 v19, 0x3

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 5230
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    .line 5250
    .end local v16    # "toolType":I
    :cond_6
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    move/from16 v19, v0

    if-nez v19, :cond_13

    .line 5251
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    return v19

    .line 5193
    :cond_7
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsNeedPenSelectIconSet:Z

    goto/16 :goto_0

    .line 5206
    .restart local v16    # "toolType":I
    :cond_8
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    goto/16 :goto_1

    .line 5212
    :cond_9
    const/4 v13, 0x0

    .restart local v13    # "isHoveringOn":Z
    goto :goto_2

    .line 5214
    :cond_a
    const/4 v12, 0x0

    .restart local v12    # "isCarModeOn":Z
    goto :goto_3

    .line 5222
    :cond_b
    const/16 v19, 0x2

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v19

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 5223
    :cond_c
    const/16 v19, 0x4e35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 5224
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    goto :goto_4

    .line 5232
    .end local v12    # "isCarModeOn":Z
    .end local v13    # "isHoveringOn":Z
    .end local v16    # "toolType":I
    :cond_d
    const/16 v19, 0x7

    move/from16 v0, v19

    if-ne v4, v0, :cond_12

    .line 5233
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_10

    .line 5234
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsNeedPenSelectIconSet:Z

    move/from16 v19, v0

    .line 5233
    if-eqz v19, :cond_11

    .line 5235
    :cond_f
    :goto_6
    const/16 v19, 0x4e35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 5236
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_5

    .line 5234
    :cond_10
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v19

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    goto :goto_6

    .line 5237
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v19

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    .line 5238
    const/16 v19, 0x4e21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 5239
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_5

    .line 5242
    :cond_12
    const/16 v19, 0xa

    move/from16 v0, v19

    if-ne v4, v0, :cond_6

    .line 5243
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 5244
    const/16 v19, 0x4e21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 5245
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_5

    .line 5255
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v17, v0

    .line 5256
    .local v17, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v18, v0

    .line 5257
    .local v18, "y":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v8

    .line 5258
    .local v8, "childCount":I
    const/4 v10, 0x0

    .line 5259
    .local v10, "contentTop":I
    const/4 v9, 0x0

    .line 5260
    .local v9, "contentBottom":I
    const/4 v15, 0x0

    .line 5261
    .local v15, "lastChildBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v11

    .line 5266
    .local v11, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    if-nez v19, :cond_14

    .line 5267
    new-instance v19, Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$HoverScrollHandler;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    .line 5270
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    move/from16 v19, v0

    if-lez v19, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    move/from16 v19, v0

    if-gtz v19, :cond_16

    .line 5272
    :cond_15
    const/high16 v19, 0x41c80000    # 25.0f

    .line 5273
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    .line 5272
    const/16 v21, 0x1

    .line 5271
    move/from16 v0, v21

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v19

    .line 5273
    const/high16 v20, 0x3f000000    # 0.5f

    .line 5271
    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    .line 5276
    const/high16 v19, 0x41c80000    # 25.0f

    .line 5277
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    .line 5276
    const/16 v21, 0x1

    .line 5275
    move/from16 v0, v21

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v19

    .line 5277
    const/high16 v20, 0x3f000000    # 0.5f

    .line 5275
    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    .line 5281
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    move/from16 v19, v0

    if-eqz v19, :cond_22

    .line 5282
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 5283
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    sub-int v9, v19, v20

    .line 5290
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v19, v0

    add-int v19, v19, v11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_23

    const/4 v5, 0x1

    .line 5292
    .local v5, "canScrollDown":Z
    :goto_8
    if-nez v5, :cond_17

    if-lez v11, :cond_17

    .line 5293
    add-int/lit8 v19, v11, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5294
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mBottom:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_24

    .line 5295
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_25

    const/4 v5, 0x1

    .line 5299
    .end local v5    # "canScrollDown":Z
    .end local v7    # "child":Landroid/view/View;
    :cond_17
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v19, v0

    if-lez v19, :cond_26

    const/4 v6, 0x1

    .line 5301
    .local v6, "canScrollUp":Z
    :goto_a
    if-nez v6, :cond_18

    .line 5302
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v19

    if-lez v19, :cond_18

    .line 5303
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5304
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_27

    const/4 v6, 0x1

    .line 5308
    .end local v6    # "canScrollUp":Z
    .end local v7    # "child":Landroid/view/View;
    :cond_18
    :goto_b
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_28

    const/4 v14, 0x1

    .line 5310
    .local v14, "isPossibleTooltype":Z
    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    move/from16 v19, v0

    add-int v19, v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    move/from16 v19, v0

    sub-int v19, v9, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_29

    .line 5317
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v19

    if-eqz v19, :cond_1a

    .line 5318
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5319
    const/16 v19, 0x4e21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 5322
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v19

    if-eqz v19, :cond_1b

    .line 5323
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5326
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    move/from16 v19, v0

    add-int v19, v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_33

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    move/from16 v19, v0

    sub-int v19, v9, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_33

    .line 5327
    :cond_1c
    :goto_d
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 5330
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    move/from16 v19, v0

    if-nez v19, :cond_1e

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-eqz v19, :cond_1f

    .line 5331
    :cond_1e
    const/16 v19, 0x4e21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 5333
    :cond_1f
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 5334
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 5335
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 5336
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    .line 5338
    const/16 v19, 0xa

    move/from16 v0, v19

    if-ne v4, v0, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    move/from16 v19, v0

    if-eqz v19, :cond_20

    .line 5339
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    .line 5340
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v19, v0

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_20

    .line 5341
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 5346
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mQCstate:I

    move/from16 v19, v0

    if-eqz v19, :cond_21

    .line 5347
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mQCstate:I

    .line 5348
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->postInvalidateOnAnimation()V

    .line 5351
    :cond_21
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    return v19

    .line 5285
    .end local v14    # "isPossibleTooltype":Z
    :cond_22
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/AbsListView;->mExtraPaddingInTopHoverArea:I

    .line 5286
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mExtraPaddingInBottomHoverArea:I

    move/from16 v20, v0

    sub-int v9, v19, v20

    goto/16 :goto_7

    .line 5290
    :cond_23
    const/4 v5, 0x0

    goto/16 :goto_8

    .line 5294
    .restart local v5    # "canScrollDown":Z
    .restart local v7    # "child":Landroid/view/View;
    :cond_24
    const/4 v5, 0x1

    .local v5, "canScrollDown":Z
    goto/16 :goto_9

    .line 5295
    .local v5, "canScrollDown":Z
    :cond_25
    const/4 v5, 0x0

    .local v5, "canScrollDown":Z
    goto/16 :goto_9

    .line 5299
    .end local v5    # "canScrollDown":Z
    .end local v7    # "child":Landroid/view/View;
    :cond_26
    const/4 v6, 0x0

    goto/16 :goto_a

    .line 5304
    .restart local v6    # "canScrollUp":Z
    .restart local v7    # "child":Landroid/view/View;
    :cond_27
    const/4 v6, 0x0

    .local v6, "canScrollUp":Z
    goto/16 :goto_b

    .line 5308
    .end local v6    # "canScrollUp":Z
    .end local v7    # "child":Landroid/view/View;
    :cond_28
    const/4 v14, 0x0

    .restart local v14    # "isPossibleTooltype":Z
    goto/16 :goto_c

    .line 5310
    :cond_29
    if-lez v17, :cond_19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getRight()I

    move-result v19

    move/from16 v0, v17

    move/from16 v1, v19

    if-gt v0, v1, :cond_19

    .line 5311
    if-nez v6, :cond_2a

    if-eqz v5, :cond_19

    .line 5312
    :cond_2a
    move/from16 v0, v18

    if-lt v0, v10, :cond_2b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    move/from16 v19, v0

    add-int v19, v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_2b

    if-eqz v6, :cond_31

    .line 5313
    :cond_2b
    :goto_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    move/from16 v19, v0

    sub-int v19, v9, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_2c

    move/from16 v0, v18

    if-gt v0, v9, :cond_2c

    if-eqz v5, :cond_32

    .line 5314
    :cond_2c
    :goto_f
    if-eqz v14, :cond_2d

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v19

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_19

    .line 5315
    :cond_2d
    if-eqz v14, :cond_19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isLockScreenMode()Z

    move-result v19

    .line 5310
    if-nez v19, :cond_19

    .line 5315
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    move/from16 v19, v0

    if-eqz v19, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v19

    .line 5310
    if-nez v19, :cond_19

    .line 5354
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    move/from16 v19, v0

    if-nez v19, :cond_2f

    .line 5355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 5356
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2f

    .line 5357
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    .line 5358
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 5363
    :cond_2f
    packed-switch v4, :pswitch_data_0

    .line 5497
    :cond_30
    :goto_10
    :pswitch_0
    const/16 v19, 0x1

    return v19

    .line 5312
    :cond_31
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    move/from16 v19, v0

    .line 5310
    if-nez v19, :cond_19

    goto/16 :goto_e

    .line 5313
    :cond_32
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    move/from16 v19, v0

    .line 5310
    if-nez v19, :cond_19

    goto/16 :goto_f

    .line 5326
    :cond_33
    if-lez v17, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getRight()I

    move-result v19

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_1d

    goto/16 :goto_d

    .line 5365
    :pswitch_1
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 5367
    move/from16 v0, v18

    if-lt v0, v10, :cond_34

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    move/from16 v19, v0

    add-int v19, v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_34

    .line 5369
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v19

    if-nez v19, :cond_30

    .line 5370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 5371
    const/16 v19, 0x4e2b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 5373
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 5374
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 5377
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->isQCSupported()Z

    move-result v19

    if-eqz v19, :cond_30

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v19

    if-eqz v19, :cond_30

    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->canScrollVertically(I)Z

    move-result v19

    if-eqz v19, :cond_30

    .line 5378
    const/16 v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/widget/AbsListView;->setupQuickController(I)V

    .line 5379
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mQCstate:I

    goto/16 :goto_10

    .line 5382
    :cond_34
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    move/from16 v19, v0

    sub-int v19, v9, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_30

    move/from16 v0, v18

    if-gt v0, v9, :cond_30

    .line 5384
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v19

    if-nez v19, :cond_30

    .line 5385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 5386
    const/16 v19, 0x4e2f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 5388
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 5389
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 5392
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->isQCSupported()Z

    move-result v19

    if-eqz v19, :cond_30

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v19

    if-eqz v19, :cond_30

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->canScrollVertically(I)Z

    move-result v19

    if-eqz v19, :cond_30

    .line 5393
    const/16 v19, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/widget/AbsListView;->setupQuickController(I)V

    .line 5394
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mQCstate:I

    goto/16 :goto_10

    .line 5402
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    move/from16 v19, v0

    if-nez v19, :cond_35

    .line 5403
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 5404
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 5405
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    return v19

    .line 5408
    :cond_35
    move/from16 v0, v18

    if-lt v0, v10, :cond_38

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    move/from16 v19, v0

    add-int v19, v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_38

    .line 5410
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v19

    if-nez v19, :cond_30

    .line 5411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 5414
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_36

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_37

    .line 5415
    :cond_36
    const/16 v19, 0x4e2b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 5418
    :cond_37
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 5419
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 5422
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->isQCSupported()Z

    move-result v19

    if-eqz v19, :cond_30

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mQCstate:I

    move/from16 v19, v0

    if-nez v19, :cond_30

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v19

    if-eqz v19, :cond_30

    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->canScrollVertically(I)Z

    move-result v19

    if-eqz v19, :cond_30

    .line 5423
    const/16 v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/widget/AbsListView;->setupQuickController(I)V

    .line 5424
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mQCstate:I

    goto/16 :goto_10

    .line 5427
    :cond_38
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    move/from16 v19, v0

    sub-int v19, v9, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_3b

    move/from16 v0, v18

    if-gt v0, v9, :cond_3b

    .line 5429
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v19

    if-nez v19, :cond_30

    .line 5430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 5433
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_39

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3a

    .line 5434
    :cond_39
    const/16 v19, 0x4e2f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 5437
    :cond_3a
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    .line 5438
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 5441
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->isQCSupported()Z

    move-result v19

    if-eqz v19, :cond_30

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mQCstate:I

    move/from16 v19, v0

    if-nez v19, :cond_30

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v19

    if-eqz v19, :cond_30

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->canScrollVertically(I)Z

    move-result v19

    if-eqz v19, :cond_30

    .line 5442
    const/16 v19, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/widget/AbsListView;->setupQuickController(I)V

    .line 5443
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mQCstate:I

    goto/16 :goto_10

    .line 5448
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v19

    if-eqz v19, :cond_3c

    .line 5449
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5452
    :cond_3c
    const/16 v19, 0x4e21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 5454
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 5455
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 5456
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 5457
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 5458
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsHoverScrolled:Z

    .line 5459
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    goto/16 :goto_10

    .line 5465
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v19

    if-eqz v19, :cond_3d

    .line 5466
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 5469
    :cond_3d
    const/16 v19, 0x4e21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    .line 5471
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    .line 5472
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    .line 5473
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 5474
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    .line 5475
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    .line 5478
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mQCstate:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3e

    .line 5482
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->QC_ICON_HIDE_DELAY:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 5485
    :cond_3e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    move/from16 v19, v0

    if-eqz v19, :cond_3f

    .line 5486
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    .line 5487
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v19, v0

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_3f

    .line 5488
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 5492
    :cond_3f
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    return v19

    .line 5363
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
    .line 4531
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 6170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v1, v0

    .line 6171
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v2, v0

    .line 6172
    .local v2, "y":I
    const/4 v3, 0x0

    .line 6173
    .local v3, "contentTop":I
    const/4 v4, 0x0

    .line 6174
    .local v4, "contentBottom":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 6175
    .local v6, "action":I
    const/4 v5, 0x0

    .line 6177
    .local v5, "needToScroll":Z
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 6178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    .line 6181
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    if-nez v0, :cond_1

    .line 6182
    new-instance v0, Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$HoverScrollHandler;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    .line 6185
    :cond_1
    invoke-static {}, Landroid/text/MultiSelection;->getIsMultiSelectingText()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    .line 6186
    invoke-static {}, Landroid/text/MultiSelection;->isNeedToScroll()Z

    move-result v5

    .line 6188
    .local v5, "needToScroll":Z
    const/16 v0, 0xd3

    if-ne v6, v0, :cond_2

    .line 6189
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    .line 6190
    iput v1, p0, Landroid/widget/AbsListView;->mTouchdownX:I

    .line 6191
    iput v2, p0, Landroid/widget/AbsListView;->mTouchdownY:I

    .line 6192
    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 6193
    const-string/jumbo v9, "car_mode_on"

    const/4 v10, 0x0

    const/4 v11, -0x3

    .line 6192
    invoke-static {v0, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 6193
    const/4 v9, 0x1

    .line 6192
    if-ne v0, v9, :cond_7

    const/4 v8, 0x1

    .line 6195
    .local v8, "isCarModeOn":Z
    :goto_0
    if-eqz v8, :cond_2

    .line 6196
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    .line 6200
    .end local v8    # "isCarModeOn":Z
    :cond_2
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    if-eqz v0, :cond_3

    .line 6201
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    .line 6204
    :cond_3
    iget v0, p0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    if-lez v0, :cond_4

    iget v0, p0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    if-gtz v0, :cond_5

    .line 6206
    :cond_4
    const/high16 v0, 0x41c80000    # 25.0f

    .line 6207
    iget-object v9, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 6206
    const/4 v10, 0x1

    .line 6205
    invoke-static {v10, v0, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 6207
    const/high16 v9, 0x3f000000    # 0.5f

    .line 6205
    add-float/2addr v0, v9

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    .line 6210
    const/high16 v0, 0x41c80000    # 25.0f

    .line 6211
    iget-object v9, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 6210
    const/4 v10, 0x1

    .line 6209
    invoke-static {v10, v0, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 6211
    const/high16 v9, 0x3f000000    # 0.5f

    .line 6209
    add-float/2addr v0, v9

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    .line 6214
    :cond_5
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    if-eqz v0, :cond_8

    .line 6215
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 6216
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    iget-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v0, v9

    .line 6222
    :goto_1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    if-eqz v0, :cond_9

    if-lt v2, v3, :cond_6

    if-le v2, v4, :cond_9

    .line 6223
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v9, 0x1

    if-eq v0, v9, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v9, 0xd4

    if-eq v0, v9, :cond_9

    .line 6224
    const/4 v0, 0x1

    return v0

    .line 6192
    :cond_7
    const/4 v8, 0x0

    goto :goto_0

    .line 6218
    :cond_8
    const/4 v3, 0x0

    .line 6219
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    goto :goto_1

    .line 6227
    :cond_9
    sparse-switch v6, :sswitch_data_0

    .line 6400
    :cond_a
    :goto_2
    :sswitch_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 6229
    :sswitch_1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mWindowFocusChanged:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mWindowFocusChanged:Z

    .line 6231
    :cond_b
    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsSupportGotoTop()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    const/4 v9, 0x2

    if-eq v0, v9, :cond_c

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 6233
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 6235
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    int-to-float v9, v1

    int-to-float v10, v2

    invoke-virtual {v0, v9, v10}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 6236
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    const v9, 0x10100a7

    const v10, 0x101009e

    const v11, 0x10100a1

    filled-new-array {v9, v10, v11}, [I

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 6237
    const/4 v0, 0x1

    return v0

    .line 6240
    :cond_c
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v9, 0x3

    if-ne v0, v9, :cond_f

    .line 6241
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsCtrlMultiSelection:Z

    .line 6243
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    .line 6244
    iput v1, p0, Landroid/widget/AbsListView;->mTouchdownX:I

    .line 6245
    iput v2, p0, Landroid/widget/AbsListView;->mTouchdownY:I

    .line 6246
    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 6247
    const-string/jumbo v9, "car_mode_on"

    const/4 v10, 0x0

    const/4 v11, -0x3

    .line 6246
    invoke-static {v0, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 6247
    const/4 v9, 0x1

    .line 6246
    if-ne v0, v9, :cond_e

    const/4 v8, 0x1

    .line 6249
    .restart local v8    # "isCarModeOn":Z
    :goto_3
    if-eqz v8, :cond_d

    .line 6250
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    .line 6252
    :cond_d
    const/4 v0, 0x1

    return v0

    .line 6246
    .end local v8    # "isCarModeOn":Z
    :cond_e
    const/4 v8, 0x0

    goto :goto_3

    .line 6256
    :cond_f
    iget v0, p0, Landroid/widget/AbsListView;->mQCstate:I

    const/4 v9, 0x1

    if-ne v0, v9, :cond_a

    .line 6257
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsQCShown:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/widget/AbsListView;->mQCRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 6258
    iget-object v0, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 6259
    iget-object v0, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 6261
    :cond_10
    iget-object v0, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 6262
    iget-object v0, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 6266
    :cond_11
    iget-object v0, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    .line 6268
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/AbsListView;->mQCstate:I

    .line 6269
    invoke-virtual {p0}, Landroid/widget/AbsListView;->postInvalidateOnAnimation()V

    .line 6270
    const/4 v0, 0x1

    return v0

    .line 6273
    :cond_12
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mQCstate:I

    goto/16 :goto_2

    .line 6282
    :sswitch_2
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsCtrlMultiSelection:Z

    if-eqz v0, :cond_13

    move-object v0, p0

    .line 6283
    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->semMultiSelection(IIIIZ)V

    .line 6284
    const/4 v0, 0x1

    return v0

    .line 6287
    :cond_13
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    if-eqz v0, :cond_14

    .line 6288
    const/4 v0, 0x1

    invoke-direct {p0, v1, v2, v0}, Landroid/widget/AbsListView;->updateLongPressMultiSelection(IIZ)V

    .line 6292
    :cond_14
    iget v0, p0, Landroid/widget/AbsListView;->mQCstate:I

    const/4 v9, 0x2

    if-ne v0, v9, :cond_15

    .line 6294
    const/4 v0, 0x1

    return v0

    .line 6296
    :cond_15
    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsSupportGotoTop()Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    const/4 v9, 0x2

    if-ne v0, v9, :cond_a

    .line 6297
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_16

    .line 6298
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    .line 6299
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->semAutoHide(I)V

    .line 6300
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v9, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 6302
    :cond_16
    const/4 v0, 0x1

    return v0

    :sswitch_3
    move-object v0, p0

    .line 6307
    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->semMultiSelection(IIIIZ)V

    goto/16 :goto_2

    .line 6311
    :sswitch_4
    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsSupportGotoTop()Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-eqz v0, :cond_18

    .line 6312
    iget v0, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    const/4 v9, 0x2

    if-ne v0, v9, :cond_17

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    .line 6314
    :cond_17
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v9, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 6319
    :cond_18
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    if-eqz v0, :cond_19

    .line 6320
    iget v0, p0, Landroid/widget/AbsListView;->mSemDragEndX:I

    iget v9, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    invoke-direct {p0, v0, v9}, Landroid/widget/AbsListView;->endLongPressMultiSelection(II)V

    .line 6325
    :cond_19
    :sswitch_5
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsCtrlMultiSelection:Z

    if-eqz v0, :cond_1c

    .line 6326
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    if-nez v0, :cond_1a

    .line 6327
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    .line 6329
    :cond_1a
    invoke-direct {p0, v6, v1, v2}, Landroid/widget/AbsListView;->semMultiSelectionEnd(III)V

    .line 6330
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsCtrlMultiSelection:Z

    .line 6331
    const/4 v0, 0x1

    return v0

    .line 6327
    :cond_1b
    const/4 v0, 0x1

    goto :goto_4

    .line 6334
    :cond_1c
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    if-eqz v0, :cond_1d

    .line 6335
    invoke-direct {p0, v1, v2}, Landroid/widget/AbsListView;->endLongPressMultiSelection(II)V

    .line 6340
    :cond_1d
    iget v0, p0, Landroid/widget/AbsListView;->mQCstate:I

    const/4 v9, 0x2

    if-ne v0, v9, :cond_20

    .line 6342
    iget-object v0, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 6343
    iget-object v0, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 6346
    :cond_1e
    iget-object v0, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 6347
    iget-object v0, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    .line 6350
    :cond_1f
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    .line 6353
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mQCstate:I

    .line 6354
    invoke-virtual {p0}, Landroid/widget/AbsListView;->postInvalidateOnAnimation()V

    .line 6355
    const/4 v0, 0x1

    return v0

    .line 6360
    :cond_20
    :sswitch_6
    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsSupportGotoTop()Z

    move-result v0

    if-eqz v0, :cond_23

    iget v0, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    const/4 v9, 0x2

    if-ne v0, v9, :cond_23

    .line 6361
    const-string/jumbo v0, "AbsListView"

    const-string/jumbo v9, " GTP pressed and up"

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6364
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 6365
    const-string/jumbo v0, "AbsListView"

    const-string/jumbo v9, " can scroll top "

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6366
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v7

    .line 6368
    .local v7, "childCount":I
    if-lez v7, :cond_21

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    if-ge v7, v0, :cond_21

    .line 6369
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 6372
    :cond_21
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mSemCanGoFuther:Z

    .line 6373
    new-instance v0, Landroid/widget/AbsListView$12;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$12;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 6380
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    invoke-virtual {v0, v9, v10}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 6381
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x43fa0000    # 500.0f

    div-float v9, v10, v9

    int-to-float v10, v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-virtual {v0, v9, v10}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 6382
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    invoke-virtual {p0, v9, v10, v0, v11}, Landroid/widget/AbsListView;->invalidate(IIII)V

    .line 6386
    .end local v7    # "childCount":I
    :cond_22
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->semAutoHide(I)V

    .line 6387
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v9, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 6388
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->playSoundEffect(I)V

    .line 6390
    const/4 v0, 0x1

    return v0

    .line 6393
    :cond_23
    invoke-direct {p0, v6, v1, v2}, Landroid/widget/AbsListView;->semMultiSelectionEnd(III)V

    goto/16 :goto_2

    .line 6227
    nop

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
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x0

    .line 7197
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 7198
    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v10, :cond_4

    .line 7199
    iget v5, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 7200
    .local v5, "scrollY":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getClipToPadding()Z

    move-result v0

    .line 7206
    .local v0, "clipToPadding":Z
    if-eqz v0, :cond_6

    .line 7207
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v10

    iget v11, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int v8, v10, v11

    .line 7208
    .local v8, "width":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    iget v11, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int v3, v10, v11

    .line 7209
    .local v3, "height":I
    iget v6, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    .line 7210
    .local v6, "translateX":I
    iget v7, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    .line 7217
    .local v7, "translateY":I
    :goto_0
    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v10}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v10

    if-nez v10, :cond_1

    .line 7218
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 7220
    .local v4, "restoreCount":I
    add-int v10, v6, v8

    iget-object v11, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v11}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v11

    add-int/2addr v11, v7

    .line 7219
    invoke-virtual {p1, v6, v7, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 7221
    iget v10, p0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v10, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int v2, v10, v7

    .line 7222
    .local v2, "edgeY":I
    int-to-float v10, v6

    int-to-float v11, v2

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7223
    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v10, v8, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 7224
    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v10, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 7225
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateTopGlow()V

    .line 7227
    :cond_0
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 7229
    .end local v2    # "edgeY":I
    .end local v4    # "restoreCount":I
    :cond_1
    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v10}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v10

    if-nez v10, :cond_4

    .line 7230
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 7231
    .restart local v4    # "restoreCount":I
    add-int v10, v7, v3

    iget-object v11, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v11}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v11

    sub-int/2addr v10, v11

    .line 7232
    add-int v11, v6, v8

    add-int v12, v7, v3

    .line 7231
    invoke-virtual {p1, v6, v10, v11, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 7233
    neg-int v10, v8

    add-int v1, v10, v6

    .line 7234
    .local v1, "edgeX":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    iget v11, p0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v11, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 7235
    if-eqz v0, :cond_2

    iget v9, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    .line 7234
    :cond_2
    sub-int v2, v10, v9

    .line 7236
    .restart local v2    # "edgeY":I
    int-to-float v9, v1

    int-to-float v10, v2

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7237
    const/high16 v9, 0x43340000    # 180.0f

    int-to-float v10, v8

    const/4 v11, 0x0

    invoke-virtual {p1, v9, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 7238
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9, v8, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 7239
    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 7240
    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateBottomGlow()V

    .line 7242
    :cond_3
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 7248
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
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawQuickController(Landroid/graphics/Canvas;)V

    .line 7250
    iget-boolean v9, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v9, :cond_5

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawGoToTop(Landroid/graphics/Canvas;)V

    .line 7196
    :cond_5
    return-void

    .line 7212
    .restart local v0    # "clipToPadding":Z
    .restart local v5    # "scrollY":I
    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v8

    .line 7213
    .restart local v8    # "width":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    .line 7214
    .restart local v3    # "height":I
    const/4 v6, 0x0

    .line 7215
    .restart local v6    # "translateX":I
    const/4 v7, 0x0

    .restart local v7    # "translateY":I
    goto/16 :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 3848
    invoke-super {p0}, Landroid/widget/AdapterView;->drawableStateChanged()V

    .line 3849
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 3847
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 3
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 10291
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 10293
    const-string/jumbo v1, "drawing:cacheColorHint"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCacheColorHint()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 10294
    const-string/jumbo v1, "list:fastScrollEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 10295
    const-string/jumbo v1, "list:scrollingCacheEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isScrollingCacheEnabled()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 10296
    const-string/jumbo v1, "list:smoothScrollbarEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isSmoothScrollbarEnabled()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 10297
    const-string/jumbo v1, "list:stackFromBottom"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isStackFromBottom()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 10298
    const-string/jumbo v1, "list:textFilterEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 10300
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 10301
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 10302
    const-string/jumbo v1, "selectedView"

    invoke-virtual {p1, v1}, Landroid/view/ViewHierarchyEncoder;->addPropertyKey(Ljava/lang/String;)V

    .line 10303
    invoke-virtual {v0, p1}, Landroid/view/View;->encode(Landroid/view/ViewHierarchyEncoder;)V

    .line 10290
    :cond_0
    return-void
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
    .line 10337
    invoke-super {p0}, Landroid/widget/AdapterView;->finalize()V

    .line 10333
    return-void
.end method

.method findClosestMotionRow(I)I
    .locals 3
    .param p1, "y"    # I

    .prologue
    const/4 v2, -0x1

    .line 8395
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 8396
    .local v0, "childCount":I
    if-nez v0, :cond_0

    .line 8397
    return v2

    .line 8400
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v1

    .line 8401
    .local v1, "motionRow":I
    if-eq v1, v2, :cond_1

    .end local v1    # "motionRow":I
    :goto_0
    return v1

    .restart local v1    # "motionRow":I
    :cond_1
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

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
    .line 2411
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAccessibilityViewId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2412
    return-object p0

    .line 2414
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public fling(I)V
    .locals 1
    .param p1, "velocityY"    # I

    .prologue
    .line 7143
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 7144
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 7146
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 7147
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 7142
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 9261
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    .line 9262
    const/4 v2, -0x2

    const/4 v3, 0x0

    .line 9261
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 9271
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 9267
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 9272
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2247
    const-class v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "focusedView"    # Landroid/view/View;

    .prologue
    .line 3074
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3075
    .local v0, "viewParent":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    if-eq v0, p0, :cond_0

    move-object p1, v0

    .line 3076
    check-cast p1, Landroid/view/View;

    .line 3077
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 3080
    :cond_0
    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 3081
    const/4 v1, 0x0

    return-object v1

    .line 3084
    :cond_1
    return-object p1
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 2951
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 2952
    .local v1, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 2953
    .local v2, "fadeEdge":F
    if-nez v1, :cond_0

    .line 2954
    return v2

    .line 2956
    :cond_0
    iget v5, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_1

    .line 2957
    const/high16 v5, 0x3f800000    # 1.0f

    return v5

    .line 2960
    :cond_1
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 2961
    .local v0, "bottom":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    .line 2962
    .local v4, "height":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 2963
    .local v3, "fadeLength":F
    iget v5, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int v5, v4, v5

    if-le v0, v5, :cond_2

    .line 2964
    sub-int v5, v0, v4

    iget v6, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v2, v5, v3

    .line 2963
    .end local v2    # "fadeEdge":F
    :cond_2
    return v2
.end method

.method protected getBottomPaddingOffset()I
    .locals 2

    .prologue
    .line 3610
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9339
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 1447
    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1511
    iget v4, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v4, :cond_1

    .line 1512
    :cond_0
    new-array v4, v5, [J

    return-object v4

    .line 1511
    :cond_1
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_0

    .line 1515
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1516
    .local v2, "idStates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1517
    .local v0, "count":I
    new-array v3, v0, [J

    .line 1519
    .local v3, "ids":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1520
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 1519
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1523
    :cond_2
    return-object v3
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1479
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1480
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    return v0

    .line 1483
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 1496
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 1497
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    return-object v0

    .line 1499
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 1759
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 4343
    iget-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 2480
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2481
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 2484
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2485
    invoke-virtual {p0, v0, p1}, Landroid/widget/AbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2479
    :goto_0
    return-void

    .line 2488
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 8337
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 8327
    const/4 v0, 0x0

    return v0
.end method

.method getHeightForPosition(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 10225
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    .line 10226
    .local v1, "firstVisiblePosition":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 10227
    .local v0, "childCount":I
    sub-int v3, p1, v1

    .line 10228
    .local v3, "index":I
    if-ltz v3, :cond_0

    if-ge v3, v0, :cond_0

    .line 10230
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 10231
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    return v5

    .line 10234
    .end local v4    # "view":Landroid/view/View;
    :cond_0
    iget-object v5, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v5}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v4

    .line 10235
    .restart local v4    # "view":Landroid/view/View;
    iget v5, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 10236
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 10237
    .local v2, "height":I
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, v4, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 10238
    return v2
.end method

.method protected getLeftPaddingOffset()I
    .locals 2

    .prologue
    .line 3595
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 3160
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 3172
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 3184
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 3148
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightPaddingOffset()I
    .locals 2

    .prologue
    .line 3605
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 3132
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 3133
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 3135
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getSelectionModeForAccessibility()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2272
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChoiceMode()I

    move-result v0

    .line 2273
    .local v0, "choiceMode":I
    packed-switch v0, :pswitch_data_0

    .line 2282
    return v1

    .line 2275
    :pswitch_0
    return v1

    .line 2277
    :pswitch_1
    const/4 v1, 0x1

    return v1

    .line 2280
    :pswitch_2
    const/4 v1, 0x2

    return v1

    .line 2273
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
    .line 3771
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 9306
    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2806
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2807
    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    .line 2809
    :cond_0
    return-object v1
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2934
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2935
    .local v0, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 2936
    .local v1, "fadeEdge":F
    if-nez v0, :cond_0

    .line 2937
    return v1

    .line 2939
    :cond_0
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v4, :cond_1

    .line 2940
    const/high16 v4, 0x3f800000    # 1.0f

    return v4

    .line 2943
    :cond_1
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 2944
    .local v3, "top":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 2945
    .local v2, "fadeLength":F
    iget v4, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    if-ge v3, v4, :cond_2

    iget v4, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    .end local v1    # "fadeEdge":F
    :cond_2
    return v1
.end method

.method protected getTopPaddingOffset()I
    .locals 2

    .prologue
    .line 3600
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getTouchSlop()I
    .locals 1

    .prologue
    .line 1230
    iget v0, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    return v0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 9301
    iget v0, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    return v0
.end method

.method public getVerticalScrollbarWidth()I
    .locals 2

    .prologue
    .line 2099
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2100
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v1}, Landroid/widget/FastScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 2101
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v0}, Landroid/widget/SemFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2102
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v1}, Landroid/widget/SemFastScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 2104
    :cond_1
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    return v0
.end method

.method handleBoundsChange()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 3643
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 3644
    .local v1, "childCount":I
    if-lez v1, :cond_3

    .line 3645
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 3646
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 3647
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 3648
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3649
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 3651
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v3, :cond_0

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ge v4, v5, :cond_2

    .line 3652
    :cond_0
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    .line 3647
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3651
    :cond_2
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ge v4, v5, :cond_1

    goto :goto_1

    .line 3642
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    return-void
.end method

.method protected handleDataChanged()V
    .locals 15

    .prologue
    const/4 v14, -0x1

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 8587
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 8588
    .local v1, "count":I
    iget v4, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    .line 8589
    .local v4, "lastHandledItemCount":I
    iget v10, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v10, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    .line 8592
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_0

    iget v10, p0, Landroid/widget/AbsListView;->mItemCount:I

    iget v11, p0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    if-eq v10, v11, :cond_0

    .line 8594
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    .line 8595
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 8596
    iget v10, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v10, p0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    .line 8600
    :cond_0
    iget v10, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 8601
    invoke-virtual {p0}, Landroid/widget/AbsListView;->confirmCheckedPositionsById()V

    .line 8605
    :cond_1
    iget-object v10, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v10}, Landroid/widget/AbsListView$RecycleBin;->clearTransientStateViews()V

    .line 8607
    if-lez v1, :cond_e

    .line 8612
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    if-eqz v10, :cond_7

    .line 8614
    iput-boolean v12, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 8615
    iput-object v13, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 8617
    iget v10, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 8618
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 8619
    return-void

    .line 8620
    :cond_2
    iget v10, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-ne v10, v9, :cond_6

    .line 8621
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    if-eqz v10, :cond_3

    .line 8622
    iput-boolean v12, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    .line 8623
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 8624
    return-void

    .line 8626
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 8627
    .local v0, "childCount":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v11

    sub-int v5, v10, v11

    .line 8628
    .local v5, "listBottom":I
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 8629
    .local v3, "lastChild":Landroid/view/View;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 8630
    .local v2, "lastBottom":I
    :goto_0
    iget v10, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v10, v0

    if-lt v10, v4, :cond_5

    .line 8631
    if-gt v2, v5, :cond_5

    .line 8632
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 8633
    return-void

    .line 8629
    .end local v2    # "lastBottom":I
    :cond_4
    move v2, v5

    .restart local v2    # "lastBottom":I
    goto :goto_0

    .line 8637
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    .line 8640
    .end local v0    # "childCount":I
    .end local v2    # "lastBottom":I
    .end local v3    # "lastChild":Landroid/view/View;
    .end local v5    # "listBottom":I
    :cond_6
    iget v10, p0, Landroid/widget/AbsListView;->mSyncMode:I

    packed-switch v10, :pswitch_data_0

    .line 8688
    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v10

    if-nez v10, :cond_d

    .line 8690
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v6

    .line 8693
    .local v6, "newPos":I
    if-lt v6, v1, :cond_8

    .line 8694
    add-int/lit8 v6, v1, -0x1

    .line 8696
    :cond_8
    if-gez v6, :cond_9

    .line 8697
    const/4 v6, 0x0

    .line 8701
    :cond_9
    invoke-virtual {p0, v6, v9}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 8703
    .local v7, "selectablePos":I
    if-ltz v7, :cond_c

    .line 8704
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 8705
    return-void

    .line 8642
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 8647
    const/4 v8, 0x5

    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 8648
    iget v8, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 8650
    return-void

    .line 8654
    :cond_a
    invoke-virtual {p0}, Landroid/widget/AbsListView;->findSyncPosition()I

    move-result v6

    .line 8655
    .restart local v6    # "newPos":I
    if-ltz v6, :cond_7

    .line 8657
    invoke-virtual {p0, v6, v9}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 8658
    .restart local v7    # "selectablePos":I
    if-ne v7, v6, :cond_7

    .line 8660
    iput v6, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 8662
    iget-wide v8, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_b

    .line 8665
    const/4 v8, 0x5

    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 8673
    :goto_1
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 8674
    return-void

    .line 8669
    :cond_b
    const/4 v8, 0x2

    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_1

    .line 8681
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_1
    const/4 v8, 0x5

    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 8682
    iget v8, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 8684
    return-void

    .line 8708
    .restart local v6    # "newPos":I
    .restart local v7    # "selectablePos":I
    :cond_c
    invoke-virtual {p0, v6, v12}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 8709
    if-ltz v7, :cond_e

    .line 8710
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 8711
    return-void

    .line 8717
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :cond_d
    iget v10, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    if-ltz v10, :cond_e

    .line 8718
    return-void

    .line 8725
    :cond_e
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v10, :cond_f

    :goto_2
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 8726
    iput v14, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    .line 8727
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    .line 8728
    iput v14, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    .line 8729
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Landroid/widget/AbsListView;->mNextSelectedRowId:J

    .line 8730
    iput-boolean v12, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 8731
    iput-object v13, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 8732
    iput v14, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 8733
    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkSelectionChanged()V

    .line 8586
    return-void

    :cond_f
    move v8, v9

    .line 8725
    goto :goto_2

    .line 8640
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected handleScrollBarDragging(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 6408
    const/4 v0, 0x0

    return v0
.end method

.method public hasTextFilter()Z
    .locals 1

    .prologue
    .line 9183
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 8351
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-eq v0, v2, :cond_2

    .line 8352
    iget v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 8353
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 8355
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1

    .line 8356
    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 8358
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 8359
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 8360
    iput v3, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 8361
    iput v2, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 8350
    :cond_2
    return-void
.end method

.method protected internalSetPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 3618
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->internalSetPadding(IIII)V

    .line 3619
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3620
    invoke-virtual {p0}, Landroid/widget/AbsListView;->handleBoundsChange()V

    .line 3617
    :cond_0
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 8408
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 8409
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 8410
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 8411
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 8407
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2207
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_2

    .line 2208
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FastScroller;->onScroll(III)V

    .line 2212
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 2213
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 2215
    :cond_1
    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/widget/AbsListView;->onScrollChanged(IIII)V

    .line 2206
    return-void

    .line 2209
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_0

    .line 2210
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/SemFastScroller;->onScroll(III)V

    goto :goto_0
.end method

.method public isFastScrollAlwaysVisible()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2090
    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-nez v1, :cond_1

    .line 2091
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    :cond_0
    return v0

    .line 2093
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v1}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    :cond_2
    return v0
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2115
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-nez v0, :cond_0

    .line 2116
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    return v0

    .line 2118
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 8848
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 1462
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1463
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0

    .line 1466
    :cond_0
    return v1
.end method

.method public isLockScreenMode()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 5098
    iget-object v6, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "keyguard"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 5099
    .local v3, "keyguardManager":Landroid/app/KeyguardManager;
    const/4 v2, 0x0

    .line 5100
    .local v2, "isLockState":Z
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    .line 5102
    .local v2, "isLockState":Z
    const-string/jumbo v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 5103
    .local v4, "windowManager":Landroid/view/IWindowManager;
    const/4 v0, 0x1

    .line 5104
    .local v0, "isCoverOpen":Z
    if-eqz v4, :cond_0

    .line 5112
    :cond_0
    const/4 v1, 0x0

    .line 5113
    .local v1, "isLockScreenAndCoverOpen":Z
    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 5115
    .local v1, "isLockScreenAndCoverOpen":Z
    :goto_0
    return v1

    .local v1, "isLockScreenAndCoverOpen":Z
    :cond_1
    move v1, v5

    .line 5113
    goto :goto_0
.end method

.method public isMultiFocusEnabled()Z
    .locals 1

    .prologue
    .line 10643
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    return v0
.end method

.method public isMultiWindows()Z
    .locals 2

    .prologue
    .line 2177
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
    .line 3590
    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

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
    .line 2428
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method protected isSemUsingAdapterView()Z
    .locals 1

    .prologue
    .line 7952
    const/4 v0, 0x1

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2190
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2505
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2475
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 2146
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->semIsFastScrollEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 3894
    invoke-super {p0}, Landroid/widget/AdapterView;->jumpDrawablesToCurrentState()V

    .line 3895
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 3893
    :cond_0
    return-void
.end method

.method keyPressed()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3779
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3783
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3784
    .local v3, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3785
    .local v4, "selectorRect":Landroid/graphics/Rect;
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFocused()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3786
    :cond_0
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3778
    :cond_1
    :goto_0
    return-void

    .line 3780
    .end local v3    # "selector":Landroid/graphics/drawable/Drawable;
    .end local v4    # "selectorRect":Landroid/graphics/Rect;
    :cond_2
    return-void

    .line 3788
    .restart local v3    # "selector":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "selectorRect":Landroid/graphics/Rect;
    :cond_3
    iget v8, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v9, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v8, v9

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3790
    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_5

    .line 3791
    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    move-result v8

    if-eqz v8, :cond_4

    return-void

    .line 3792
    :cond_4
    invoke-virtual {v5, v11}, Landroid/view/View;->setPressed(Z)V

    .line 3794
    :cond_5
    invoke-virtual {p0, v11}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 3797
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3798
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v6

    .line 3799
    .local v6, "x":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    .line 3802
    .local v7, "y":F
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v2

    .line 3803
    .local v2, "longClickable":Z
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3804
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_6

    instance-of v8, v1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v8, :cond_6

    .line 3805
    if-eqz v2, :cond_7

    .line 3806
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .line 3807
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v8

    .line 3806
    invoke-virtual {v1, v8}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 3813
    :cond_6
    :goto_1
    iget-object v8, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 3815
    if-eqz v2, :cond_1

    iget-boolean v8, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v8, :cond_1

    .line 3816
    iget-object v8, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-nez v8, :cond_8

    .line 3817
    new-instance v8, Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-direct {v8, p0, v10}, Landroid/widget/AbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForKeyLongPress;)V

    iput-object v8, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    .line 3821
    :goto_2
    iget-object v8, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {v8}, Landroid/widget/AbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    .line 3822
    iget-object v8, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {p0, v8, v10, v11}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3809
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_7
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1

    .line 3819
    :cond_8
    iget-object v8, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 3065
    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "outMetadata"    # [Z

    .prologue
    .line 3203
    const-string/jumbo v6, "obtainView"

    const-wide/16 v8, 0x8

    invoke-static {v8, v9, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3205
    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-boolean v6, p2, v7

    .line 3206
    iget-object v6, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    .line 3209
    .local v5, "viewType":I
    iget-object v6, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v6, p1}, Landroid/widget/AbsListView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v3

    .line 3210
    .local v3, "transientView":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 3211
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .line 3214
    .local v1, "params":Landroid/widget/AbsListView$LayoutParams;
    iget v6, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    if-ne v6, v5, :cond_0

    .line 3215
    iget-object v6, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 3218
    .local v4, "updatedView":Landroid/view/View;
    if-eq v4, v3, :cond_0

    .line 3219
    invoke-direct {p0, v4, p1}, Landroid/widget/AbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 3220
    iget-object v6, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v6, v4, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3224
    .end local v4    # "updatedView":Landroid/view/View;
    :cond_0
    const/4 v6, 0x1

    const/4 v7, 0x0

    aput-boolean v6, p2, v7

    .line 3227
    invoke-virtual {v3}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 3228
    return-object v3

    .line 3231
    .end local v1    # "params":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    const/4 v2, 0x0

    .line 3233
    .local v2, "scrapView":Landroid/view/View;
    const/4 v6, -0x2

    if-eq v5, v6, :cond_3

    .line 3234
    iget-object v6, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v6, p1}, Landroid/widget/AbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v2

    .line 3238
    .end local v2    # "scrapView":Landroid/view/View;
    :goto_0
    iget-object v6, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3240
    .local v0, "child":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 3241
    if-eq v0, v2, :cond_4

    .line 3243
    iget-object v6, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v6, v2, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3254
    :cond_2
    :goto_1
    if-nez v0, :cond_5

    .line 3255
    const-string/jumbo v6, "AbsListView"

    const-string/jumbo v7, " try again to check child on obtainview"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3256
    iget-object v6, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v7, 0x0

    invoke-interface {v6, p1, v7, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3257
    if-nez v0, :cond_5

    .line 3258
    const-string/jumbo v6, "AbsListView"

    const-string/jumbo v7, " child is null again"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3259
    const-string/jumbo v6, "AbsListView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " position = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3260
    const-string/jumbo v6, "AbsListView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " mAdapter ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3261
    const-string/jumbo v6, "AbsListView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " getChildCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3262
    const-string/jumbo v6, "AbsListView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " mAdapter.getCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3263
    const/4 v6, 0x0

    return-object v6

    .line 3236
    .end local v0    # "child":Landroid/view/View;
    .restart local v2    # "scrapView":Landroid/view/View;
    :cond_3
    const-string/jumbo v6, "AbsListView"

    const-string/jumbo v7, "viewType is heaer or footer"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3244
    .end local v2    # "scrapView":Landroid/view/View;
    .restart local v0    # "child":Landroid/view/View;
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->isTemporarilyDetached()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3245
    const/4 v6, 0x1

    const/4 v7, 0x0

    aput-boolean v6, p2, v7

    .line 3248
    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    goto/16 :goto_1

    .line 3267
    :cond_5
    iget v6, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eqz v6, :cond_6

    .line 3268
    iget v6, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v6}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 3271
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v6

    if-nez v6, :cond_7

    .line 3272
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 3275
    :cond_7
    invoke-direct {p0, v0, p1}, Landroid/widget/AbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 3280
    iget-object v6, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    if-nez v6, :cond_8

    .line 3281
    new-instance v6, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    invoke-direct {v6, p0}, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;-><init>(Landroid/widget/AbsListView;)V

    iput-object v6, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    .line 3283
    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v6

    if-nez v6, :cond_9

    .line 3284
    iget-object v6, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    invoke-virtual {v0, v6}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 3288
    :cond_9
    const-wide/16 v6, 0x8

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 3290
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 3900
    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    .line 3902
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3903
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3905
    iget-boolean v1, p0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_0

    .line 3906
    iget-object v1, p0, Landroid/widget/AbsListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3909
    :cond_0
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-eqz v1, :cond_4

    .line 3913
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-nez v1, :cond_2

    .line 3914
    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 3915
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3918
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 3919
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v1, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    .line 3920
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 3923
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v1, :cond_5

    .line 3924
    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 3899
    :cond_3
    :goto_1
    return-void

    .line 3910
    :cond_4
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 3925
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v1, :cond_3

    .line 3926
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SemFastScroller;->setScrollbarPosition(I)V

    goto :goto_1
.end method

.method public onCancelPendingInputEvents()V
    .locals 1

    .prologue
    .line 4101
    invoke-super {p0}, Landroid/widget/AdapterView;->onCancelPendingInputEvents()V

    .line 4102
    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v0, :cond_0

    .line 4103
    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4105
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    if-eqz v0, :cond_1

    .line 4106
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4108
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    if-eqz v0, :cond_2

    .line 4109
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4111
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-eqz v0, :cond_3

    .line 4112
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4114
    :cond_3
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    if-eqz v0, :cond_4

    .line 4115
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4100
    :cond_4
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v1, 0x0

    .line 8943
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8944
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    if-nez v0, :cond_0

    .line 8945
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 8946
    new-instance v0, Landroid/widget/AbsListView$InputConnectionWrapper;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$InputConnectionWrapper;-><init>(Landroid/widget/AbsListView;Landroid/view/inputmethod/EditorInfo;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    .line 8948
    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 8949
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 8950
    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    return-object v0

    .line 8952
    :cond_1
    return-object v1
.end method

.method protected onDetachedFromWindow()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3932
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    .line 3934
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    .line 3937
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 3940
    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    .line 3942
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3943
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3944
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 3945
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3946
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 3949
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 3950
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3951
    iput-object v3, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    .line 3954
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_2

    .line 3955
    iget-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3956
    iput-object v3, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3959
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_3

    .line 3960
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3961
    iput-object v3, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 3964
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 3965
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3968
    :cond_4
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_5

    .line 3969
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 3972
    :cond_5
    iget-object v1, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    .line 3973
    iget-object v1, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3976
    :cond_6
    iget-object v1, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v1, :cond_7

    .line 3977
    iget-object v1, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3980
    :cond_7
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_8

    .line 3981
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3982
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3985
    :cond_8
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eq v1, v5, :cond_9

    .line 3986
    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 3989
    :cond_9
    iget-boolean v1, p0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_a

    .line 3990
    iget-object v1, p0, Landroid/widget/AbsListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3994
    :cond_a
    iget v1, p0, Landroid/widget/AbsListView;->mQCstate:I

    if-eqz v1, :cond_b

    .line 3995
    iput v4, p0, Landroid/widget/AbsListView;->mQCstate:I

    .line 3998
    :cond_b
    invoke-direct {p0}, Landroid/widget/AbsListView;->releaseAllBoosters()V

    .line 3999
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    .line 3931
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .param p1, "hint"    # I

    .prologue
    .line 8738
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDisplayHint(I)V

    .line 8739
    sparse-switch p1, :sswitch_data_0

    .line 8751
    :cond_0
    :goto_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    .line 8737
    return-void

    .line 8741
    :sswitch_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8742
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_0

    .line 8746
    :sswitch_1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8747
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    goto :goto_0

    .line 8751
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 8739
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
    .line 9253
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 9254
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 9255
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    .line 9252
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2814
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2815
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2813
    :cond_0
    :goto_0
    return-void

    .line 2816
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    .line 2819
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 2820
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v0, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    .line 2821
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    .line 2823
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    .line 7096
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 7097
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 7130
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 7099
    :pswitch_1
    iget v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 7100
    const/16 v3, 0x9

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 7101
    .local v2, "vscroll":F
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_0

    .line 7102
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollFactor()F

    move-result v3

    mul-float/2addr v3, v2

    float-to-int v1, v3

    .line 7103
    .local v1, "delta":I
    invoke-virtual {p0, v1, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 7104
    return v5

    .line 7111
    .end local v1    # "delta":I
    .end local v2    # "vscroll":F
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v0

    .line 7112
    .local v0, "actionButton":I
    const/16 v3, 0x20

    if-eq v0, v3, :cond_1

    .line 7113
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 7114
    :cond_1
    iget v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-ne v3, v5, :cond_0

    .line 7116
    :cond_2
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mIsDexMode:Z

    if-nez v3, :cond_0

    .line 7121
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->performStylusButtonPressAction(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7122
    iget-object v3, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7123
    iget-object v3, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 7097
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
    .line 9188
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9190
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9187
    :cond_0
    :goto_0
    return-void

    .line 9190
    :cond_1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-nez v0, :cond_0

    .line 9191
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    goto :goto_0

    .line 9195
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9196
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v3, 0x1

    .line 3404
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 3406
    return-void

    .line 3410
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 3411
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/widget/AbsListView$LayoutParams;

    if-eqz v2, :cond_3

    .line 3412
    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 3417
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 3422
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v2

    if-ne p2, v2, :cond_5

    .line 3423
    invoke-virtual {p3, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 3424
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_SELECTION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 3429
    :goto_1
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->isItemClickable(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3430
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 3431
    invoke-virtual {p3, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 3434
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3435
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 3436
    invoke-virtual {p3, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 3403
    :cond_2
    return-void

    .line 3414
    .restart local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    const/4 v0, 0x0

    .local v0, "isItemEnabled":Z
    goto :goto_0

    .line 3418
    .end local v0    # "isItemEnabled":Z
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 3419
    return-void

    .line 3426
    :cond_5
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SELECT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_1
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v1, 0x1

    .line 2253
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2254
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2255
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2256
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2257
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2258
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2260
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2261
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2262
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 2263
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2267
    :cond_1
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    .line 2268
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2252
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 7284
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7285
    return v1

    .line 7286
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/SemFastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7287
    return v1

    .line 7290
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x4

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 7295
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 7298
    .local v0, "actionMasked":I
    iget-object v7, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v7, :cond_0

    .line 7299
    iget-object v7, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v7}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 7302
    :cond_0
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    if-nez v7, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 7310
    iget-object v7, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v7, p1}, Landroid/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 7311
    return v9

    .line 7307
    :cond_1
    return v8

    .line 7312
    :cond_2
    iget-object v7, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v7, p1}, Landroid/widget/SemFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 7313
    return v9

    .line 7316
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 7386
    :cond_4
    :goto_0
    :pswitch_0
    return v8

    .line 7318
    :pswitch_1
    iget v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 7319
    .local v3, "touchMode":I
    const/4 v7, 0x6

    if-eq v3, v7, :cond_5

    const/4 v7, 0x5

    if-ne v3, v7, :cond_6

    .line 7320
    :cond_5
    iput v8, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 7321
    return v9

    .line 7324
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    .line 7325
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    .line 7326
    .local v6, "y":I
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 7328
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v1

    .line 7329
    .local v1, "motionPosition":I
    if-eq v3, v12, :cond_7

    if-ltz v1, :cond_7

    .line 7332
    iget v7, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v7, v1, v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 7333
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 7334
    iput v5, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 7335
    iput v6, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 7336
    iput v1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 7337
    iput v8, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 7338
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 7340
    .end local v4    # "v":Landroid/view/View;
    :cond_7
    const/high16 v7, -0x80000000

    iput v7, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 7341
    invoke-direct {p0}, Landroid/widget/AbsListView;->initOrResetVelocityTracker()V

    .line 7342
    iget-object v7, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 7343
    iput v8, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 7344
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    .line 7345
    if-ne v3, v12, :cond_4

    .line 7346
    return v9

    .line 7352
    .end local v1    # "motionPosition":I
    .end local v3    # "touchMode":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :pswitch_2
    iget v7, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v7, :pswitch_data_1

    goto :goto_0

    .line 7354
    :pswitch_3
    iget v7, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 7355
    .local v2, "pointerIndex":I
    if-ne v2, v11, :cond_8

    .line 7356
    const/4 v2, 0x0

    .line 7357
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 7359
    :cond_8
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v6, v7

    .line 7360
    .restart local v6    # "y":I
    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    .line 7361
    iget-object v7, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 7362
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v7, v7

    invoke-direct {p0, v7, v6, v10}, Landroid/widget/AbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 7363
    return v9

    .line 7372
    .end local v2    # "pointerIndex":I
    .end local v6    # "y":I
    :pswitch_4
    iput v11, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 7373
    iput v11, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 7374
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 7375
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 7376
    invoke-virtual {p0}, Landroid/widget/AbsListView;->stopNestedScroll()V

    goto/16 :goto_0

    .line 7381
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 7316
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

    .line 7352
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method onJumpScrollToTopFinished()V
    .locals 2

    .prologue
    .line 6911
    const-string/jumbo v0, "AbsListView"

    const-string/jumbo v1, "onJumpScrollToTopFinished()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6910
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 4423
    sparse-switch p1, :sswitch_data_0

    .line 4438
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 4426
    :sswitch_0
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_0

    .line 4430
    :sswitch_1
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    goto :goto_0

    .line 4433
    :sswitch_2
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    if-eqz v0, :cond_0

    .line 4434
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    goto :goto_0

    .line 4423
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

    .line 4443
    iget v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4444
    .local v1, "selectedview":Landroid/view/View;
    const/4 v0, 0x0

    .line 4446
    .local v0, "currentview":Landroid/view/View;
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4447
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4448
    return v7

    .line 4450
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4451
    iget v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v3, :cond_2

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_2

    .line 4452
    iget v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v4, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    .line 4450
    if-eqz v3, :cond_2

    .line 4454
    iget v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4455
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 4456
    iget v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 4457
    invoke-virtual {v2, v6}, Landroid/view/View;->setPressed(Z)V

    .line 4459
    :cond_1
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setPressed(Z)V

    .line 4460
    return v7

    .line 4464
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 4527
    .end local v0    # "currentview":Landroid/view/View;
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    return v3

    .line 4470
    .restart local v0    # "currentview":Landroid/view/View;
    :sswitch_0
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    if-eqz v3, :cond_4

    .line 4471
    iget v3, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    if-nez v3, :cond_6

    .line 4472
    iput p1, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    .line 4478
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4479
    iget v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v3, :cond_3

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_3

    .line 4480
    iget v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 4482
    iget v3, p0, Landroid/widget/AbsListView;->mSemCurrentFocusPosition:I

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4484
    .local v0, "currentview":Landroid/view/View;
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    .line 4485
    iget v3, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    if-nez v3, :cond_7

    .line 4486
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 4487
    iget v3, p0, Landroid/widget/AbsListView;->mSemCurrentFocusPosition:I

    iget-wide v4, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/AbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 4488
    iget v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/widget/AbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 4491
    iget v3, p0, Landroid/widget/AbsListView;->mSemCurrentFocusPosition:I

    iget v4, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    invoke-direct {p0, v3, v4}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    .line 4492
    iget v3, p0, Landroid/widget/AbsListView;->mSemCurrentFocusPosition:I

    iput v3, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    .line 4501
    :cond_5
    :goto_2
    iget v3, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    if-eqz v3, :cond_3

    .line 4502
    iget v3, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    iput v3, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    goto :goto_0

    .line 4474
    .local v0, "currentview":Landroid/view/View;
    :cond_6
    iput p1, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    goto :goto_1

    .line 4494
    .local v0, "currentview":Landroid/view/View;
    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 4495
    iget v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/widget/AbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 4497
    iget v3, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    iget v4, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    invoke-direct {p0, v3, v4}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    goto :goto_2

    .line 4509
    .local v0, "currentview":Landroid/view/View;
    :sswitch_1
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_0

    .line 4513
    :sswitch_2
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    .line 4514
    iput v6, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    .line 4515
    iput v6, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    .line 4516
    iput v5, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    .line 4517
    iput v5, p0, Landroid/widget/AbsListView;->mSecondPressedPoint:I

    goto :goto_0

    .line 4520
    :sswitch_3
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    if-eqz v3, :cond_3

    .line 4521
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    goto/16 :goto_0

    .line 4464
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

    .line 2996
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 2998
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mInLayout:Z

    .line 3000
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 3001
    .local v0, "childCount":I
    if-eqz p1, :cond_1

    .line 3002
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3003
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 3002
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3005
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->markChildrenDirty()V

    .line 3008
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 3009
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mInLayout:Z

    .line 3011
    if-eqz p1, :cond_2

    .line 3012
    const-string/jumbo v2, "AbsListView"

    const-string/jumbo v3, " onsize change "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3013
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mSemSizeChnage:Z

    .line 3014
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 3015
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->semAutoHide(I)V

    .line 3018
    :cond_2
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Landroid/widget/AbsListView;->mOverscrollMax:I

    .line 3021
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v2, :cond_4

    .line 3022
    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    iget v4, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/FastScroller;->onItemCountChanged(II)V

    .line 3025
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3026
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mInLayout:Z

    .line 3027
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 3028
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mInLayout:Z

    .line 2995
    :cond_3
    :goto_1
    return-void

    .line 3030
    :cond_4
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v2, :cond_3

    .line 3031
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    iget v4, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/SemFastScroller;->onItemCountChanged(II)V

    .line 3034
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3035
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mInLayout:Z

    .line 3036
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 3037
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mInLayout:Z

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2970
    iget-object v7, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_0

    .line 2971
    invoke-direct {p0}, Landroid/widget/AbsListView;->useDefaultSelector()V

    .line 2973
    :cond_0
    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 2974
    .local v4, "listPadding":Landroid/graphics/Rect;
    iget v7, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    iget v8, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    add-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->left:I

    .line 2975
    iget v7, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    iget v8, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    add-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 2976
    iget v7, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    iget v8, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    add-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 2977
    iget v7, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    iget v8, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    add-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    .line 2980
    iget v7, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-ne v7, v5, :cond_1

    .line 2981
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 2982
    .local v0, "childCount":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v8

    sub-int v3, v7, v8

    .line 2983
    .local v3, "listBottom":I
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2984
    .local v2, "lastChild":Landroid/view/View;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 2985
    .local v1, "lastBottom":I
    :goto_0
    iget v7, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v7, v0

    iget v8, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    if-lt v7, v8, :cond_4

    .line 2986
    if-gt v1, v3, :cond_3

    .line 2985
    :goto_1
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    .line 2969
    .end local v0    # "childCount":I
    .end local v1    # "lastBottom":I
    .end local v2    # "lastChild":Landroid/view/View;
    .end local v3    # "listBottom":I
    :cond_1
    return-void

    .line 2984
    .restart local v0    # "childCount":I
    .restart local v2    # "lastChild":Landroid/view/View;
    .restart local v3    # "listBottom":I
    :cond_2
    move v1, v3

    .restart local v1    # "lastBottom":I
    goto :goto_0

    :cond_3
    move v5, v6

    .line 2986
    goto :goto_1

    :cond_4
    move v5, v6

    .line 2985
    goto :goto_1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 3
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 7180
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 7181
    .local v0, "childCount":I
    if-nez p4, :cond_2

    if-lez v0, :cond_2

    float-to-int v1, p3

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7182
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 7183
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 7184
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_0

    .line 7185
    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 7187
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p3}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7188
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    float-to-int v2, p3

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    .line 7190
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 7192
    :cond_2
    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

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
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 7164
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 7165
    .local v6, "motionIndex":I
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 7166
    .local v7, "motionView":Landroid/view/View;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    .line 7167
    .local v8, "oldTop":I
    :goto_0
    if-eqz v7, :cond_0

    neg-int v0, p5

    neg-int v3, p5

    invoke-virtual {p0, v0, v3}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7168
    :cond_0
    move v4, p5

    .line 7169
    .local v4, "myUnconsumed":I
    const/4 v2, 0x0

    .line 7170
    .local v2, "myConsumed":I
    if-eqz v7, :cond_1

    .line 7171
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v2, v0, v8

    .line 7172
    sub-int v4, p5, v2

    :cond_1
    move-object v0, p0

    move v3, v1

    .line 7174
    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView;->dispatchNestedScroll(IIII[I)Z

    .line 7163
    .end local v2    # "myConsumed":I
    .end local v4    # "myUnconsumed":I
    :cond_2
    return-void

    .line 7166
    .end local v8    # "oldTop":I
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "oldTop":I
    goto :goto_0
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 7157
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 7158
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    .line 7156
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 7085
    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eq v0, p2, :cond_0

    .line 7086
    iget v0, p0, Landroid/widget/AbsListView;->mScrollX:I

    iget v1, p0, Landroid/widget/AbsListView;->mScrollX:I

    iget v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {p0, v0, p2, v1, v2}, Landroid/widget/AbsListView;->onScrollChanged(IIII)V

    .line 7087
    iput p2, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 7088
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentIfNeeded()V

    .line 7090
    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    .line 7084
    :cond_0
    return-void
.end method

.method public onRemoteAdapterConnected()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 9432
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eq v0, v1, :cond_1

    .line 9433
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 9434
    const-string/jumbo v0, "AbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRemoteAdapter() #2 getCount()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9435
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    if-eqz v0, :cond_0

    .line 9436
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    .line 9437
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 9439
    :cond_0
    return v3

    .line 9440
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_2

    .line 9441
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    .line 9442
    const/4 v0, 0x1

    return v0

    .line 9444
    :cond_2
    return v3
.end method

.method public onRemoteAdapterDisconnected()V
    .locals 0

    .prologue
    .line 9451
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    move-object v0, p1

    .line 2721
    check-cast v0, Landroid/widget/AbsListView$SavedState;

    .line 2723
    .local v0, "ss":Landroid/widget/AbsListView$SavedState;
    invoke-virtual {v0}, Landroid/widget/AbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2724
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 2726
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->height:I

    int-to-long v2, v1

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    .line 2728
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_4

    .line 2729
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 2730
    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 2731
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 2732
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->position:I

    iput v1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 2733
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v1, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 2734
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsListView;->mSyncMode:I

    .line 2748
    :cond_0
    :goto_0
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setFilterText(Ljava/lang/String;)V

    .line 2750
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_1

    .line 2751
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2754
    :cond_1
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_2

    .line 2755
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2758
    :cond_2
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 2760
    iget-boolean v1, v0, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 2761
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_3

    .line 2762
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 2765
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 2720
    return-void

    .line 2735
    :cond_4
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_0

    .line 2736
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 2738
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 2739
    iput v5, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 2740
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 2741
    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 2742
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 2743
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->position:I

    iput v1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 2744
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v1, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 2745
    iput v4, p0, Landroid/widget/AbsListView;->mSyncMode:I

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 4076
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onRtlPropertiesChanged(I)V

    .line 4077
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_1

    .line 4078
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 4075
    :cond_0
    :goto_0
    return-void

    .line 4079
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_0

    .line 4080
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SemFastScroller;->setScrollbarPosition(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 18

    .prologue
    .line 2629
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 2631
    invoke-super/range {p0 .. p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v11

    .line 2633
    .local v11, "superState":Landroid/os/Parcelable;
    new-instance v10, Landroid/widget/AbsListView$SavedState;

    invoke-direct {v10, v11}, Landroid/widget/AbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2635
    .local v10, "ss":Landroid/widget/AbsListView$SavedState;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    if-eqz v14, :cond_0

    .line 2637
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-wide v14, v14, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v14, v10, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 2638
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-wide v14, v14, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v14, v10, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 2639
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v14, v14, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 2640
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v14, v14, Landroid/widget/AbsListView$SavedState;->position:I

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->position:I

    .line 2641
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v14, v14, Landroid/widget/AbsListView$SavedState;->height:I

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->height:I

    .line 2642
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v14, v14, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    iput-object v14, v10, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2643
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-boolean v14, v14, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    iput-boolean v14, v10, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 2644
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v14, v14, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 2645
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v14, v14, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v14, v10, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2646
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v14, v14, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v14, v10, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2647
    return-object v10

    .line 2650
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v14

    if-lez v14, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-lez v14, :cond_3

    const/4 v5, 0x1

    .line 2651
    .local v5, "haveChildren":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getSelectedItemId()J

    move-result-wide v8

    .line 2652
    .local v8, "selectedId":J
    iput-wide v8, v10, Landroid/widget/AbsListView$SavedState;->selectedId:J

    .line 2653
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v14

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->height:I

    .line 2655
    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-ltz v14, :cond_4

    .line 2657
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mSelectedTop:I

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 2658
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v14

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->position:I

    .line 2659
    const-wide/16 v14, -0x1

    iput-wide v14, v10, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 2686
    :goto_1
    const/4 v14, 0x0

    iput-object v14, v10, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2687
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v14, :cond_1

    .line 2688
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 2689
    .local v12, "textFilter":Landroid/widget/EditText;
    if-eqz v12, :cond_1

    .line 2690
    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 2691
    .local v3, "filterText":Landroid/text/Editable;
    if-eqz v3, :cond_1

    .line 2692
    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v10, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2697
    .end local v3    # "filterText":Landroid/text/Editable;
    .end local v12    # "textFilter":Landroid/widget/EditText;
    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v14, :cond_7

    const/4 v14, 0x1

    :goto_2
    iput-boolean v14, v10, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    .line 2699
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v14, :cond_2

    .line 2700
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v14

    iput-object v14, v10, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2702
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v14, :cond_9

    .line 2703
    new-instance v7, Landroid/util/LongSparseArray;

    invoke-direct {v7}, Landroid/util/LongSparseArray;-><init>()V

    .line 2704
    .local v7, "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v14}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    .line 2705
    .local v2, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, v2, :cond_8

    .line 2706
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v6}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v6}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1, v14}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2705
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2650
    .end local v2    # "count":I
    .end local v5    # "haveChildren":Z
    .end local v6    # "i":I
    .end local v7    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v8    # "selectedId":J
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "haveChildren":Z
    goto/16 :goto_0

    .line 2661
    .restart local v8    # "selectedId":J
    :cond_4
    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v14, :cond_6

    .line 2671
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 2672
    .local v13, "v":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v14

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 2673
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 2674
    .local v4, "firstPos":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-lt v4, v14, :cond_5

    .line 2675
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v4, v14, -0x1

    .line 2677
    :cond_5
    iput v4, v10, Landroid/widget/AbsListView$SavedState;->position:I

    .line 2678
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v14, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v14

    iput-wide v14, v10, Landroid/widget/AbsListView$SavedState;->firstId:J

    goto/16 :goto_1

    .line 2680
    .end local v4    # "firstPos":I
    .end local v13    # "v":Landroid/view/View;
    :cond_6
    const/4 v14, 0x0

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->viewTop:I

    .line 2681
    const-wide/16 v14, -0x1

    iput-wide v14, v10, Landroid/widget/AbsListView$SavedState;->firstId:J

    .line 2682
    const/4 v14, 0x0

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->position:I

    goto/16 :goto_1

    .line 2697
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 2708
    .restart local v2    # "count":I
    .restart local v6    # "i":I
    .restart local v7    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_8
    iput-object v7, v10, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2710
    .end local v2    # "count":I
    .end local v6    # "i":I
    .end local v7    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_9
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    .line 2712
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v14, :cond_a

    .line 2713
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v14}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    .line 2716
    :cond_a
    return-object v10
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 3626
    invoke-virtual {p0}, Landroid/widget/AbsListView;->handleBoundsChange()V

    .line 3628
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_1

    .line 3629
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FastScroller;->onSizeChanged(IIII)V

    .line 3625
    :cond_0
    :goto_0
    return-void

    .line 3630
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_0

    .line 3631
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/SemFastScroller;->onSizeChanged(IIII)V

    goto :goto_0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    const/4 v0, 0x0

    .line 7152
    and-int/lit8 v1, p3, 0x2

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

    .line 9217
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9218
    invoke-direct {p0, v5}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 9219
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 9220
    .local v1, "length":I
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 9221
    .local v2, "showing":Z
    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 9223
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    .line 9224
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 9230
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    .line 9231
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 9233
    .local v0, "f":Landroid/widget/Filter;
    if-eqz v0, :cond_3

    .line 9234
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 9216
    .end local v0    # "f":Landroid/widget/Filter;
    .end local v1    # "length":I
    .end local v2    # "showing":Z
    :cond_1
    return-void

    .line 9225
    .restart local v1    # "length":I
    .restart local v2    # "showing":Z
    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 9227
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 9228
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_0

    .line 9236
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
    const/4 v12, 0x2

    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 6423
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_1

    .line 6427
    const-string/jumbo v10, "AbsListView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onTouchEvent() mIsLongPressMultiSelection : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6428
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v9

    :cond_0
    return v9

    .line 6431
    :cond_1
    iget-object v10, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v10, :cond_2

    .line 6432
    iget-object v10, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v10}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 6435
    :cond_2
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    if-nez v10, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 6444
    invoke-virtual {p0, v12}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    .line 6446
    iget-object v10, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v10, :cond_4

    .line 6447
    iget-object v10, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v10, p1}, Landroid/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 6448
    .local v4, "intercepted":Z
    if-eqz v4, :cond_9

    .line 6449
    const-string/jumbo v10, "AbsListView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onTouchEvent() mFastScroll intercepted : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6450
    return v9

    .line 6440
    .end local v4    # "intercepted":Z
    :cond_3
    const-string/jumbo v9, "AbsListView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onTouchEvent() mIsDetaching : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v12, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, ", isAttachedToWindow() : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6441
    return v11

    .line 6452
    :cond_4
    iget-object v10, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v10, :cond_9

    .line 6453
    iget-object v10, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v10, p1}, Landroid/widget/SemFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 6454
    .restart local v4    # "intercepted":Z
    iget-object v10, p0, Landroid/widget/AbsListView;->mSemFastScrollEventListener:Landroid/widget/AbsListView$SemFastScrollEventListener;

    if-eqz v10, :cond_6

    .line 6455
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    if-ne v10, v12, :cond_7

    .line 6456
    :cond_5
    iget-object v10, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v10}, Landroid/widget/SemFastScroller;->getEffectState()I

    move-result v10

    if-ne v10, v9, :cond_7

    .line 6458
    iget-object v10, p0, Landroid/widget/AbsListView;->mSemFastScrollEventListener:Landroid/widget/AbsListView$SemFastScrollEventListener;

    iget-object v12, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v12}, Landroid/widget/SemFastScroller;->getScrollY()F

    move-result v12

    invoke-interface {v10, v12}, Landroid/widget/AbsListView$SemFastScrollEventListener;->onPressed(F)V

    .line 6468
    :cond_6
    :goto_0
    iget-object v10, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v10}, Landroid/widget/SemFastScroller;->getEffectState()I

    move-result v10

    if-ne v10, v9, :cond_8

    move v10, v9

    :goto_1
    iput-boolean v10, p0, Landroid/widget/AbsListView;->mSemFastScrollEffectState:Z

    .line 6470
    if-eqz v4, :cond_9

    .line 6471
    const-string/jumbo v10, "AbsListView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onTouchEvent() mSemFastScroll intercepted : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6472
    return v9

    .line 6463
    :cond_7
    iget-object v10, p0, Landroid/widget/AbsListView;->mSemFastScrollEventListener:Landroid/widget/AbsListView$SemFastScrollEventListener;

    iget-object v12, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v12}, Landroid/widget/SemFastScroller;->getScrollY()F

    move-result v12

    invoke-interface {v10, v12}, Landroid/widget/AbsListView$SemFastScrollEventListener;->onReleased(F)V

    goto :goto_0

    :cond_8
    move v10, v11

    .line 6468
    goto :goto_1

    .line 6476
    .end local v4    # "intercepted":Z
    :cond_9
    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    .line 6477
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 6479
    .local v6, "vtev":Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 6480
    .local v0, "actionMasked":I
    if-nez v0, :cond_a

    .line 6481
    iput v11, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    .line 6483
    :cond_a
    const/4 v10, 0x0

    iget v12, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    int-to-float v12, v12

    invoke-virtual {v6, v10, v12}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 6484
    packed-switch v0, :pswitch_data_0

    .line 6549
    :goto_2
    :pswitch_0
    iget-object v10, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v10, :cond_b

    .line 6550
    iget-object v10, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, v6}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 6552
    :cond_b
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 6553
    return v9

    .line 6486
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 6491
    :pswitch_2
    invoke-direct {p0, p1, v6}, Landroid/widget/AbsListView;->onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 6496
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_2

    .line 6501
    :pswitch_4
    invoke-direct {p0}, Landroid/widget/AbsListView;->onTouchCancel()V

    goto :goto_2

    .line 6506
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 6507
    iget v7, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 6508
    .local v7, "x":I
    iget v8, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 6509
    .local v8, "y":I
    invoke-virtual {p0, v7, v8}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v5

    .line 6510
    .local v5, "motionPosition":I
    if-ltz v5, :cond_e

    .line 6512
    iget v10, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v10, v5, v10

    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6513
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 6514
    iput v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 6515
    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_c

    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 6521
    .end local v1    # "child":Landroid/view/View;
    :cond_c
    :goto_3
    iput v8, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 6522
    iget v10, p0, Landroid/widget/AbsListView;->mPointerCount:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Landroid/widget/AbsListView;->mPointerCount:I

    goto :goto_2

    .line 6516
    .restart local v1    # "child":Landroid/view/View;
    :cond_d
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    goto :goto_3

    .line 6519
    .end local v1    # "child":Landroid/view/View;
    :cond_e
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    goto :goto_3

    .line 6528
    .end local v5    # "motionPosition":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 6529
    .local v3, "index":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 6530
    .local v2, "id":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    float-to-int v7, v10

    .line 6531
    .restart local v7    # "x":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v8, v10

    .line 6532
    .restart local v8    # "y":I
    iput v11, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    .line 6533
    iput v2, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    .line 6534
    iput v7, p0, Landroid/widget/AbsListView;->mMotionX:I

    .line 6535
    iput v8, p0, Landroid/widget/AbsListView;->mMotionY:I

    .line 6536
    invoke-virtual {p0, v7, v8}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v5

    .line 6537
    .restart local v5    # "motionPosition":I
    if-ltz v5, :cond_f

    .line 6539
    iget v10, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v10, v5, v10

    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6540
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 6541
    iput v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 6543
    .end local v1    # "child":Landroid/view/View;
    :cond_f
    iput v8, p0, Landroid/widget/AbsListView;->mLastY:I

    .line 6544
    iget v10, p0, Landroid/widget/AbsListView;->mPointerCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Landroid/widget/AbsListView;->mPointerCount:I

    goto/16 :goto_2

    .line 6484
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

    .line 5060
    if-eqz p1, :cond_2

    .line 5062
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 5066
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 5069
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 5071
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 5059
    :cond_1
    :goto_0
    return-void

    .line 5073
    :cond_2
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5074
    .local v0, "touchMode":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 5075
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 5076
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 5078
    :cond_4
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_5

    .line 5079
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 5082
    :cond_5
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v1, :cond_1

    .line 5083
    iput v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 5084
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentCaches()V

    .line 5085
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 5086
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 10321
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 10322
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mHoverPosition:I

    .line 10324
    if-nez p2, :cond_0

    .line 10320
    :goto_0
    return-void

    .line 10326
    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->releaseAllBoosters()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4004
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onWindowFocusChanged(Z)V

    .line 4009
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mHasWindowFocusForMotion:Z

    .line 4010
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mWindowFocusChanged:Z

    .line 4012
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->semAutoHide(I)V

    .line 4014
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    .line 4016
    .local v0, "touchMode":I
    :goto_0
    if-nez p1, :cond_6

    .line 4017
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 4018
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_1

    .line 4019
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4022
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4023
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_0

    .line 4024
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 4026
    :cond_0
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v1, :cond_1

    .line 4027
    iput v3, p0, Landroid/widget/AbsListView;->mScrollY:I

    .line 4028
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentCaches()V

    .line 4029
    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    .line 4030
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 4034
    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    .line 4036
    if-ne v0, v4, :cond_2

    .line 4038
    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iput v1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 4042
    :cond_2
    iget v1, p0, Landroid/widget/AbsListView;->mQCstate:I

    if-eqz v1, :cond_3

    .line 4043
    iput v3, p0, Landroid/widget/AbsListView;->mQCstate:I

    .line 4067
    :cond_3
    :goto_1
    iput v0, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    .line 4069
    if-nez p1, :cond_4

    .line 4070
    invoke-direct {p0}, Landroid/widget/AbsListView;->releaseAllBoosters()V

    .line 4003
    :cond_4
    return-void

    .line 4014
    .end local v0    # "touchMode":I
    :cond_5
    const/4 v0, 0x1

    .restart local v0    # "touchMode":I
    goto :goto_0

    .line 4046
    :cond_6
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    if-eqz v1, :cond_8

    .line 4052
    :cond_7
    :goto_2
    iget v1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    if-eq v0, v1, :cond_3

    iget v1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 4054
    if-ne v0, v4, :cond_9

    .line 4056
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    goto :goto_1

    .line 4048
    :cond_8
    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    goto :goto_2

    .line 4060
    :cond_9
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 4061
    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 4062
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    goto :goto_1
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 8
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0xc8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2289
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2290
    return v7

    .line 2293
    :cond_0
    const/4 v0, 0x7

    .line 2294
    .local v0, "autoScrollSpeedLevel":I
    if-eqz p2, :cond_1

    .line 2295
    const-string/jumbo v3, "auto_scroll_speed_level_count"

    const/16 v4, 0xf

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2296
    .local v1, "autoScrollSpeedLevelCount":I
    add-int/lit8 v3, v1, -0x1

    const/16 v4, 0x78c

    div-int v3, v4, v3

    iput v3, p0, Landroid/widget/AbsListView;->mAutoscrollDurationGap:I

    .line 2298
    const-string/jumbo v3, "auto_scroll_speed_level"

    const/16 v4, 0x8

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 2301
    .end local v1    # "autoScrollSpeedLevelCount":I
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 2385
    return v6

    .line 2304
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v3, v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_3

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2305
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v3, v4

    .line 2306
    .local v2, "viewportHeight":I
    invoke-virtual {p0, v2, v5}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 2307
    return v7

    .line 2310
    .end local v2    # "viewportHeight":I
    :cond_3
    return v6

    .line 2313
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v3, :cond_4

    .line 2314
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v3, v4

    .line 2315
    .restart local v2    # "viewportHeight":I
    neg-int v3, v2

    invoke-virtual {p0, v3, v5}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 2316
    return v7

    .line 2319
    .end local v2    # "viewportHeight":I
    :cond_4
    return v6

    .line 2321
    :sswitch_2
    const-string/jumbo v3, "AbsListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "case SEM_ACTION_AUTOSCROLL_DOWN  canScrollDown():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2323
    const/16 v3, 0xfa0

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->fling(I)V

    .line 2324
    return v7

    .line 2327
    :cond_5
    return v6

    .line 2329
    :sswitch_3
    const-string/jumbo v3, "AbsListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "case SEM_ACTION_AUTOSCROLL_UP  canScrollUp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2331
    const/16 v3, -0xfa0

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->fling(I)V

    .line 2332
    return v7

    .line 2335
    :cond_6
    return v6

    .line 2338
    :sswitch_4
    const-string/jumbo v3, "AbsListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "case SEM_ACTION_AUTOSCROLL_ON, canScrollDown = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2340
    iget v3, p0, Landroid/widget/AbsListView;->mAutoscrollDurationGap:I

    mul-int/2addr v3, v0

    rsub-int v3, v3, 0x7f0

    iput v3, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    .line 2341
    iget v3, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    invoke-direct {p0, v3}, Landroid/widget/AbsListView;->autoScrollWithDuration(I)V

    .line 2342
    return v7

    .line 2345
    :cond_7
    return v6

    .line 2347
    :sswitch_5
    const-string/jumbo v3, "AbsListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SEM_ACTION_AUTOSCROLL_SPEED_UP, current duration = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2349
    iget v3, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    const/16 v4, 0x64

    if-le v3, v4, :cond_8

    .line 2350
    iget v3, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    iget v4, p0, Landroid/widget/AbsListView;->mAutoscrollDurationGap:I

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    .line 2351
    :cond_8
    iget v3, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    invoke-direct {p0, v3}, Landroid/widget/AbsListView;->autoScrollWithDuration(I)V

    .line 2352
    return v7

    .line 2355
    :cond_9
    return v6

    .line 2357
    :sswitch_6
    const-string/jumbo v3, "AbsListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SEM_ACTION_AUTOSCROLL_SPEED_DOWN, current duration = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2359
    iget v3, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    const/16 v4, 0x7f0

    if-ge v3, v4, :cond_a

    .line 2360
    iget v3, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    iget v4, p0, Landroid/widget/AbsListView;->mAutoscrollDurationGap:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    .line 2362
    :cond_a
    iget v3, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    invoke-direct {p0, v3}, Landroid/widget/AbsListView;->autoScrollWithDuration(I)V

    .line 2363
    return v7

    .line 2366
    :cond_b
    return v6

    .line 2368
    :sswitch_7
    const-string/jumbo v3, "AbsListView"

    const-string/jumbo v4, "SEM_ACTION_AUTOSCROLL_TOP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2369
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2370
    invoke-virtual {p0, v6, v6, v6}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(III)V

    .line 2371
    return v7

    .line 2374
    :cond_c
    return v6

    .line 2376
    :sswitch_8
    const-string/jumbo v3, "AbsListView"

    const-string/jumbo v4, "SEM_ACTION_AUTOSCROLL_OFF"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    invoke-virtual {p0, v6, v6}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 2378
    iget-object v3, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v3, :cond_d

    .line 2379
    iget-object v3, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v3}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 2381
    :cond_d
    return v7

    .line 2301
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
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1653
    const/4 v8, 0x0

    .line 1654
    .local v8, "handled":Z
    const/4 v9, 0x0

    .line 1655
    .local v9, "handledNotifykeyPress":Z
    const/4 v7, 0x1

    .line 1657
    .local v7, "dispatchItemClick":Z
    iget v3, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v3, :cond_4

    .line 1658
    const/4 v8, 0x1

    .line 1659
    const/4 v0, 0x0

    .line 1661
    .local v0, "checkedStateChanged":Z
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_9

    iget v3, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 1662
    iget v3, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_9

    .line 1663
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v6, 0x0

    .line 1664
    .local v6, "checked":Z
    :goto_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1665
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1666
    if-eqz v6, :cond_7

    .line 1667
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1672
    :cond_1
    :goto_1
    if-eqz v6, :cond_8

    .line 1673
    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1677
    :goto_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    .line 1678
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1680
    const/4 v7, 0x0

    .line 1682
    :cond_2
    const/4 v0, 0x1

    .line 1699
    .end local v6    # "checked":Z
    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    .line 1700
    invoke-direct {p0}, Landroid/widget/AbsListView;->updateOnScreenCheckedViews()V

    .line 1704
    .end local v0    # "checkedStateChanged":Z
    :cond_4
    if-eqz v7, :cond_5

    .line 1705
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    or-int/2addr v8, v1

    .line 1708
    .end local v8    # "handled":Z
    :cond_5
    return v8

    .line 1663
    .restart local v0    # "checkedStateChanged":Z
    .restart local v8    # "handled":Z
    :cond_6
    const/4 v6, 0x1

    .restart local v6    # "checked":Z
    goto :goto_0

    .line 1669
    :cond_7
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 1675
    :cond_8
    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1683
    .end local v6    # "checked":Z
    :cond_9
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v3, v2, :cond_3

    .line 1684
    iget-object v3, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-eqz v3, :cond_c

    move v6, v1

    .line 1685
    .local v6, "checked":Z
    :goto_4
    if-eqz v6, :cond_d

    .line 1686
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1687
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1688
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1689
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 1690
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v4, v5, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1692
    :cond_a
    iput v2, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1696
    :cond_b
    :goto_5
    const/4 v0, 0x1

    goto :goto_3

    .end local v6    # "checked":Z
    :cond_c
    move v6, v2

    .line 1684
    goto :goto_4

    .line 1693
    .restart local v6    # "checked":Z
    :cond_d
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1694
    :cond_e
    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_5
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .prologue
    const/high16 v6, -0x40800000    # -1.0f

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v7, v6

    .line 4293
    invoke-virtual/range {v1 .. v7}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJFF)Z

    move-result v0

    return v0
.end method

.method performLongPress(Landroid/view/View;IJFF)Z
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J
    .param p5, "x"    # F
    .param p6, "y"    # F

    .prologue
    const v8, 0xc369

    const/4 v2, 0x3

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v1, 0x1

    .line 4304
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v2, :cond_2

    .line 4305
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_1

    .line 4306
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    .line 4308
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v2, :cond_0

    .line 4309
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    .line 4311
    :cond_0
    invoke-virtual {p0, p2, v1}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 4312
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    .line 4314
    :cond_1
    return v1

    .line 4317
    :cond_2
    const/4 v6, 0x0

    .line 4318
    .local v6, "handled":Z
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_3

    .line 4319
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 4322
    .end local v6    # "handled":Z
    :cond_3
    if-nez v6, :cond_4

    .line 4323
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 4324
    cmpl-float v0, p5, v7

    if-eqz v0, :cond_6

    cmpl-float v0, p6, v7

    if-eqz v0, :cond_6

    .line 4325
    invoke-super {p0, p0, p5, p6}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result v6

    .line 4330
    :cond_4
    :goto_0
    if-eqz v6, :cond_5

    .line 4331
    invoke-direct {p0}, Landroid/widget/AbsListView;->semGetEnableVibrationAtLongPress()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4332
    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    .line 4338
    :cond_5
    :goto_1
    return v6

    .line 4327
    :cond_6
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .local v6, "handled":Z
    goto :goto_0

    .line 4334
    .end local v6    # "handled":Z
    :cond_7
    const-string/jumbo v0, "AbsListView"

    const-string/jumbo v1, " does not need vibration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public pointToPosition(II)I
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 4551
    iget-object v4, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 4552
    .local v4, "frame":Landroid/graphics/Rect;
    if-nez v4, :cond_0

    .line 4553
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 4554
    iget-object v4, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 4556
    :cond_0
    instance-of v6, p0, Landroid/widget/ListView;

    if-eqz v6, :cond_1

    move-object v6, p0

    check-cast v6, Landroid/widget/ListView;

    iget v2, v6, Landroid/widget/ListView;->mDividerHeight:I

    .line 4557
    .local v2, "dividerHeight":I
    :cond_1
    if-lez v2, :cond_3

    move-object v6, p0

    check-cast v6, Landroid/widget/ListView;

    iget-object v6, v6, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_3

    const/4 v3, 0x1

    .line 4559
    .local v3, "drawDividers":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 4560
    .local v1, "count":I
    add-int/lit8 v5, v1, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_5

    .line 4561
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4562
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    .line 4563
    invoke-virtual {v0, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 4564
    if-eqz v3, :cond_2

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 4566
    :cond_2
    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4567
    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v6, v5

    return v6

    .line 4557
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v3    # "drawDividers":Z
    .end local v5    # "i":I
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "drawDividers":Z
    goto :goto_0

    .line 4560
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "count":I
    .restart local v5    # "i":I
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 4571
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
    .line 4671
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    .line 4672
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 4673
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    return-wide v2

    .line 4675
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

    .line 3466
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 3465
    return-void
.end method

.method positionSelectorLikeFocus(ILandroid/view/View;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    .line 3455
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 3456
    iget-object v6, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3457
    .local v6, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    .line 3458
    .local v4, "x":F
    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    .line 3459
    .local v5, "y":F
    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 3454
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "bounds":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 3461
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    goto :goto_0
.end method

.method positionSelectorLikeTouch(ILandroid/view/View;FF)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 3448
    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 3447
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

    .line 9350
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 9351
    .local v1, "childCount":I
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-static {v5}, Landroid/widget/AbsListView$RecycleBin;->-get0(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;

    move-result-object v3

    .line 9354
    .local v3, "listener":Landroid/widget/AbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 9355
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 9356
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    .line 9358
    .local v4, "lp":Landroid/widget/AbsListView$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget v6, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 9359
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9360
    invoke-virtual {v0, v7}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 9361
    if-eqz v3, :cond_0

    .line 9363
    invoke-interface {v3, v0}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 9354
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9367
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/AbsListView$LayoutParams;
    :cond_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 9368
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 9349
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8371
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    .line 8372
    .local v0, "position":I
    if-gez v0, :cond_0

    .line 8373
    iget v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 8375
    :cond_0
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 8376
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 8377
    return v0
.end method

.method public registerIRMotion()V
    .locals 0

    .prologue
    .line 1207
    return-void
.end method

.method removePendingCallbacks()V
    .locals 2

    .prologue
    .line 6932
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 6933
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 6934
    iget-object v1, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6935
    iget-object v1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6937
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 6931
    return-void
.end method

.method reportScrollStateChange(I)V
    .locals 6
    .param p1, "newState"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7441
    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_7

    .line 7442
    const-string/jumbo v0, "AbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportScrollStateChange() newState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7444
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mQCstate:I

    if-ne v0, v5, :cond_0

    .line 7445
    invoke-static {v3}, Lcom/samsung/android/os/SemPerfManager;->onScrollEvent(Z)V

    .line 7446
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 7448
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mQCstate:I

    if-eq v0, v5, :cond_5

    .line 7449
    if-eqz p1, :cond_2

    .line 7450
    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-nez v0, :cond_2

    .line 7452
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_1

    .line 7453
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7454
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 7457
    :cond_1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_2

    .line 7458
    invoke-static {v4}, Lcom/samsung/android/os/SemPerfManager;->onScrollEvent(Z)V

    .line 7459
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 7462
    :cond_2
    if-nez p1, :cond_4

    .line 7463
    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-eqz v0, :cond_4

    .line 7464
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_3

    .line 7465
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->semAutoHide(I)V

    .line 7467
    :cond_3
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_4

    .line 7468
    invoke-static {v3}, Lcom/samsung/android/os/SemPerfManager;->onScrollEvent(Z)V

    .line 7469
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    .line 7472
    :cond_4
    if-eqz p1, :cond_5

    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-eqz v0, :cond_5

    .line 7474
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 7478
    :cond_5
    iput p1, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    .line 7479
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_6

    .line 7481
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 7440
    :cond_6
    :goto_0
    return-void

    .line 7483
    :cond_7
    if-eqz p1, :cond_6

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_6

    .line 7484
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 7276
    if-eqz p1, :cond_0

    .line 7277
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    .line 7279
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->requestDisallowInterceptTouchEvent(Z)V

    .line 7275
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2829
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    if-eqz v0, :cond_1

    .line 2828
    :cond_0
    :goto_0
    return-void

    .line 2830
    :cond_1
    invoke-super {p0}, Landroid/widget/AdapterView;->requestLayout()V

    goto :goto_0
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 2523
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2524
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetList()V

    .line 2525
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 2526
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2522
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 2838
    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    .line 2839
    iput v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 2841
    iget-boolean v0, p0, Landroid/widget/AbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    .line 2842
    iput v2, p0, Landroid/widget/AbsListView;->mLastPosition:I

    .line 2845
    :cond_0
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 2846
    iput-object v1, p0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 2847
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    .line 2848
    iput-object v1, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    .line 2849
    iput v2, p0, Landroid/widget/AbsListView;->mOldSelectedPosition:I

    .line 2850
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/widget/AbsListView;->mOldSelectedRowId:J

    .line 2851
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    .line 2852
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 2853
    iput v3, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    .line 2854
    iput v2, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    .line 2855
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2856
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 2837
    return-void
.end method

.method public resetPressItemListArray()V
    .locals 2

    .prologue
    .line 10720
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_0

    .line 10721
    return-void

    .line 10723
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 10725
    .local v0, "checkCount":I
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 10726
    return-void

    .line 10728
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 10729
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 10719
    return-void
.end method

.method resurrectSelection()Z
    .locals 19

    .prologue
    .line 8439
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 8441
    .local v3, "childCount":I
    if-gtz v3, :cond_0

    .line 8442
    const/16 v17, 0x0

    return v17

    .line 8445
    :cond_0
    const/4 v13, 0x0

    .line 8447
    .local v13, "selectedTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 8448
    .local v5, "childrenTop":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 8449
    .local v4, "childrenBottom":I
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 8450
    .local v7, "firstPosition":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 8451
    .local v14, "toPosition":I
    const/4 v6, 0x1

    .line 8453
    .local v6, "down":Z
    if-lt v14, v7, :cond_4

    add-int v17, v7, v3

    move/from16 v0, v17

    if-ge v14, v0, :cond_4

    .line 8454
    move v12, v14

    .line 8456
    .local v12, "selectedPos":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v14, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 8457
    .local v10, "selected":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    .line 8458
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 8461
    .local v11, "selectedBottom":I
    if-ge v13, v5, :cond_3

    .line 8462
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v13, v5, v17

    .line 8518
    .end local v10    # "selected":Landroid/view/View;
    .end local v11    # "selectedBottom":I
    :cond_1
    :goto_0
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mResurrectToPosition:I

    .line 8519
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8520
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 8521
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 8523
    :cond_2
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 8524
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    .line 8525
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 8526
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v12

    .line 8527
    if-lt v12, v7, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v12, v0, :cond_c

    .line 8528
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 8529
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 8530
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->setSelectionInt(I)V

    .line 8531
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 8535
    :goto_1
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 8537
    if-ltz v12, :cond_d

    const/16 v17, 0x1

    :goto_2
    return v17

    .line 8463
    .restart local v10    # "selected":Landroid/view/View;
    .restart local v11    # "selectedBottom":I
    :cond_3
    if-le v11, v4, :cond_1

    .line 8464
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v17, v4, v17

    .line 8465
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    .line 8464
    sub-int v13, v17, v18

    goto :goto_0

    .line 8468
    .end local v10    # "selected":Landroid/view/View;
    .end local v11    # "selectedBottom":I
    .end local v12    # "selectedPos":I
    :cond_4
    if-ge v14, v7, :cond_8

    .line 8470
    move v12, v7

    .line 8471
    .restart local v12    # "selectedPos":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v3, :cond_1

    .line 8472
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 8473
    .local v16, "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 8475
    .local v15, "top":I
    if-nez v8, :cond_6

    .line 8477
    move v13, v15

    .line 8479
    if-gtz v7, :cond_5

    if-ge v15, v5, :cond_6

    .line 8482
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v5, v5, v17

    .line 8485
    :cond_6
    if-lt v15, v5, :cond_7

    .line 8487
    add-int v12, v7, v8

    .line 8488
    move v13, v15

    .line 8489
    goto/16 :goto_0

    .line 8471
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 8493
    .end local v8    # "i":I
    .end local v12    # "selectedPos":I
    .end local v15    # "top":I
    .end local v16    # "v":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/AbsListView;->mItemCount:I

    .line 8494
    .local v9, "itemCount":I
    const/4 v6, 0x0

    .line 8495
    add-int v17, v7, v3

    add-int/lit8 v12, v17, -0x1

    .line 8497
    .restart local v12    # "selectedPos":I
    add-int/lit8 v8, v3, -0x1

    .restart local v8    # "i":I
    :goto_4
    if-ltz v8, :cond_1

    .line 8498
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 8499
    .restart local v16    # "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 8500
    .restart local v15    # "top":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 8502
    .local v2, "bottom":I
    add-int/lit8 v17, v3, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_a

    .line 8503
    move v13, v15

    .line 8504
    add-int v17, v7, v3

    move/from16 v0, v17

    if-lt v0, v9, :cond_9

    if-le v2, v4, :cond_a

    .line 8505
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    .line 8509
    :cond_a
    if-gt v2, v4, :cond_b

    .line 8510
    add-int v12, v7, v8

    .line 8511
    move v13, v15

    .line 8512
    goto/16 :goto_0

    .line 8497
    :cond_b
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 8533
    .end local v2    # "bottom":I
    .end local v8    # "i":I
    .end local v9    # "itemCount":I
    .end local v15    # "top":I
    .end local v16    # "v":Landroid/view/View;
    :cond_c
    const/4 v12, -0x1

    goto :goto_1

    .line 8537
    :cond_d
    const/16 v17, 0x0

    goto :goto_2
.end method

.method resurrectSelectionIfNeeded()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8419
    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8420
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 8421
    const/4 v0, 0x1

    return v0

    .line 8423
    :cond_0
    return v1
.end method

.method public scrollListBy(I)V
    .locals 2
    .param p1, "y"    # I

    .prologue
    .line 8113
    neg-int v0, p1

    neg-int v1, p1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 8112
    return-void
.end method

.method public semAutoHide(I)V
    .locals 4
    .param p1, "when"    # I

    .prologue
    .line 1937
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-nez v0, :cond_0

    return-void

    .line 1938
    :cond_0
    if-nez p1, :cond_2

    .line 1939
    invoke-virtual {p0}, Landroid/widget/AbsListView;->semIsFastScrollEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1940
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1941
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    iget v1, p0, Landroid/widget/AbsListView;->GO_TO_TOP_HIDE:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1936
    :cond_1
    :goto_0
    return-void

    .line 1944
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1945
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1946
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    iget v1, p0, Landroid/widget/AbsListView;->GO_TO_TOP_HIDE:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public semFinishMultiChoiceMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1840
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1841
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1842
    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1839
    :cond_0
    return-void
.end method

.method public semForceLongPressMultiSelection()V
    .locals 2

    .prologue
    .line 5700
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mLongPressMultiSelectionEnabled:Z

    if-eqz v0, :cond_0

    .line 5701
    const-string/jumbo v0, "AbsListView"

    const-string/jumbo v1, "requested semForceLongPressMultiSelection by app"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5702
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHasPerformedLongPress:Z

    .line 5703
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    .line 5704
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 5699
    :cond_0
    return-void
.end method

.method protected semGetItemCount()I
    .locals 2

    .prologue
    .line 7939
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 7940
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

.method public semGetLastScrollState()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    return v0
.end method

.method public semIsFastScrollCustomEffectEnabled()Z
    .locals 1

    .prologue
    .line 11377
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemFastScrollCustomEffectEnabled:Z

    return v0
.end method

.method public semIsFastScrollEnabled()Z
    .locals 1

    .prologue
    .line 11306
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-nez v0, :cond_0

    .line 11307
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    return v0

    .line 11309
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v0}, Landroid/widget/SemFastScroller;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public semIsFluidScrollerEnabled()Z
    .locals 1

    .prologue
    .line 11349
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v0

    return v0
.end method

.method protected semIsShowingScrollbar()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 7927
    invoke-super {p0}, Landroid/widget/AdapterView;->semIsShowingScrollbar()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

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
    .line 1716
    const/4 v0, 0x0

    .line 1718
    .local v0, "handledNotifyKeyPress":Z
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    if-eqz v1, :cond_0

    .line 1719
    iget-boolean v6, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-super/range {v1 .. v6}, Landroid/widget/AdapterView;->semNotifyKeyPress(Landroid/view/View;IJZ)Z

    move-result v0

    .line 1721
    .end local v0    # "handledNotifyKeyPress":Z
    :cond_0
    return v0
.end method

.method public semPointToNearPosition(II)I
    .locals 23
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 4586
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v11

    .line 4587
    .local v11, "count":I
    move/from16 v2, p2

    .line 4588
    .local v2, "adjustY":I
    const v18, 0x7fffffff

    .line 4590
    .local v18, "oldDistanceY":I
    const/16 v19, 0x0

    .line 4592
    .local v19, "previousChildCenter":I
    add-int/lit8 v12, v11, -0x1

    .local v12, "i":I
    :goto_0
    if-ltz v12, :cond_2

    .line 4593
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4594
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 4595
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    .line 4596
    .local v8, "childTop":I
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 4597
    .local v4, "childBottom":I
    add-int v20, v8, v4

    div-int/lit8 v5, v20, 0x2

    .line 4598
    .local v5, "childCenter":I
    move/from16 v0, v19

    if-ne v0, v5, :cond_1

    .line 4592
    .end local v4    # "childBottom":I
    .end local v5    # "childCenter":I
    .end local v8    # "childTop":I
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    .line 4601
    .restart local v4    # "childBottom":I
    .restart local v5    # "childCenter":I
    .restart local v8    # "childTop":I
    :cond_1
    move/from16 v19, v5

    .line 4602
    sub-int v20, p2, v5

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 4603
    .local v15, "newDistanceY":I
    move/from16 v0, v18

    if-ge v15, v0, :cond_2

    .line 4604
    move/from16 v18, v15

    .line 4605
    move v2, v5

    goto :goto_1

    .line 4612
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childBottom":I
    .end local v5    # "childCenter":I
    .end local v8    # "childTop":I
    .end local v15    # "newDistanceY":I
    :cond_2
    const/16 v16, 0x0

    .line 4613
    .local v16, "oldDistanceFromLeft":I
    const/16 v17, 0x0

    .line 4614
    .local v17, "oldDistanceFromRight":I
    const/4 v13, 0x0

    .line 4615
    .local v13, "newDistanceFromLeft":I
    const/4 v14, 0x0

    .line 4616
    .local v14, "newDistanceFromRight":I
    const/4 v9, 0x0

    .line 4617
    .local v9, "closeIndexByLeft":I
    const/4 v10, 0x0

    .line 4619
    .local v10, "closeIndexByRight":I
    add-int/lit8 v12, v11, -0x1

    :goto_2
    if-ltz v12, :cond_9

    .line 4620
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4621
    .restart local v3    # "child":Landroid/view/View;
    if-eqz v3, :cond_8

    .line 4622
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    .line 4623
    .restart local v8    # "childTop":I
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    .line 4624
    .restart local v4    # "childBottom":I
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 4625
    .local v6, "childLeft":I
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v7

    .line 4627
    .local v7, "childRight":I
    add-int/lit8 v20, v11, -0x1

    move/from16 v0, v20

    if-ne v12, v0, :cond_3

    .line 4628
    add-int/lit8 v20, v11, -0x1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v21

    add-int v9, v20, v21

    .line 4629
    add-int/lit8 v20, v11, -0x1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v21

    add-int v10, v20, v21

    .line 4630
    sub-int v20, p1, v6

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v16

    .line 4631
    sub-int v20, p1, v7

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v17

    .line 4635
    :cond_3
    if-lt v2, v8, :cond_5

    if-gt v2, v4, :cond_5

    .line 4636
    sub-int v20, p1, v6

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 4637
    sub-int v20, p1, v7

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 4639
    move/from16 v0, v16

    if-gt v13, v0, :cond_4

    .line 4640
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v20

    add-int v9, v12, v20

    .line 4641
    move/from16 v16, v13

    .line 4643
    :cond_4
    move/from16 v0, v17

    if-gt v14, v0, :cond_5

    .line 4644
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v20

    add-int v10, v12, v20

    .line 4645
    move/from16 v17, v14

    .line 4648
    :cond_5
    if-gt v2, v4, :cond_6

    if-nez v12, :cond_8

    .line 4649
    :cond_6
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    .line 4650
    return v9

    .line 4652
    :cond_7
    return v10

    .line 4619
    .end local v4    # "childBottom":I
    .end local v6    # "childLeft":I
    .end local v7    # "childRight":I
    .end local v8    # "childTop":I
    :cond_8
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    .line 4657
    .end local v3    # "child":Landroid/view/View;
    :cond_9
    const-string/jumbo v20, "AbsListView"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "semPointToNearPosition didn\'t find valid position!! "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4658
    const/16 v20, -0x1

    return v20
.end method

.method public semSetClickableInMultiSelectMode(Z)V
    .locals 0
    .param p1, "clickable"    # Z

    .prologue
    .line 10656
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsSemOnClickEnabled:Z

    .line 10655
    return-void
.end method

.method public semSetCtrlKeyPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 5718
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    .line 5717
    return-void
.end method

.method public semSetCustomMultiChoiceModeEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1857
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSemCustomMultiChoiceMode:Z

    .line 1856
    return-void
.end method

.method public semSetDragBlockEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 10636
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    .line 10635
    return-void
.end method

.method public semSetEnableVibrationAtLongPress(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 291
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mEnableVibrationAtLongPress:Z

    .line 290
    return-void
.end method

.method public semSetFastScrollCustomEffectEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 11388
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSemFastScrollCustomEffectEnabled:Z

    .line 11387
    return-void
.end method

.method public semSetFastScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 11248
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_0

    .line 11249
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    .line 11251
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11252
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->semSetFastScrollEnabledUiThread(Z)V

    .line 11247
    :cond_0
    :goto_0
    return-void

    .line 11254
    :cond_1
    new-instance v0, Landroid/widget/AbsListView$19;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$19;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public semSetFastScrollEventListener(Landroid/widget/AbsListView$SemFastScrollEventListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$SemFastScrollEventListener;

    .prologue
    .line 11226
    iput-object p1, p0, Landroid/widget/AbsListView;->mSemFastScrollEventListener:Landroid/widget/AbsListView$SemFastScrollEventListener;

    .line 11225
    return-void
.end method

.method public semSetFastScrollStyle(I)V
    .locals 1
    .param p1, "styleResId"    # I

    .prologue
    .line 11289
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-nez v0, :cond_0

    .line 11290
    iput p1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    .line 11288
    :goto_0
    return-void

    .line 11292
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/SemFastScroller;->setStyle(I)V

    goto :goto_0
.end method

.method public semSetFluidScrollerEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 11334
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 11333
    return-void
.end method

.method public semSetFluidScrollerEventListener(Landroid/widget/AbsListView$SemFluidScrollerEventListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$SemFluidScrollerEventListener;

    .prologue
    .line 11325
    return-void
.end method

.method public semSetFluidScrollerStyle(I)V
    .locals 0
    .param p1, "styleResId"    # I

    .prologue
    .line 11340
    return-void
.end method

.method public semSetForcedEdgeEffectEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 10666
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSemForcedDrawEdgeEffect:Z

    .line 10665
    return-void
.end method

.method public semSetGoToTopEnabled(Z)V
    .locals 9
    .param p1, "enabled"    # Z

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const v6, 0x3ea8f5c3    # 0.33f

    const v5, 0x3e99999a    # 0.3f

    const/4 v4, 0x0

    .line 1868
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemFollow2016A:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1869
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    .line 1871
    if-eqz p1, :cond_1

    .line 1872
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1876
    :goto_0
    const/16 v0, 0xff

    filled-new-array {v8, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 1877
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1878
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v6, v4, v5, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1880
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/AbsListView$7;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$7;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1891
    const/16 v0, 0xff

    filled-new-array {v8, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 1892
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1893
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v6, v4, v5, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1895
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/AbsListView$8;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$8;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1906
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/AbsListView$9;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$9;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1867
    :cond_0
    return-void

    .line 1874
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0
.end method

.method public semSetHoverScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 5129
    if-eqz p1, :cond_0

    .line 5130
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    .line 5128
    :goto_0
    return-void

    .line 5132
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    goto :goto_0
.end method

.method public semSetLongPressMultiSelectionEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 5690
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mLongPressMultiSelectionEnabled:Z

    .line 5689
    return-void
.end method

.method public semSetMultiFocusEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 10622
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    .line 10621
    return-void
.end method

.method public semSetSelection(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 7965
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 7964
    return-void
.end method

.method public semSetSmoothScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 11360
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 11361
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 11363
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->-get0(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->semSetSmoothScrollEnabled(Z)V

    .line 11359
    return-void
.end method

.method public semSetupGoToTop(I)V
    .locals 18
    .param p1, "where"    # I

    .prologue
    .line 10838
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-nez v13, :cond_0

    return-void

    .line 10839
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10842
    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_1

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 10844
    :cond_1
    :goto_0
    const/4 v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_f

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mSemSizeChnage:Z

    if-eqz v13, :cond_f

    .line 10845
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v13

    if-nez v13, :cond_2

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 10846
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    move/from16 p1, v0

    .line 10849
    :cond_3
    :goto_1
    if-eqz p1, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10852
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    if-nez v13, :cond_5

    if-nez p1, :cond_5

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 10854
    :cond_5
    const/4 v13, 0x2

    move/from16 v0, p1

    if-eq v0, v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v14, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 10857
    :cond_6
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemGoToTopState:I

    .line 10859
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v12

    .line 10860
    .local v12, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    .line 10861
    .local v8, "h":I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mPaddingLeft:I

    sub-int v13, v12, v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int v5, v13, v14

    .line 10862
    .local v5, "contentW":I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mPaddingLeft:I

    div-int/lit8 v14, v5, 0x2

    add-int v4, v13, v14

    .line 10864
    .local v4, "centerX":I
    const/4 v11, 0x0

    .line 10867
    .local v11, "paddingTop":I
    const/4 v3, 0x0

    .line 10868
    .local v3, "btnW":I
    const/4 v2, 0x0

    .line 10869
    .local v2, "btnH":I
    const/4 v7, 0x0

    .line 10872
    .local v7, "gapH":I
    const/4 v13, 0x0

    const/4 v14, 0x0

    filled-new-array {v13, v14}, [I

    move-result-object v9

    .line 10873
    .local v9, "locOnScr":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getLocationInWindow([I)V

    .line 10874
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 10877
    .local v6, "dm":Landroid/util/DisplayMetrics;
    const/4 v13, 0x0

    aget v13, v9, v13

    if-gez v13, :cond_7

    .line 10878
    const/4 v13, 0x0

    aget v13, v9, v13

    neg-int v10, v13

    .line 10879
    .local v10, "overlappedW":I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mPaddingLeft:I

    if-le v10, v13, :cond_7

    .line 10880
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mPaddingLeft:I

    sub-int v13, v10, v13

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v4, v13

    .line 10885
    .end local v10    # "overlappedW":I
    :cond_7
    const/4 v13, 0x0

    aget v13, v9, v13

    add-int/2addr v13, v12

    iget v14, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v13, v14, :cond_8

    .line 10886
    const/4 v13, 0x0

    aget v13, v9, v13

    add-int/2addr v13, v12

    iget v14, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v10, v13, v14

    .line 10887
    .restart local v10    # "overlappedW":I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mPaddingRight:I

    if-le v10, v13, :cond_8

    .line 10888
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int v13, v10, v13

    div-int/lit8 v13, v13, 0x2

    sub-int/2addr v4, v13

    .line 10892
    .end local v10    # "overlappedW":I
    :cond_8
    packed-switch p1, :pswitch_data_0

    .line 10911
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_a

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    .line 10912
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 10914
    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_c

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v13

    if-nez v13, :cond_12

    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 10916
    :cond_c
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mSemSizeChnage:Z

    .line 10917
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    .line 10837
    return-void

    .line 10842
    .end local v2    # "btnH":I
    .end local v3    # "btnW":I
    .end local v4    # "centerX":I
    .end local v5    # "contentW":I
    .end local v6    # "dm":Landroid/util/DisplayMetrics;
    .end local v7    # "gapH":I
    .end local v8    # "h":I
    .end local v9    # "locOnScr":[I
    .end local v11    # "paddingTop":I
    .end local v12    # "w":I
    :cond_d
    const/16 p1, 0x0

    goto/16 :goto_0

    .line 10845
    :cond_e
    const/16 p1, 0x0

    goto/16 :goto_1

    .line 10847
    :cond_f
    const/4 v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_3

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v13

    if-nez v13, :cond_10

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v13

    if-eqz v13, :cond_3

    :cond_10
    const/16 p1, 0x1

    goto/16 :goto_1

    .line 10850
    :cond_11
    const/4 v13, 0x1

    move/from16 v0, p1

    if-eq v0, v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 10894
    .restart local v2    # "btnH":I
    .restart local v3    # "btnW":I
    .restart local v4    # "centerX":I
    .restart local v5    # "contentW":I
    .restart local v6    # "dm":Landroid/util/DisplayMetrics;
    .restart local v7    # "gapH":I
    .restart local v8    # "h":I
    .restart local v9    # "locOnScr":[I
    .restart local v11    # "paddingTop":I
    .restart local v12    # "w":I
    :pswitch_0
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_9

    .line 10895
    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v13 .. v17}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    goto/16 :goto_3

    .line 10899
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10900
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x10502ee

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 10901
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x10502ee

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 10902
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x10502ef

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 10903
    new-instance v13, Landroid/graphics/Rect;

    div-int/lit8 v14, v3, 0x2

    sub-int v14, v4, v14

    sub-int v15, v8, v2

    add-int/lit8 v15, v15, 0x0

    sub-int/2addr v15, v7

    div-int/lit8 v16, v3, 0x2

    add-int v16, v16, v4

    add-int/lit8 v17, v8, 0x0

    sub-int v17, v17, v7

    invoke-direct/range {v13 .. v17}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    goto/16 :goto_3

    .line 10914
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mSemSizeChnage:Z

    if-eqz v13, :cond_c

    goto/16 :goto_4

    .line 10892
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method semShowGoToTOP()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2219
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2220
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 2221
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->semAutoHide(I)V

    .line 2218
    :cond_0
    return-void
.end method

.method public semSmoothScrollBy(I)V
    .locals 3
    .param p1, "distance"    # I

    .prologue
    const/4 v2, 0x0

    .line 7977
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_0

    .line 7978
    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 7981
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 7982
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    .line 7983
    new-instance v1, Landroid/widget/AbsListView$SemSmoothScrollByMove;

    invoke-direct {v1, p0, v2}, Landroid/widget/AbsListView$SemSmoothScrollByMove;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$SemSmoothScrollByMove;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mSemSmoothScrollByMove:Landroid/widget/AbsListView$SemSmoothScrollByMove;

    .line 7984
    iget v1, p0, Landroid/widget/AbsListView;->mDensityScale:F

    const/high16 v2, 0x43160000    # 150.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Landroid/widget/AbsListView;->mSemScrollAmount:I

    .line 7987
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    .line 7988
    .local v0, "isEmpty":Z
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sget v2, Landroid/widget/AbsListView;->mSemScrollAmount:I

    if-le v1, v2, :cond_3

    .line 7989
    if-lez p1, :cond_2

    .line 7990
    :goto_0
    sget v1, Landroid/widget/AbsListView;->mSemScrollAmount:I

    if-le p1, v1, :cond_3

    .line 7991
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    sget v2, Landroid/widget/AbsListView;->mSemScrollAmount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 7990
    sget v1, Landroid/widget/AbsListView;->mSemScrollAmount:I

    sub-int/2addr p1, v1

    goto :goto_0

    .line 7994
    :cond_2
    :goto_1
    sget v1, Landroid/widget/AbsListView;->mSemScrollAmount:I

    neg-int v1, v1

    if-ge p1, v1, :cond_3

    .line 7995
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    sget v2, Landroid/widget/AbsListView;->mSemScrollAmount:I

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 7994
    sget v1, Landroid/widget/AbsListView;->mSemScrollAmount:I

    add-int/2addr p1, v1

    goto :goto_1

    .line 7999
    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 8000
    if-eqz v0, :cond_4

    iget-object v1, p0, Landroid/widget/AbsListView;->mSemSmoothScrollByMove:Landroid/widget/AbsListView$SemSmoothScrollByMove;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 7976
    :cond_4
    return-void
.end method

.method public semStartMultiChoiceMode()V
    .locals 2

    .prologue
    .line 1826
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v0, :cond_0

    .line 1827
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1825
    :cond_0
    return-void
.end method

.method public sendAccessibilityEventInternal(I)V
    .locals 3
    .param p1, "eventType"    # I

    .prologue
    .line 2231
    const/16 v2, 0x1000

    if-ne p1, v2, :cond_1

    .line 2232
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 2233
    .local v0, "firstVisiblePosition":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    .line 2234
    .local v1, "lastVisiblePosition":I
    iget v2, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventFromIndex:I

    if-ne v2, v0, :cond_0

    .line 2235
    iget v2, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventToIndex:I

    if-ne v2, v1, :cond_0

    .line 2236
    return-void

    .line 2238
    :cond_0
    iput v0, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventFromIndex:I

    .line 2239
    iput v1, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventToIndex:I

    .line 2242
    .end local v0    # "firstVisiblePosition":I
    .end local v1    # "lastVisiblePosition":I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->sendAccessibilityEventInternal(I)V

    .line 2227
    return-void
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 8860
    invoke-direct {p0}, Landroid/widget/AbsListView;->acceptFilter()Z

    move-result v5

    if-nez v5, :cond_0

    .line 8861
    const/4 v5, 0x0

    return v5

    .line 8864
    :cond_0
    const/4 v2, 0x0

    .line 8865
    .local v2, "handled":Z
    const/4 v3, 0x1

    .line 8866
    .local v3, "okToSend":Z
    sparse-switch p1, :sswitch_data_0

    .line 8898
    .end local v3    # "okToSend":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 8899
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 8901
    move-object v1, p3

    .line 8902
    .local v1, "forwardEvent":Landroid/view/KeyEvent;
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 8903
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    const/4 v5, 0x0

    invoke-static {p3, v6, v7, v5}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 8906
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 8907
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 8935
    .end local v0    # "action":I
    .end local v1    # "forwardEvent":Landroid/view/KeyEvent;
    .end local v2    # "handled":Z
    :cond_2
    :goto_1
    return v2

    .line 8873
    .restart local v2    # "handled":Z
    .restart local v3    # "okToSend":Z
    :sswitch_0
    const/4 v3, 0x0

    .line 8874
    goto :goto_0

    .line 8876
    :sswitch_1
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 8877
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_5

    .line 8878
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_5

    .line 8879
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    .line 8880
    .local v4, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v4, :cond_3

    .line 8881
    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 8883
    :cond_3
    const/4 v2, 0x1

    .line 8890
    .end local v4    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_4
    :goto_2
    const/4 v3, 0x0

    .line 8891
    goto :goto_0

    .line 8884
    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 8885
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v5

    .line 8884
    if-eqz v5, :cond_4

    .line 8885
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_4

    .line 8886
    const/4 v2, 0x1

    .line 8887
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 8894
    :sswitch_2
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .local v3, "okToSend":Z
    goto :goto_0

    .line 8909
    .end local v3    # "okToSend":Z
    .restart local v0    # "action":I
    .restart local v1    # "forwardEvent":Landroid/view/KeyEvent;
    :pswitch_0
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 8910
    .local v2, "handled":Z
    const/16 v5, 0x3b

    if-eq p1, v5, :cond_6

    const/16 v5, 0x3c

    if-ne p1, v5, :cond_7

    .line 8911
    :cond_6
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    goto :goto_1

    .line 8912
    :cond_7
    const/16 v5, 0x71

    if-eq p1, v5, :cond_8

    const/16 v5, 0x72

    if-ne p1, v5, :cond_2

    .line 8913
    :cond_8
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_1

    .line 8918
    .local v2, "handled":Z
    :pswitch_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 8919
    .local v2, "handled":Z
    const/16 v5, 0x3b

    if-eq p1, v5, :cond_9

    const/16 v5, 0x3c

    if-ne p1, v5, :cond_a

    .line 8920
    :cond_9
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    .line 8921
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    .line 8922
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    .line 8923
    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    .line 8924
    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/AbsListView;->mSecondPressedPoint:I

    goto/16 :goto_1

    .line 8925
    :cond_a
    const/16 v5, 0x71

    if-eq p1, v5, :cond_b

    const/16 v5, 0x72

    if-ne p1, v5, :cond_2

    .line 8926
    :cond_b
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    goto/16 :goto_1

    .line 8931
    .local v2, "handled":Z
    :pswitch_2
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    .local v2, "handled":Z
    goto/16 :goto_1

    .line 8866
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

    .line 8907
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/Adapter;

    .prologue
    .line 1401
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 1402
    if-eqz p1, :cond_1

    .line 1403
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    .line 1404
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v0, :cond_0

    .line 1405
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    .line 1406
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1408
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mChnagedAdapter:Z

    .line 1409
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_1

    .line 1410
    const-string/jumbo v0, "AbsListView"

    const-string/jumbo v1, " setAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    invoke-direct {p0}, Landroid/widget/AbsListView;->semPlayGotoToFadeOut()V

    .line 1412
    invoke-direct {p0}, Landroid/widget/AbsListView;->initGoToTOP()V

    .line 1416
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_2

    .line 1417
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1420
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_3

    .line 1421
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1425
    :cond_3
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_4

    .line 1426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    .line 1427
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 1428
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    .line 1401
    :cond_4
    return-void
.end method

.method public setAirScrollEnable(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1221
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 9320
    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eq p1, v2, :cond_1

    .line 9321
    iput p1, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    .line 9322
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 9323
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9324
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 9323
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9326
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsListView$RecycleBin;->setCacheColorHint(I)V

    .line 9319
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

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1772
    iput p1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    .line 1773
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1774
    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1775
    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1777
    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_3

    .line 1778
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 1779
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1781
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1782
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v2}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1785
    :cond_2
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v4, :cond_3

    .line 1786
    invoke-virtual {p0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 1787
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setLongClickable(Z)V

    .line 1791
    :cond_3
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 1792
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    .line 1771
    :cond_4
    :goto_0
    return-void

    .line 1793
    :cond_5
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v4, :cond_6

    .line 1794
    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    goto :goto_0

    .line 1795
    :cond_6
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v3, :cond_4

    .line 1796
    :cond_7
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    goto :goto_0
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .param p1, "onTop"    # Z

    .prologue
    .line 3734
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    .line 3733
    return-void
.end method

.method public setEnableDoubleFling(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 301
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mDoubleFlingEnabled:Z

    .line 300
    return-void
.end method

.method public setEnableHoverDrawable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 326
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mHoveringEnabled:Z

    .line 325
    return-void
.end method

.method public setEnablePaddingInHoverScroll(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 5140
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    .line 5139
    return-void
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 2049
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    if-eq v0, p1, :cond_1

    .line 2050
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eqz v0, :cond_2

    .line 2054
    :cond_0
    :goto_0
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    .line 2056
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2057
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    .line 2048
    :cond_1
    :goto_1
    return-void

    .line 2051
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    goto :goto_0

    .line 2059
    :cond_3
    new-instance v0, Landroid/widget/AbsListView$11;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$11;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1979
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1980
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    .line 1982
    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1983
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemFastScrollCustomEffectEnabled:Z

    if-eqz v0, :cond_1

    .line 1984
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->semSetFastScrollEnabledUiThread(Z)V

    .line 1978
    :cond_0
    :goto_0
    return-void

    .line 1986
    :cond_1
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    goto :goto_0

    .line 1989
    :cond_2
    new-instance v0, Landroid/widget/AbsListView$10;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$10;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFastScrollStyle(I)V
    .locals 1
    .param p1, "styleResId"    # I

    .prologue
    .line 2027
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-nez v0, :cond_0

    .line 2028
    iput p1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    .line 2026
    :goto_0
    return-void

    .line 2030
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setStyle(I)V

    goto :goto_0
.end method

.method public setFastScrollTrackPadding(II)V
    .locals 1
    .param p1, "paddingTop"    # I
    .param p2, "paddingBottom"    # I

    .prologue
    .line 310
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    :cond_0
    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .param p1, "filterText"    # Ljava/lang/String;

    .prologue
    .line 2781
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2779
    :cond_0
    :goto_0
    return-void

    .line 2782
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    .line 2785
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2786
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 2787
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_0

    .line 2789
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_2

    .line 2790
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 2791
    .local v0, "f":Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 2795
    .end local v0    # "f":Landroid/widget/Filter;
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    .line 2796
    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->clearSavedState()V

    goto :goto_0
.end method

.method public setForcedClick(Z)V
    .locals 0
    .param p1, "force"    # Z

    .prologue
    .line 4146
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    .line 4145
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 3047
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->setFrame(IIII)Z

    move-result v0

    .line 3049
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 3053
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 3054
    .local v1, "visible":Z
    :goto_0
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3055
    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    .line 3059
    .end local v1    # "visible":Z
    :cond_0
    return v0

    .line 3053
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "visible":Z
    goto :goto_0
.end method

.method public setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    .line 7802
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 7803
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 7805
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->-get0(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 7801
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 12
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .prologue
    const/4 v6, 0x3

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 1579
    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-nez v2, :cond_0

    .line 1580
    return-void

    .line 1584
    :cond_0
    if-eqz p2, :cond_1

    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v2, v6, :cond_1

    iget-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v2, :cond_1

    .line 1585
    iget-object v2, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v2, :cond_7

    .line 1586
    iget-object v2, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v2}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1591
    iget-object v2, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1595
    :cond_1
    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    iget v2, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v2, v6, :cond_b

    .line 1596
    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    .line 1597
    .local v7, "oldValue":Z
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1598
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1599
    if-eqz p2, :cond_8

    .line 1600
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v10, v11, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1605
    :cond_3
    :goto_0
    if-eq v7, p2, :cond_9

    move v0, v9

    .line 1606
    .local v0, "itemCheckChanged":Z
    :goto_1
    if-eqz v0, :cond_4

    .line 1607
    if-eqz p2, :cond_a

    .line 1608
    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    .line 1613
    :cond_4
    :goto_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_5

    .line 1614
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1615
    .local v4, "id":J
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1643
    .end local v0    # "itemCheckChanged":Z
    .end local v4    # "id":J
    .end local v7    # "oldValue":Z
    :cond_5
    :goto_3
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mInLayout:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    if-eqz v1, :cond_13

    .line 1578
    :cond_6
    :goto_4
    return-void

    .line 1587
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "AbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1602
    .restart local v7    # "oldValue":Z
    :cond_8
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_0

    :cond_9
    move v0, v1

    .line 1605
    goto :goto_1

    .line 1610
    .restart local v0    # "itemCheckChanged":Z
    :cond_a
    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1619
    .end local v0    # "itemCheckChanged":Z
    .end local v7    # "oldValue":Z
    :cond_b
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_f

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v8

    .line 1622
    :goto_5
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v2

    if-eq v2, p2, :cond_10

    const/4 v0, 0x1

    .line 1623
    .local v0, "itemCheckChanged":Z
    :goto_6
    if-nez p2, :cond_c

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1624
    :cond_c
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1625
    if-eqz v8, :cond_d

    .line 1626
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    .line 1631
    :cond_d
    if-eqz p2, :cond_11

    .line 1632
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1633
    if-eqz v8, :cond_e

    .line 1634
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1636
    :cond_e
    iput v9, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_3

    .line 1619
    .end local v0    # "itemCheckChanged":Z
    :cond_f
    const/4 v8, 0x0

    .local v8, "updateIds":Z
    goto :goto_5

    .line 1622
    .end local v8    # "updateIds":Z
    :cond_10
    const/4 v0, 0x0

    .restart local v0    # "itemCheckChanged":Z
    goto :goto_6

    .line 1637
    :cond_11
    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1638
    :cond_12
    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_3

    .line 1643
    .end local v0    # "itemCheckChanged":Z
    :cond_13
    if-eqz v0, :cond_6

    .line 1644
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    if-nez v1, :cond_14

    .line 1645
    iput-boolean v9, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    .line 1646
    :cond_14
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    .line 1647
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    goto/16 :goto_4
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsListView$MultiChoiceModeListener;

    .prologue
    .line 1811
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 1812
    new-instance v0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    .line 1814
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 1810
    return-void
.end method

.method public setMultiFocusListItem(II)V
    .locals 1
    .param p1, "startitem"    # I
    .param p2, "enditem"    # I

    .prologue
    .line 10737
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 10738
    return-void

    .line 10740
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    .line 10741
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    .line 10735
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 2199
    iput-object p1, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 2200
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 2198
    return-void
.end method

.method public setOverScrollEffectPadding(II)V
    .locals 0
    .param p1, "leftPadding"    # I
    .param p2, "rightPadding"    # I

    .prologue
    .line 6944
    iput p1, p0, Landroid/widget/AbsListView;->mGlowPaddingLeft:I

    .line 6945
    iput p2, p0, Landroid/widget/AbsListView;->mGlowPaddingRight:I

    .line 6943
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 1384
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 1385
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_0

    .line 1386
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1387
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1388
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    .line 1394
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setOverScrollMode(I)V

    .line 1383
    return-void

    .line 1391
    :cond_1
    iput-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    .line 1392
    iput-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method public setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsListView$RecyclerListener;

    .prologue
    .line 9481
    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-static {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->-set0(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)Landroid/widget/AbsListView$RecyclerListener;

    .line 9480
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 9386
    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v2, :cond_0

    .line 9387
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 9388
    .local v0, "fcNew":Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    .line 9389
    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    .line 9388
    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 9390
    .local v1, "fcOld":Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9391
    return-void

    .line 9394
    .end local v0    # "fcNew":Landroid/content/Intent$FilterComparison;
    .end local v1    # "fcOld":Landroid/content/Intent$FilterComparison;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    .line 9396
    new-instance v2, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;)V

    iput-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 9397
    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9398
    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 9399
    const-string/jumbo v2, "AbsListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRemoteAdapter #1 getCount()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v4}, Landroid/widget/RemoteViewsAdapter;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9383
    :cond_1
    return-void
.end method

.method public setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 9413
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 9414
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 9410
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 2134
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setScrollBarStyle(I)V

    .line 2135
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 2136
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollBarStyle(I)V

    .line 2133
    :cond_0
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "up"    # Landroid/view/View;
    .param p2, "down"    # Landroid/view/View;

    .prologue
    .line 3828
    iput-object p1, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    .line 3829
    iput-object p2, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    .line 3827
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 2445
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 2448
    :cond_0
    :goto_0
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    .line 2444
    return-void

    .line 2446
    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    goto :goto_0
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x1

    .line 10252
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 10253
    return-void

    .line 10256
    :cond_0
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-eq v0, v1, :cond_1

    .line 10257
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10258
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 10260
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->semAutoHide(I)V

    .line 10263
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_6

    .line 10264
    invoke-virtual {p0, p1, v1}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 10265
    if-ltz p1, :cond_2

    .line 10266
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    .line 10272
    :cond_2
    :goto_0
    if-ltz p1, :cond_5

    .line 10273
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    .line 10274
    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    .line 10276
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    if-eqz v0, :cond_3

    .line 10277
    iput p1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    .line 10278
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    .line 10281
    :cond_3
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v0, :cond_4

    .line 10282
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 10284
    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 10251
    :cond_5
    return-void

    .line 10269
    :cond_6
    iput p1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    goto :goto_0
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 3745
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 3744
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 3749
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 3750
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3751
    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3753
    :cond_0
    iput-object p1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3754
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3755
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3756
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    .line 3757
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    .line 3758
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    .line 3759
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    .line 3760
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3761
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    .line 3748
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2168
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    .line 2167
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .param p1, "stackFromBottom"    # Z

    .prologue
    .line 2516
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 2517
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    .line 2518
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    .line 2515
    :cond_0
    return-void
.end method

.method public setSweepListAnimator(Lcom/samsung/android/animation/SemSweepListAnimator;)V
    .locals 0
    .param p1, "animator"    # Lcom/samsung/android/animation/SemSweepListAnimator;

    .prologue
    .line 266
    iput-object p1, p0, Landroid/widget/AbsListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    .line 265
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .param p1, "textFilterEnabled"    # Z

    .prologue
    .line 2462
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    .line 2461
    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 1238
    iput p1, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    .line 1237
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 9291
    iput p1, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    .line 9290
    return-void
.end method

.method public setVelocityScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 7815
    iput p1, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    .line 7814
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2124
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setVerticalScrollbarPosition(I)V

    .line 2125
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_1

    .line 2126
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 2123
    :cond_0
    :goto_0
    return-void

    .line 2127
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_0

    .line 2128
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/SemFastScroller;->setScrollbarPosition(I)V

    goto :goto_0
.end method

.method setVisibleRangeHint(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 9464
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 9465
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    .line 9463
    :cond_0
    return-void
.end method

.method shouldShowSelector()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3682
    iget-object v4, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "finger_air_view"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_4

    const/4 v0, 0x1

    .line 3683
    .local v0, "isFingerAirView":Z
    :goto_0
    iget-object v4, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "finger_air_view_information_preview"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_5

    const/4 v1, 0x1

    .line 3688
    .local v1, "isFingerAirViewPreview":Z
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v4

    if-nez v4, :cond_7

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHovered()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFingerHovered()Z

    move-result v4

    if-nez v4, :cond_7

    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHovered()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    :cond_3
    :goto_2
    return v2

    .line 3682
    .end local v0    # "isFingerAirView":Z
    .end local v1    # "isFingerAirViewPreview":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "isFingerAirView":Z
    goto :goto_0

    .line 3683
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "isFingerAirViewPreview":Z
    goto :goto_1

    .line 3688
    :cond_6
    iget-boolean v4, p0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    if-nez v4, :cond_0

    :cond_7
    move v2, v3

    goto :goto_2
.end method

.method shouldShowSelectorDefault()Z
    .locals 1

    .prologue
    .line 3695
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showContextMenu()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4348
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Landroid/widget/AbsListView;->showContextMenuInternal(FFZ)Z

    move-result v0

    return v0
.end method

.method public showContextMenu(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 4353
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView;->showContextMenuInternal(FFZ)Z

    move-result v0

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 3
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 4381
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isShowingContextMenuWithCoords()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4382
    return v2

    .line 4384
    :cond_0
    invoke-direct {p0, p1, v1, v1, v2}, Landroid/widget/AbsListView;->showContextMenuForChildInternal(Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 4389
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsListView;->showContextMenuForChildInternal(Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1, "distance"    # I
    .param p2, "duration"    # I

    .prologue
    .line 7897
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 7896
    return-void
.end method

.method smoothScrollBy(IIZ)V
    .locals 9
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    .prologue
    const/4 v8, 0x0

    .line 8005
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v5, :cond_0

    .line 8006
    new-instance v5, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v5, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    .line 8010
    :cond_0
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 8011
    .local v2, "firstPos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 8012
    .local v1, "childCount":I
    add-int v3, v2, v1

    .line 8013
    .local v3, "lastPos":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v4

    .line 8014
    .local v4, "topLimit":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 8016
    .local v0, "bottomLimit":I
    if-eqz p1, :cond_1

    iget v5, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-nez v5, :cond_4

    .line 8020
    :cond_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 8021
    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v5, :cond_2

    .line 8022
    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v5}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    .line 8029
    :cond_2
    :goto_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsSupportGotoTop()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Landroid/widget/AbsListView;->mSemCanGoFuther:Z

    if-eqz v5, :cond_3

    iget v5, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-nez v5, :cond_3

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 8004
    :cond_3
    :goto_1
    return-void

    .line 8016
    :cond_4
    if-eqz v1, :cond_1

    .line 8017
    if-nez v2, :cond_5

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-ne v5, v4, :cond_5

    if-ltz p1, :cond_1

    .line 8018
    :cond_5
    iget v5, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-ne v3, v5, :cond_6

    .line 8019
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ne v5, v0, :cond_6

    if-gtz p1, :cond_1

    .line 8025
    :cond_6
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 8026
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/AbsListView$FlingRunnable;->startScroll(IIZ)V

    goto :goto_0

    .line 8030
    :cond_7
    const-string/jumbo v5, "AbsListView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " re calculate done2 mPositionScroller = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8031
    iput-boolean v8, p0, Landroid/widget/AbsListView;->mSemCanGoFuther:Z

    .line 8032
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 8033
    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v5, :cond_3

    .line 8034
    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v5}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    goto :goto_1
.end method

.method smoothScrollByOffset(I)V
    .locals 11
    .param p1, "position"    # I

    .prologue
    const/high16 v10, 0x3f400000    # 0.75f

    const/4 v9, 0x0

    .line 8043
    const/4 v2, -0x1

    .line 8044
    .local v2, "index":I
    if-gez p1, :cond_3

    .line 8045
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    .line 8050
    :cond_0
    :goto_0
    const/4 v7, -0x1

    if-le v2, v7, :cond_2

    .line 8051
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8052
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 8053
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 8054
    .local v4, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 8056
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int v1, v7, v8

    .line 8057
    .local v1, "childRectArea":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int v5, v7, v8

    .line 8058
    .local v5, "visibleRectArea":I
    int-to-float v7, v5

    int-to-float v8, v1

    div-float v3, v7, v8

    .line 8059
    .local v3, "visibleArea":F
    const/high16 v6, 0x3f400000    # 0.75f

    .line 8060
    .local v6, "visibleThreshold":F
    if-gez p1, :cond_4

    cmpg-float v7, v3, v10

    if-gez v7, :cond_4

    .line 8063
    add-int/lit8 v2, v2, 0x1

    .line 8070
    .end local v1    # "childRectArea":I
    .end local v3    # "visibleArea":F
    .end local v5    # "visibleRectArea":I
    .end local v6    # "visibleThreshold":F
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v7

    add-int v8, v2, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 8042
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "visibleRect":Landroid/graphics/Rect;
    :cond_2
    return-void

    .line 8046
    :cond_3
    if-lez p1, :cond_0

    .line 8047
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v2

    goto :goto_0

    .line 8064
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

    .line 8067
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public smoothScrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 7831
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 7832
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 7834
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$AbsPositionScroller;->start(I)V

    .line 7830
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .prologue
    .line 7885
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 7886
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 7888
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$AbsPositionScroller;->start(II)V

    .line 7884
    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 7868
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 7869
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 7871
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$AbsPositionScroller;->startWithOffset(II)V

    .line 7867
    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .prologue
    .line 7850
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 7851
    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    .line 7853
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/AbsListView$AbsPositionScroller;->startWithOffset(III)V

    .line 7849
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 3664
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 3669
    const/4 v0, 0x0

    return v0

    .line 3667
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 3664
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
    .line 8152
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v8

    .line 8153
    .local v8, "childCount":I
    if-nez v8, :cond_0

    .line 8154
    const/16 v29, 0x1

    return v29

    .line 8157
    :cond_0
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTop()I

    move-result v16

    .line 8158
    .local v16, "firstTop":I
    add-int/lit8 v29, v8, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getBottom()I

    move-result v22

    .line 8160
    .local v22, "lastBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    .line 8165
    .local v23, "listPadding":Landroid/graphics/Rect;
    const/4 v13, 0x0

    .line 8166
    .local v13, "effectivePaddingTop":I
    const/4 v12, 0x0

    .line 8167
    .local v12, "effectivePaddingBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x22

    const/16 v30, 0x22

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1

    .line 8168
    move-object/from16 v0, v23

    iget v13, v0, Landroid/graphics/Rect;->top:I

    .line 8169
    move-object/from16 v0, v23

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    .line 8173
    :cond_1
    sub-int v25, v13, v16

    .line 8174
    .local v25, "spaceAbove":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v29

    sub-int v14, v29, v12

    .line 8175
    .local v14, "end":I
    sub-int v26, v22, v14

    .line 8177
    .local v26, "spaceBelow":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingBottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingTop:I

    move/from16 v30, v0

    sub-int v19, v29, v30

    .line 8178
    .local v19, "height":I
    if-gez p1, :cond_3

    .line 8179
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 8184
    :goto_0
    if-gez p2, :cond_4

    .line 8185
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 8190
    :goto_1
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 8193
    .local v15, "firstPosition":I
    if-nez v15, :cond_5

    .line 8194
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    sub-int v29, v16, v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    .line 8198
    :goto_2
    add-int v29, v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    .line 8199
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    add-int v29, v29, v22

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    .line 8204
    :goto_3
    if-nez v15, :cond_8

    .line 8205
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    move/from16 v0, v16

    move/from16 v1, v29

    if-lt v0, v1, :cond_8

    if-ltz p2, :cond_7

    const/4 v5, 0x1

    .line 8206
    .local v5, "cannotScrollDown":Z
    :goto_4
    add-int v29, v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_a

    .line 8207
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v29

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move/from16 v0, v22

    move/from16 v1, v29

    if-gt v0, v1, :cond_a

    if-gtz p2, :cond_9

    const/4 v6, 0x1

    .line 8209
    .local v6, "cannotScrollUp":Z
    :goto_5
    if-nez v5, :cond_2

    if-eqz v6, :cond_c

    .line 8210
    :cond_2
    if-eqz p2, :cond_b

    const/16 v29, 0x1

    :goto_6
    return v29

    .line 8181
    .end local v5    # "cannotScrollDown":Z
    .end local v6    # "cannotScrollUp":Z
    .end local v15    # "firstPosition":I
    :cond_3
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto/16 :goto_0

    .line 8187
    :cond_4
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_1

    .line 8196
    .restart local v15    # "firstPosition":I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    move/from16 v29, v0

    add-int v29, v29, p2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    goto :goto_2

    .line 8201
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    move/from16 v29, v0

    add-int v29, v29, p2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    goto :goto_3

    .line 8205
    :cond_7
    const/4 v5, 0x0

    .restart local v5    # "cannotScrollDown":Z
    goto :goto_4

    .line 8204
    .end local v5    # "cannotScrollDown":Z
    :cond_8
    const/4 v5, 0x0

    .restart local v5    # "cannotScrollDown":Z
    goto :goto_4

    .line 8207
    :cond_9
    const/4 v6, 0x0

    .restart local v6    # "cannotScrollUp":Z
    goto :goto_5

    .line 8206
    .end local v6    # "cannotScrollUp":Z
    :cond_a
    const/4 v6, 0x0

    .restart local v6    # "cannotScrollUp":Z
    goto :goto_5

    .line 8210
    :cond_b
    const/16 v29, 0x0

    goto :goto_6

    .line 8213
    :cond_c
    if-gez p2, :cond_17

    const/4 v11, 0x1

    .line 8215
    .local v11, "down":Z
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v21

    .line 8216
    .local v21, "inTouchMode":Z
    if-eqz v21, :cond_d

    .line 8217
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->hideSelector()V

    .line 8220
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeaderViewsCount()I

    move-result v18

    .line 8221
    .local v18, "headerViewsCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFooterViewsCount()I

    move-result v30

    sub-int v17, v29, v30

    .line 8223
    .local v17, "footerViewsStart":I
    const/16 v27, 0x0

    .line 8224
    .local v27, "start":I
    const/4 v10, 0x0

    .line 8226
    .local v10, "count":I
    if-eqz v11, :cond_1a

    .line 8227
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v28, v0

    .line 8228
    .local v28, "top":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x22

    const/16 v30, 0x22

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_e

    .line 8229
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    add-int v28, v28, v29

    .line 8231
    :cond_e
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_8
    move/from16 v0, v20

    if-ge v0, v8, :cond_f

    .line 8232
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 8233
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v29

    move/from16 v0, v29

    move/from16 v1, v28

    if-lt v0, v1, :cond_18

    .line 8269
    .end local v7    # "child":Landroid/view/View;
    .end local v28    # "top":I
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    move/from16 v29, v0

    add-int v29, v29, p1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewNewTop:I

    .line 8271
    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    .line 8273
    if-lez v10, :cond_10

    .line 8274
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v10}, Landroid/widget/AbsListView;->detachViewsFromParent(II)V

    .line 8275
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    .line 8280
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    move-result v29

    if-nez v29, :cond_11

    .line 8281
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    .line 8284
    :cond_11
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->offsetChildrenTopAndBottom(I)V

    .line 8286
    if-eqz v11, :cond_12

    .line 8287
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v29, v0

    add-int v29, v29, v10

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 8290
    :cond_12
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 8291
    .local v3, "absIncrementalDeltaY":I
    move/from16 v0, v25

    if-lt v0, v3, :cond_13

    move/from16 v0, v26

    if-ge v0, v3, :cond_14

    .line 8292
    :cond_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->fillGap(Z)V

    .line 8295
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/AbsListView$RecycleBin;->fullyDetachScrapViews()V

    .line 8296
    if-nez v21, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_1d

    .line 8297
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v30, v0

    sub-int v9, v29, v30

    .line 8298
    .local v9, "childIndex":I
    if-ltz v9, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_15

    .line 8299
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    .line 8310
    .end local v9    # "childIndex":I
    :cond_15
    :goto_9
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    .line 8311
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    move/from16 v29, v0

    if-eqz v29, :cond_16

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v29

    if-eqz v29, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    move/from16 v29, v0

    if-nez v29, :cond_16

    .line 8312
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    .line 8313
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->semAutoHide(I)V

    .line 8315
    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    .line 8317
    const/16 v29, 0x0

    return v29

    .line 8213
    .end local v3    # "absIncrementalDeltaY":I
    .end local v10    # "count":I
    .end local v11    # "down":Z
    .end local v17    # "footerViewsStart":I
    .end local v18    # "headerViewsCount":I
    .end local v20    # "i":I
    .end local v21    # "inTouchMode":Z
    .end local v27    # "start":I
    :cond_17
    const/4 v11, 0x0

    .restart local v11    # "down":Z
    goto/16 :goto_7

    .line 8236
    .restart local v7    # "child":Landroid/view/View;
    .restart local v10    # "count":I
    .restart local v17    # "footerViewsStart":I
    .restart local v18    # "headerViewsCount":I
    .restart local v20    # "i":I
    .restart local v21    # "inTouchMode":Z
    .restart local v27    # "start":I
    .restart local v28    # "top":I
    :cond_18
    add-int/lit8 v10, v10, 0x1

    .line 8237
    add-int v24, v15, v20

    .line 8240
    .local v24, "position":I
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 8241
    move/from16 v0, v24

    move/from16 v1, v18

    if-lt v0, v1, :cond_19

    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_19

    .line 8242
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v7, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 8231
    :cond_19
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_8

    .line 8247
    .end local v7    # "child":Landroid/view/View;
    .end local v20    # "i":I
    .end local v24    # "position":I
    .end local v28    # "top":I
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v29

    sub-int v4, v29, p2

    .line 8248
    .local v4, "bottom":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x22

    const/16 v30, 0x22

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1b

    .line 8249
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    sub-int v4, v4, v29

    .line 8251
    :cond_1b
    add-int/lit8 v20, v8, -0x1

    .restart local v20    # "i":I
    :goto_a
    if-ltz v20, :cond_f

    .line 8252
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 8253
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v29

    move/from16 v0, v29

    if-le v0, v4, :cond_f

    .line 8256
    move/from16 v27, v20

    .line 8257
    add-int/lit8 v10, v10, 0x1

    .line 8258
    add-int v24, v15, v20

    .line 8261
    .restart local v24    # "position":I
    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 8262
    move/from16 v0, v24

    move/from16 v1, v18

    if-lt v0, v1, :cond_1c

    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_1c

    .line 8263
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v7, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 8251
    :cond_1c
    add-int/lit8 v20, v20, -0x1

    goto :goto_a

    .line 8301
    .end local v4    # "bottom":I
    .end local v7    # "child":Landroid/view/View;
    .end local v24    # "position":I
    .restart local v3    # "absIncrementalDeltaY":I
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_1e

    .line 8302
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v30, v0

    sub-int v9, v29, v30

    .line 8303
    .restart local v9    # "childIndex":I
    if-ltz v9, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_15

    .line 8304
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    const/16 v30, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_9

    .line 8307
    .end local v9    # "childIndex":I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_9
.end method

.method triggerDoubleFling(I)V
    .locals 5
    .param p1, "initialVelocity"    # I

    .prologue
    const/4 v4, 0x0

    .line 6915
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 6916
    .local v0, "adapterCount":I
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    .line 6918
    .local v1, "visibleItemsCount":I
    if-lez p1, :cond_2

    .line 6919
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    if-le v2, v3, :cond_0

    .line 6920
    mul-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 6922
    :cond_0
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 6914
    :cond_1
    :goto_0
    return-void

    .line 6923
    :cond_2
    if-gez p1, :cond_1

    .line 6924
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v3, v1, 0x3

    if-le v2, v3, :cond_3

    .line 6925
    add-int/lit8 v2, v0, -0x1

    mul-int/lit8 v3, v1, 0x3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 6927
    :cond_3
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    goto :goto_0
.end method

.method public triggerJumpScrollToTop()V
    .locals 1

    .prologue
    .line 6898
    sget v0, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    iput v0, p0, Landroid/widget/AbsListView;->mJumpScrollToTopState:I

    .line 6899
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->triggerDoubleFling(I)V

    .line 6897
    return-void
.end method

.method public unregisterIRMotion()V
    .locals 0

    .prologue
    .line 1214
    return-void
.end method

.method public updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "edgeeffectCustomEdge"    # Landroid/graphics/drawable/Drawable;
    .param p2, "edgeeffectCustomGlow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1244
    return-void
.end method

.method updateScrollIndicators()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 3088
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3089
    iget-object v3, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3092
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3093
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3087
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 3089
    goto :goto_0

    :cond_3
    move v1, v2

    .line 3093
    goto :goto_1
.end method

.method updateSelectorState()V
    .locals 2

    .prologue
    .line 3833
    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3834
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 3835
    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3836
    invoke-direct {p0}, Landroid/widget/AbsListView;->getDrawableStateForSelector()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3837
    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3832
    :cond_0
    :goto_0
    return-void

    .line 3840
    :cond_1
    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3889
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    goto :goto_0
.end method
