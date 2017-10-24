.class Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;
.super Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;
.source "SemNumberPickerSpinnerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;,
        Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;,
        Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;,
        Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;,
        Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;,
        Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$SetSelectionCommand;
    }
.end annotation


# static fields
.field private static final DECREASE_BUTTON:I = 0x2

.field private static final DECREASE_BUTTON_EX:I = 0x1

.field private static final DEFAULT_CHANGE_VALUE_BY:I = 0x1

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DIGIT_CHARACTERS:[C

.field private static final INCREASE_BUTTON:I = 0x4

.field private static final INCREASE_BUTTON_EX:I = 0x5

.field private static final INPUT:I = 0x3

.field private static final LONG_PRESSED_SCROLL_COUNT:I = 0xa

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x12c

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x4

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x2

.field private static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x5

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x1f4

.field private static final START_ANIMATION_SCROLL_DURATION:I = 0x359

.field private static final START_ANIMATION_SCROLL_DURATION_2016B:I = 0x22d

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2


# instance fields
.field private mAccessibilityNodeProvider:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private final mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mAnimationListener:Lcom/samsung/android/widget/SemAnimationListener;

.field mAudioManager:Landroid/media/AudioManager;

.field private mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

.field private mBelowBottomSelectionDividerBottom:I

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

.field private mChangeValueBy:I

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private final mCustomScroller:Landroid/widget/Scroller;

.field private mCustomTypefaceSet:Z

.field private mDecrementVirtualButtonPressed:Z

.field private final mDefaultEdgeHeight:I

.field private mDefaultTypeface:Landroid/graphics/Typeface;

.field private mDisplayedValues:[Ljava/lang/String;

.field private mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Lcom/samsung/android/widget/SemNumberPicker$Formatter;

.field private final mHeightRatio:F

.field private mHideWheelUntilFocused:Z

.field private mIgnoreMoveEvents:Z

.field private mIncrementVirtualButtonPressed:Z

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field private mIsAmPm:Z

.field private mIsEditTextMode:Z

.field private mIsLongPressed:Z

.field private mIsStartingAnimation:Z

.field private mIsUPSModeOn:Z

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastFocusedChildVirtualViewId:I

.field private mLastHoveredChildVirtualViewId:I

.field private final mLinearScroller:Landroid/widget/Scroller;

.field private mLongPressCount:I

.field private mLongPressUpdateInterval:J

.field private mLongPressed_FIRST_SCROLL:Z

.field private mLongPressed_SECOND_SCROLL:Z

.field private mLongPressed_THIRD_SCROLL:Z

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mModifiedTxtHeight:I

.field private mOnEditTextModeChangedListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

.field private mOnScrollListener:Lcom/samsung/android/widget/SemNumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;

.field private mOverTopSelectionDividerTop:I

.field private mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private mPerformClickOnTap:Z

.field private mPickerBoldTypeface:Landroid/graphics/Typeface;

.field private mPickerContentDescription:Ljava/lang/String;

.field private mPickerTypeface:Landroid/graphics/Typeface;

.field private final mPressedStateHelper:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mReservedStartAnimation:Z

.field private mScrollState:I

.field private mSelectedPickerColor:I

.field private final mSelectionDividerHeight:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSetSelectionCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$SetSelectionCommand;

.field private mSkipNumbers:Z

.field private final mSubTextColor:I

.field private mSubTextSize:I

.field private final mTextColor:I

.field private mTextSize:I

.field private mToastText:Ljava/lang/String;

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

.field private mWrapSelectorWheel:Z


# direct methods
.method static synthetic -get0()[C
    .locals 1

    sget-object v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    return v0
.end method

.method static synthetic -get12(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    return v0
.end method

.method static synthetic -get13(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    return v0
.end method

.method static synthetic -get14(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLinearScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic -get16(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    return v0
.end method

.method static synthetic -get17(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    return v0
.end method

.method static synthetic -get18(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOverTopSelectionDividerTop:I

    return v0
.end method

.method static synthetic -get19(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Lcom/samsung/android/widget/SemAnimationListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAnimationListener:Lcom/samsung/android/widget/SemAnimationListener;

    return-object v0
.end method

.method static synthetic -get20(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectionDividerHeight:I

    return v0
.end method

.method static synthetic -get21(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    return v0
.end method

.method static synthetic -get22(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mToastText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get23(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    return v0
.end method

.method static synthetic -get24(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    return v0
.end method

.method static synthetic -get25(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBelowBottomSelectionDividerBottom:I

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCustomScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Landroid/widget/Scroller;)Landroid/widget/Scroller;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    return-object p1
.end method

.method static synthetic -set2(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    return p1
.end method

.method static synthetic -set4(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    return p1
.end method

.method static synthetic -set5(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mReservedStartAnimation:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Landroid/widget/Scroller;)Z
    .locals 1
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->needCompareEqualMonthLanguage()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Ljava/lang/String;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)I
    .locals 1
    .param p1, "selectorIndex"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getWrappedSelectorIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)V
    .locals 0
    .param p1, "increment"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Z)V
    .locals 0
    .param p1, "increment"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByTwo(Z)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->showSoftInput()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2546
    const/16 v0, 0x3c

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->DIGIT_CHARACTERS:[C

    .line 95
    return-void

    .line 2546
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
        0x966s
        0x967s
        0x968s
        0x969s
        0x96as
        0x96bs
        0x96cs
        0x96ds
        0x96es
        0x96fs
        0x9e6s
        0x9e7s
        0x9e8s
        0x9e9s
        0x9eas
        0x9ebs
        0x9ecs
        0x9eds
        0x9ees
        0x9efs
        0xce6s
        0xce7s
        0xce8s
        0xce9s
        0xceas
        0xcebs
        0xcecs
        0xceds
        0xcees
        0xcefs
    .end array-data
.end method

.method public constructor <init>(Lcom/samsung/android/widget/SemNumberPicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 27
    .param p1, "delegator"    # Lcom/samsung/android/widget/SemNumberPicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    .line 506
    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;-><init>(Lcom/samsung/android/widget/SemNumberPicker;Landroid/content/Context;)V

    .line 245
    const-wide/16 v20, 0x12c

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressUpdateInterval:J

    .line 250
    new-instance v20, Landroid/util/SparseArray;

    invoke-direct/range {v20 .. v20}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 255
    const/16 v20, 0x5

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    .line 275
    const/high16 v20, -0x80000000

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    .line 361
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    .line 406
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    .line 464
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    .line 466
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mReservedStartAnimation:Z

    .line 482
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsUPSModeOn:Z

    .line 483
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    .line 485
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCustomTypefaceSet:Z

    .line 490
    new-instance v20, Landroid/view/animation/PathInterpolator;

    const v21, 0x3f59999a    # 0.85f

    const/high16 v22, 0x3e800000    # 0.25f

    const/high16 v23, 0x3f800000    # 1.0f

    const/high16 v24, 0x3f800000    # 1.0f

    invoke-direct/range {v20 .. v24}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 509
    .local v18, "res":Landroid/content/res/Resources;
    const v20, 0x105032d

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 510
    .local v12, "defaultHeight":I
    const v20, 0x105032e

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 511
    .local v13, "defaultWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 512
    const v21, 0x105032f

    .line 511
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 513
    .local v11, "defaultEditTextHeight":I
    int-to-float v0, v11

    move/from16 v20, v0

    int-to-float v0, v12

    move/from16 v21, v0

    div-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mHeightRatio:F

    .line 516
    sget-object v20, Lcom/android/internal/R$styleable;->SemNumberPicker:[I

    .line 515
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v20

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 518
    .local v6, "attributesArray":Landroid/content/res/TypedArray;
    const/16 v20, 0x0

    .line 519
    const/16 v21, -0x1

    .line 518
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinHeight:I

    .line 520
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v6, v0, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxHeight:I

    .line 522
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-virtual {v6, v0, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinWidth:I

    .line 524
    const/16 v20, 0x3

    .line 525
    const/16 v21, -0x1

    .line 524
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxWidth:I

    .line 527
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 529
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinHeight:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxHeight:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 530
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinHeight:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxHeight:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_0

    .line 531
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "minHeight > maxHeight"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 533
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinWidth:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxWidth:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    .line 534
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinWidth:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxWidth:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    .line 535
    new-instance v20, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v21, "minWidth > maxWidth"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 538
    :cond_1
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mHideWheelUntilFocused:Z

    .line 541
    const/high16 v20, 0x40000000    # 2.0f

    .line 542
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    .line 541
    const/16 v22, 0x1

    .line 540
    move/from16 v0, v22

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v20

    move/from16 v0, v20

    float-to-int v10, v0

    .line 543
    .local v10, "defSelectionDividerHeight":I
    move-object/from16 v0, p0

    iput v10, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectionDividerHeight:I

    .line 545
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxWidth:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    const/16 v20, 0x1

    :goto_0
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mComputeMaxWidth:Z

    .line 547
    new-instance v16, Landroid/util/TypedValue;

    invoke-direct/range {v16 .. v16}, Landroid/util/TypedValue;-><init>()V

    .line 548
    .local v16, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v20

    const v21, 0x1010434

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v16

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 549
    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 550
    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    const v21, 0xffffff

    and-int v20, v20, v21

    const/high16 v21, 0x33000000

    or-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectedPickerColor:I

    .line 554
    :goto_1
    new-instance v20, Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectedPickerColor:I

    move/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    .line 556
    const v20, 0x106017d

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSubTextColor:I

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsUPSModeOn:Z

    .line 559
    new-instance v20, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    .line 569
    const-string/jumbo v21, "layout_inflater"

    .line 568
    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/LayoutInflater;

    .line 570
    .local v15, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v20, v0

    const v21, 0x1090101

    const/16 v22, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-virtual {v15, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v20, v0

    const v21, 0x1020454

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/EditText;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setLongClickable(Z)V

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 576
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDefaultTypeface:Landroid/graphics/Typeface;

    .line 577
    const-string/jumbo v20, "sec-roboto-condensed-light"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDefaultTypeface:Landroid/graphics/Typeface;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 579
    const-string/jumbo v20, "samsung-neo-num3T"

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    .line 582
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string/jumbo v21, "theme_font_clock"

    invoke-static/range {v20 .. v21}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 583
    .local v19, "themeTypeFace":Ljava/lang/String;
    if-eqz v19, :cond_3

    const-string/jumbo v20, ""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 587
    :cond_3
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->isMeaLanguage()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDefaultTypeface:Landroid/graphics/Typeface;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    .line 591
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 594
    .local v8, "colors":Landroid/content/res/ColorStateList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/widget/SemNumberPicker;->getEnableStateSet()[I

    move-result-object v14

    .line 595
    .local v14, "enabledStateSet":[I
    const/16 v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v8, v14, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v7

    .line 596
    .local v7, "color":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsUPSModeOn:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSubTextColor:I

    .end local v7    # "color":I
    :cond_5
    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextColor:I

    .line 597
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsUPSModeOn:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextColor:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTextColor(I)V

    .line 600
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    new-instance v21, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$1;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    new-instance v21, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$2;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v21, v0

    .line 623
    new-instance v22, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$InputTextFilter;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V

    const/16 v23, 0x0

    aput-object v22, v21, v23

    .line 622
    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const v21, 0x2000006

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectedPickerColor:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->semSetHoverPopupType(I)V

    .line 633
    invoke-static/range {p2 .. p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    .line 634
    .local v9, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTouchSlop:I

    .line 635
    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v20

    mul-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinimumFlingVelocity:I

    .line 636
    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v20

    div-int/lit8 v20, v20, 0x4

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaximumFlingVelocity:I

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getTextSize()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextSize:I

    .line 641
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 642
    .local v17, "paint":Landroid/graphics/Paint;
    const/16 v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 643
    sget-object v20, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 644
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 646
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSubTextColor:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 647
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 649
    const v20, 0x1050335

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSubTextSize:I

    .line 650
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSubTextSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const v21, 0x3ef5c28f    # 0.48f

    mul-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDefaultEdgeHeight:I

    .line 651
    new-instance v20, Landroid/view/animation/PathInterpolator;

    const/high16 v21, 0x3f000000    # 0.5f

    const/16 v22, 0x0

    const v23, 0x3ecccccd    # 0.4f

    const/high16 v24, 0x3f800000    # 1.0f

    invoke-direct/range {v20 .. v24}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 654
    new-instance v20, Landroid/widget/Scroller;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-direct/range {v20 .. v23}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCustomScroller:Landroid/widget/Scroller;

    .line 655
    new-instance v20, Landroid/widget/Scroller;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x1

    invoke-direct/range {v20 .. v23}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLinearScroller:Landroid/widget/Scroller;

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLinearScroller:Landroid/widget/Scroller;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    .line 657
    new-instance v20, Landroid/widget/Scroller;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    new-instance v22, Landroid/view/animation/PathInterpolator;

    const v23, 0x3ecccccd    # 0.4f

    const/16 v24, 0x0

    const v25, 0x3e99999a    # 0.3f

    const/high16 v26, 0x3f800000    # 1.0f

    invoke-direct/range {v22 .. v26}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-direct/range {v20 .. v22}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    .line 659
    invoke-static {}, Lcom/samsung/android/widget/SemNumberPicker;->getTwoDigitFormatter()Lcom/samsung/android/widget/SemNumberPicker$Formatter;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->setFormatter(Lcom/samsung/android/widget/SemNumberPicker$Formatter;)V

    .line 660
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v20

    if-nez v20, :cond_7

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 667
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "audio"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/media/AudioManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAudioManager:Landroid/media/AudioManager;

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v20, v0

    const/high16 v21, 0x20000

    invoke-virtual/range {v20 .. v21}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 672
    const-string/jumbo v20, ""

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerContentDescription:Ljava/lang/String;

    .line 673
    const v20, 0x10408e1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mToastText:Ljava/lang/String;

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->semSetDirectPenInputEnabled(Z)V

    .line 505
    return-void

    .line 545
    .end local v8    # "colors":Landroid/content/res/ColorStateList;
    .end local v9    # "configuration":Landroid/view/ViewConfiguration;
    .end local v14    # "enabledStateSet":[I
    .end local v15    # "inflater":Landroid/view/LayoutInflater;
    .end local v16    # "outValue":Landroid/util/TypedValue;
    .end local v17    # "paint":Landroid/graphics/Paint;
    .end local v19    # "themeTypeFace":Ljava/lang/String;
    :cond_8
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 552
    .restart local v16    # "outValue":Landroid/util/TypedValue;
    :cond_9
    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v20, v0

    const v21, 0xffffff

    and-int v20, v20, v21

    const/high16 v21, 0x33000000

    or-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectedPickerColor:I

    goto/16 :goto_1

    .line 584
    .restart local v15    # "inflater":Landroid/view/LayoutInflater;
    .restart local v19    # "themeTypeFace":Ljava/lang/String;
    :cond_a
    invoke-static/range {v19 .. v19}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    goto/16 :goto_2
.end method

.method private changeValueByOne(Z)V
    .locals 6
    .param p1, "increment"    # Z

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2154
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2155
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2156
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 2158
    :cond_0
    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    .line 2159
    const/16 v5, 0x1f4

    .line 2160
    .local v5, "duration":I
    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    .line 2162
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_FIRST_SCROLL:Z

    if-eqz v0, :cond_3

    .line 2163
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_FIRST_SCROLL:Z

    .line 2164
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_SECOND_SCROLL:Z

    .line 2180
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSkipNumbers:Z

    if-eqz v0, :cond_7

    .line 2181
    const/16 v5, 0xc8

    .line 2182
    const-wide/16 v2, 0x258

    iput-wide v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressUpdateInterval:J

    .line 2189
    :cond_2
    :goto_1
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressCount:I

    .line 2191
    if-eqz p1, :cond_8

    .line 2192
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    neg-int v2, v2

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    mul-int v4, v2, v3

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2196
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2153
    return-void

    .line 2166
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_SECOND_SCROLL:Z

    if-eqz v0, :cond_6

    .line 2167
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_SECOND_SCROLL:Z

    .line 2168
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_THIRD_SCROLL:Z

    .line 2169
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_4

    .line 2170
    iput v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    goto :goto_0

    .line 2171
    :cond_4
    if-eqz p1, :cond_5

    .line 2172
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    rsub-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    goto :goto_0

    .line 2174
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    goto :goto_0

    .line 2176
    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_THIRD_SCROLL:Z

    if-eqz v0, :cond_1

    .line 2177
    iput v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    goto :goto_0

    .line 2183
    :cond_7
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    if-eqz v0, :cond_2

    .line 2184
    const/16 v5, 0x64

    .line 2185
    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    .line 2186
    const-wide/16 v2, 0x12c

    iput-wide v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressUpdateInterval:J

    goto :goto_1

    .line 2194
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    mul-int v4, v2, v3

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_2
.end method

.method private changeValueByTwo(Z)V
    .locals 6
    .param p1, "increment"    # Z

    .prologue
    const/16 v5, 0x1f4

    const/4 v1, 0x0

    .line 2207
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2208
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2209
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 2211
    :cond_0
    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    .line 2213
    if-eqz p1, :cond_1

    .line 2214
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    neg-int v2, v2

    mul-int/lit8 v4, v2, 0x2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2218
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2206
    return-void

    .line 2216
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/lit8 v4, v2, 0x2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0
.end method

.method private decrementSelectorIndices([I)V
    .locals 4
    .param p1, "selectorIndices"    # [I

    .prologue
    const/4 v3, 0x0

    .line 2329
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 2330
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 2329
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2332
    :cond_0
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 2333
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    if-ge v1, v2, :cond_1

    .line 2334
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    .line 2336
    :cond_1
    aput v1, p1, v3

    .line 2337
    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureCachedScrollSelectorValue(I)V

    .line 2328
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 2345
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 2346
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2347
    .local v2, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2348
    return-void

    .line 2350
    :cond_0
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    if-le p1, v3, :cond_2

    .line 2351
    :cond_1
    const-string/jumbo v2, ""

    .line 2360
    :goto_0
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2344
    return-void

    .line 2353
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 2354
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int v1, p1, v3

    .line 2355
    .local v1, "displayedValueIndex":I
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    goto :goto_0

    .line 2357
    .end local v1    # "displayedValueIndex":I
    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2645
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_0

    .line 2646
    return v1

    .line 2648
    :cond_0
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    sub-int v4, v0, v2

    .line 2649
    .local v4, "deltaY":I
    if-eqz v4, :cond_3

    .line 2650
    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    .line 2651
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_1

    .line 2652
    if-lez v4, :cond_2

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    neg-int v0, v0

    :goto_0
    add-int/2addr v4, v0

    .line 2654
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    const/16 v5, 0x12c

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2655
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2656
    const/4 v0, 0x1

    return v0

    .line 2652
    :cond_2
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    goto :goto_0

    .line 2658
    :cond_3
    return v1
.end method

.method private fling(I)V
    .locals 10
    .param p1, "velocityY"    # I

    .prologue
    const/4 v1, 0x0

    .line 2286
    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    .line 2288
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 2289
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    .line 2290
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    .line 2289
    add-int v9, v0, v1

    .line 2291
    .local v9, "tempFinal":I
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    if-lez p1, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    add-int/2addr v0, v2

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->setFinalY(I)V

    .line 2293
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2285
    return-void

    .line 2292
    :cond_0
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    neg-int v0, v0

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    add-int/2addr v0, v2

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2364
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFormatter:Lcom/samsung/android/widget/SemNumberPicker$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFormatter:Lcom/samsung/android/widget/SemNumberPicker$Formatter;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static formatNumberWithLocale(I)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 3403
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string/jumbo v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 4
    .param p0, "ft"    # Ljava/lang/String;

    .prologue
    .line 1841
    const/4 v2, 0x0

    .line 1842
    .local v2, "fontType":Landroid/graphics/Typeface;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1843
    .local v1, "fontFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1845
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1850
    .end local v2    # "fontType":Landroid/graphics/Typeface;
    :cond_0
    :goto_0
    return-object v2

    .line 1846
    .restart local v2    # "fontType":Landroid/graphics/Typeface;
    :catch_0
    move-exception v0

    .line 1847
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2515
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2517
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 2518
    :catch_0
    move-exception v0

    .line 2540
    .local v0, "e":Ljava/lang/NumberFormatException;
    :goto_0
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    return v2

    .line 2522
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 2524
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2525
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2526
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    add-int/2addr v2, v1

    return v2

    .line 2522
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2535
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    .line 2536
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 2300
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    if-le p1, v0, :cond_0

    .line 2301
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 2302
    :cond_0
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    if-ge p1, v0, :cond_1

    .line 2303
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 2305
    :cond_1
    return p1
.end method

.method private hideSoftInput()V
    .locals 3

    .prologue
    .line 1578
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1579
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1580
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1581
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1577
    :cond_0
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 2313
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 2314
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 2313
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2316
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    .line 2317
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    if-le v1, v2, :cond_1

    .line 2318
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    .line 2320
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    .line 2321
    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureCachedScrollSelectorValue(I)V

    .line 2312
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2222
    iget-boolean v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-eqz v2, :cond_1

    .line 2223
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2224
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 2226
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->stopScrollAnimation()V

    .line 2229
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez v2, :cond_2

    .line 2230
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    .line 2232
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDefaultEdgeHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    .line 2234
    const/16 v0, 0xd

    .line 2236
    .local v0, "DEFAULT_TEXT_GAP_HEIGHT":I
    const/high16 v2, 0x41500000    # 13.0f

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 2235
    const/4 v4, 0x1

    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorTextGapHeight:I

    .line 2237
    iget-boolean v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v2, :cond_3

    .line 2238
    const/4 v2, 0x4

    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorTextGapHeight:I

    .line 2241
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mModifiedTxtHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    .line 2242
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    .line 2243
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 2244
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    .line 2243
    sub-float/2addr v2, v3

    float-to-int v2, v2

    .line 2244
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->getBaseline()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mModifiedTxtHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 2243
    sub-int v1, v2, v3

    .line 2245
    .local v1, "adjustTextViewBaseLine":I
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    check-cast v2, Lcom/samsung/android/widget/SemNumberPicker$CustomEditText;

    invoke-virtual {v2, v1}, Lcom/samsung/android/widget/SemNumberPicker$CustomEditText;->setEditTextPosition(I)V

    .line 2247
    iget-boolean v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mReservedStartAnimation:Z

    if-eqz v2, :cond_4

    .line 2248
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAnimationListener:Lcom/samsung/android/widget/SemAnimationListener;

    invoke-virtual {p0, v5, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->startAnimation(ILcom/samsung/android/widget/SemAnimationListener;)V

    .line 2249
    iput-boolean v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mReservedStartAnimation:Z

    .line 2221
    :cond_4
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .prologue
    .line 2101
    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 2102
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    .line 2103
    .local v3, "selectorIndices":[I
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v0

    .line 2104
    .local v0, "current":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 2105
    add-int/lit8 v4, v1, -0x2

    add-int v2, v0, v4

    .line 2106
    .local v2, "selectorIndex":I
    iget-boolean v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 2107
    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getWrappedSelectorIndex(I)I

    move-result v2

    .line 2109
    :cond_0
    aput v2, v3, v1

    .line 2110
    aget v4, v3, v1

    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureCachedScrollSelectorValue(I)V

    .line 2104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2100
    .end local v2    # "selectorIndex":I
    :cond_1
    return-void
.end method

.method private isMeaLanguage()Z
    .locals 3

    .prologue
    .line 3446
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 3447
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 3448
    .local v0, "language":Ljava/lang/String;
    const-string/jumbo v2, "ar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "fa"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3449
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 3451
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private makeMeasureSpec(II)I
    .locals 5
    .param p1, "measureSpec"    # I
    .param p2, "maxSize"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 2059
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 2060
    return p1

    .line 2062
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 2063
    .local v1, "size":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2064
    .local v0, "mode":I
    sparse-switch v0, :sswitch_data_0

    .line 2072
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2066
    :sswitch_0
    return p1

    .line 2068
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    .line 2070
    :sswitch_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    .line 2064
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 7
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 837
    invoke-virtual {p1, v6}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 838
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    sub-int v0, v3, v4

    .line 841
    .local v0, "amountToScroll":I
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    if-nez v3, :cond_0

    return v5

    .line 843
    :cond_0
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int v1, v3, v0

    .line 844
    .local v1, "futureScrollOffset":I
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    sub-int v2, v3, v1

    .line 845
    .local v2, "overshootAdjustment":I
    if-eqz v2, :cond_3

    .line 846
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    rem-int/2addr v2, v3

    .line 847
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    div-int/lit8 v4, v4, 0x2

    if-le v3, v4, :cond_1

    .line 848
    if-lez v2, :cond_2

    .line 849
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    sub-int/2addr v2, v3

    .line 854
    :cond_1
    :goto_0
    add-int/2addr v0, v2

    .line 855
    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->scrollBy(II)V

    .line 856
    return v6

    .line 851
    :cond_2
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    add-int/2addr v2, v3

    goto :goto_0

    .line 858
    :cond_3
    return v5
.end method

.method private needCompareEqualMonthLanguage()Z
    .locals 3

    .prologue
    .line 3457
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 3458
    .local v1, "locale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 3459
    .local v0, "language":Ljava/lang/String;
    const-string/jumbo v2, "vi"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3460
    const/4 v2, 0x1

    return v2

    .line 3462
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private notifyChange(II)V
    .locals 6
    .param p1, "previous"    # I
    .param p2, "current"    # I

    .prologue
    const/4 v5, 0x0

    .line 2409
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-eqz v3, :cond_2

    .line 2424
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOnValueChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;

    if-eqz v3, :cond_1

    .line 2425
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOnValueChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    invoke-interface {v3, v4, p1, v5}, Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;->onValueChange(Lcom/samsung/android/widget/SemNumberPicker;II)V

    .line 2408
    :cond_1
    return-void

    .line 2410
    :cond_2
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    invoke-direct {p0, v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getWrappedSelectorIndex(I)I

    move-result v2

    .line 2411
    .local v2, "value":I
    const/4 v1, 0x0

    .line 2412
    .local v1, "text":Ljava/lang/String;
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    if-gt v2, v3, :cond_3

    .line 2413
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-nez v3, :cond_4

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 2416
    .end local v1    # "text":Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2417
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v3, :cond_0

    .line 2418
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    .line 2419
    .local v0, "provider":Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;
    if-eqz v0, :cond_0

    .line 2420
    const/4 v3, 0x3

    const/16 v4, 0x40

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_0

    .line 2414
    .end local v0    # "provider":Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;
    .restart local v1    # "text":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int v4, v2, v4

    aget-object v1, v3, v4

    .local v1, "text":Ljava/lang/String;
    goto :goto_1
.end method

.method private onScrollStateChange(I)V
    .locals 2
    .param p1, "scrollState"    # I

    .prologue
    .line 2273
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    if-ne v0, p1, :cond_0

    .line 2274
    return-void

    .line 2276
    :cond_0
    iput p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    .line 2277
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOnScrollListener:Lcom/samsung/android/widget/SemNumberPicker$OnScrollListener;

    if-eqz v0, :cond_1

    .line 2278
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOnScrollListener:Lcom/samsung/android/widget/SemNumberPicker$OnScrollListener;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/widget/SemNumberPicker$OnScrollListener;->onScrollStateChange(Lcom/samsung/android/widget/SemNumberPicker;I)V

    .line 2272
    :cond_1
    return-void
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 2
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    .line 2257
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_2

    .line 2258
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2259
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    .line 2261
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    .line 2256
    :cond_1
    :goto_0
    return-void

    .line 2263
    :cond_2
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2264
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    goto :goto_0
.end method

.method private playSoundAndHapticFeedback()V
    .locals 2

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 1310
    return-void
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .locals 4

    .prologue
    .line 2469
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_0

    .line 2470
    new-instance v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    .line 2474
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2468
    return-void

    .line 2472
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 4
    .param p1, "increment"    # Z
    .param p2, "delayMillis"    # J

    .prologue
    const/4 v2, 0x1

    .line 2435
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 2436
    new-instance v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    .line 2440
    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    .line 2441
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_FIRST_SCROLL:Z

    .line 2442
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;->-wrap0(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 2443
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {v0, v1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2434
    return-void

    .line 2438
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private removeAllCallbacks()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2490
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    if-eqz v0, :cond_0

    .line 2491
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    .line 2492
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    .line 2494
    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_FIRST_SCROLL:Z

    .line 2495
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_SECOND_SCROLL:Z

    .line 2496
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_THIRD_SCROLL:Z

    .line 2497
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    .line 2498
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressUpdateInterval:J

    .line 2499
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_1

    .line 2500
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2502
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSetSelectionCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$SetSelectionCommand;

    if-eqz v0, :cond_2

    .line 2503
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSetSelectionCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$SetSelectionCommand;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2505
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_3

    .line 2506
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2508
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->cancel()V

    .line 2489
    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .locals 2

    .prologue
    .line 2481
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_0

    .line 2482
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2480
    :cond_0
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2450
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    if-eqz v0, :cond_0

    .line 2451
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    .line 2452
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    .line 2454
    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_FIRST_SCROLL:Z

    .line 2455
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_SECOND_SCROLL:Z

    .line 2456
    iput-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressed_THIRD_SCROLL:Z

    .line 2457
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeValueBy:I

    .line 2458
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressUpdateInterval:J

    .line 2459
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_1

    .line 2460
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2449
    :cond_1
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 2
    .param p1, "minSize"    # I
    .param p2, "measuredSize"    # I
    .param p3, "measureSpec"    # I

    .prologue
    .line 2088
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 2089
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2090
    .local v0, "desiredWidth":I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    return v1

    .line 2092
    .end local v0    # "desiredWidth":I
    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 2
    .param p1, "current"    # I
    .param p2, "notifyChange"    # Z

    .prologue
    .line 2121
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    if-ne v1, p1, :cond_1

    .line 2122
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->isMeaLanguage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2123
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    .line 2124
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 2126
    :cond_0
    return-void

    .line 2130
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_3

    .line 2131
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 2136
    :goto_0
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    .line 2137
    .local v0, "previous":I
    iput p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    .line 2138
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    .line 2139
    if-eqz p2, :cond_2

    .line 2140
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->notifyChange(II)V

    .line 2142
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    .line 2143
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 2120
    return-void

    .line 2133
    .end local v0    # "previous":I
    :cond_3
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2134
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0
.end method

.method private showSoftInput()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1566
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1567
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1568
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1569
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1570
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1565
    :cond_0
    return-void
.end method

.method private showSoftInputForWindowFocused()V
    .locals 4

    .prologue
    .line 1542
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    new-instance v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$3;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V

    .line 1559
    const-wide/16 v2, 0x14

    .line 1542
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1541
    return-void
.end method

.method private stopScrollAnimation()V
    .locals 1

    .prologue
    .line 1920
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1921
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1922
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1925
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    .line 1919
    return-void

    .line 1923
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    goto :goto_0
.end method

.method private tryComputeMaxWidth()V
    .locals 12

    .prologue
    .line 1589
    iget-boolean v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mComputeMaxWidth:Z

    if-nez v9, :cond_0

    .line 1590
    return-void

    .line 1592
    :cond_0
    const/4 v5, 0x0

    .line 1593
    .local v5, "maxTextWidth":I
    const/4 v4, 0x0

    .line 1595
    .local v4, "maxTextLength":I
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1596
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-nez v9, :cond_7

    .line 1597
    const/4 v3, 0x0

    .line 1598
    .local v3, "maxDigitWidth":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v9, 0x9

    if-gt v2, v9, :cond_2

    .line 1599
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1600
    .local v1, "digitWidth":F
    cmpl-float v9, v1, v3

    if-lez v9, :cond_1

    .line 1601
    move v3, v1

    .line 1598
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1604
    .end local v1    # "digitWidth":F
    :cond_2
    const/4 v6, 0x0

    .line 1605
    .local v6, "numberOfDigits":I
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    .line 1606
    .local v0, "current":I
    :goto_1
    if-lez v0, :cond_3

    .line 1607
    add-int/lit8 v6, v6, 0x1

    .line 1608
    div-int/lit8 v0, v0, 0xa

    goto :goto_1

    .line 1610
    :cond_3
    int-to-float v9, v6

    mul-float/2addr v9, v3

    float-to-int v5, v9

    .line 1611
    move v4, v6

    .line 1622
    .end local v0    # "current":I
    .end local v3    # "maxDigitWidth":F
    .end local v6    # "numberOfDigits":I
    :cond_4
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v5, v9

    .line 1623
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/view/View;->isHighContrastTextEnabled()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1624
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->getHCTStrokeWidth()F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v9, v10

    add-int/lit8 v10, v4, 0x2

    mul-int/2addr v9, v10

    add-int/2addr v5, v9

    .line 1627
    :cond_5
    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxWidth:I

    if-eq v9, v5, :cond_6

    .line 1628
    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinWidth:I

    if-le v5, v9, :cond_9

    .line 1629
    iput v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxWidth:I

    .line 1633
    :goto_2
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    .line 1636
    :cond_6
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1588
    return-void

    .line 1613
    .end local v2    # "i":I
    :cond_7
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    array-length v8, v9

    .line 1614
    .local v8, "valueCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v8, :cond_4

    .line 1615
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 1616
    .local v7, "textWidth":F
    int-to-float v9, v5

    cmpl-float v9, v7, v9

    if-lez v9, :cond_8

    .line 1617
    float-to-int v5, v7

    .line 1618
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    .line 1614
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1631
    .end local v7    # "textWidth":F
    .end local v8    # "valueCount":I
    :cond_9
    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinWidth:I

    iput v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxWidth:I

    goto :goto_2
.end method

.method private updateInputTextView()Z
    .locals 4

    .prologue
    .line 2393
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 2395
    .local v0, "text":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2401
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 2394
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v2, v3

    aget-object v0, v1, v2

    goto :goto_0

    .line 2396
    .restart local v0    # "text":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2397
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 2398
    const/4 v1, 0x1

    return v1
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2368
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2369
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 2370
    .local v0, "current":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    if-ne v2, v0, :cond_1

    .line 2372
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    .line 2367
    :goto_0
    return-void

    .line 2375
    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->setValueInternal(IZ)V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1316
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    .line 1317
    .local v1, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1318
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    .line 1319
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1320
    return-void

    .line 1323
    :cond_0
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1324
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 1325
    .local v0, "currentScrollerY":I
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 1326
    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    .line 1328
    :cond_1
    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->scrollBy(II)V

    .line 1329
    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    .line 1330
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1331
    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollerFinished(Landroid/widget/Scroller;)V

    .line 1315
    :goto_0
    return-void

    .line 1333
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 1404
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 1409
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x100

    const/16 v7, 0x80

    const/16 v6, 0x40

    const/4 v5, -0x1

    .line 1249
    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    .line 1252
    .local v1, "eventY":I
    iget-boolean v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v4, :cond_2

    .line 1254
    :cond_0
    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOverTopSelectionDividerTop:I

    if-gt v4, v1, :cond_3

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    if-ge v1, v4, :cond_3

    .line 1255
    const/4 v2, 0x2

    .line 1265
    .local v2, "hoveredVirtualViewId":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1267
    .local v0, "action":I
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    .line 1268
    .local v3, "provider":Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;
    packed-switch v0, :pswitch_data_0

    .line 1296
    .end local v0    # "action":I
    .end local v1    # "eventY":I
    .end local v2    # "hoveredVirtualViewId":I
    .end local v3    # "provider":Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;
    :cond_1
    :goto_1
    :pswitch_0
    const/4 v4, 0x0

    return v4

    .line 1253
    .restart local v1    # "eventY":I
    :cond_2
    const/4 v2, 0x3

    .line 1252
    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_0

    .line 1256
    .end local v2    # "hoveredVirtualViewId":I
    :cond_3
    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOverTopSelectionDividerTop:I

    if-ge v1, v4, :cond_4

    .line 1257
    const/4 v2, 0x1

    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_0

    .line 1258
    .end local v2    # "hoveredVirtualViewId":I
    :cond_4
    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    if-ge v4, v1, :cond_5

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBelowBottomSelectionDividerBottom:I

    if-gt v1, v4, :cond_5

    .line 1259
    const/4 v2, 0x4

    .line 1258
    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_0

    .line 1260
    .end local v2    # "hoveredVirtualViewId":I
    :cond_5
    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBelowBottomSelectionDividerBottom:I

    if-le v1, v4, :cond_6

    .line 1261
    const/4 v2, 0x5

    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_0

    .line 1263
    .end local v2    # "hoveredVirtualViewId":I
    :cond_6
    const/4 v2, 0x3

    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_0

    .line 1270
    .restart local v0    # "action":I
    .restart local v3    # "provider":Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;
    :pswitch_1
    invoke-virtual {v3, v2, v7}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1272
    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    .line 1273
    invoke-virtual {v3, v2, v6, v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 1277
    :pswitch_2
    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    if-eq v4, v2, :cond_1

    .line 1278
    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    if-eq v4, v5, :cond_1

    .line 1280
    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    .line 1279
    invoke-virtual {v3, v4, v8}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1282
    invoke-virtual {v3, v2, v7}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1284
    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    .line 1285
    invoke-virtual {v3, v2, v6, v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 1290
    :pswitch_3
    invoke-virtual {v3, v2, v8}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1292
    iput v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    goto :goto_1

    .line 1268
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1095
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1096
    .local v0, "keyCode":I
    sparse-switch v0, :sswitch_data_0

    .line 1233
    :cond_0
    :goto_0
    return v5

    .line 1099
    :sswitch_0
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v3, :cond_2

    .line 1102
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 1103
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v3, v7, :cond_4

    .line 1104
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v3, :cond_3

    .line 1105
    return v5

    .line 1100
    :cond_2
    return v5

    .line 1107
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1108
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 1109
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->showSoftInput()V

    .line 1110
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    goto :goto_0

    .line 1111
    :cond_4
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v3, v9, :cond_5

    .line 1112
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1113
    invoke-direct {p0, v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    .line 1114
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_0

    .line 1115
    iput v7, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    goto :goto_0

    .line 1118
    :cond_5
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v3, v8, :cond_6

    .line 1119
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1120
    invoke-direct {p0, v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    .line 1121
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1122
    iput v7, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    goto :goto_0

    .line 1125
    :cond_6
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_8

    .line 1126
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1127
    invoke-direct {p0, v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByTwo(Z)V

    .line 1128
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v3, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    if-ne v3, v4, :cond_7

    .line 1129
    iput v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    goto/16 :goto_0

    .line 1130
    :cond_7
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    if-ne v3, v4, :cond_0

    .line 1131
    iput v7, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    goto/16 :goto_0

    .line 1134
    :cond_8
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v3, v6, :cond_0

    .line 1135
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1136
    invoke-direct {p0, v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByTwo(Z)V

    .line 1137
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v3, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x3

    if-ne v3, v4, :cond_9

    .line 1138
    iput v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    goto/16 :goto_0

    .line 1139
    :cond_9
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1140
    iput v7, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    goto/16 :goto_0

    .line 1148
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 1149
    const/16 v3, 0x16

    if-ne v0, v3, :cond_b

    .line 1150
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    const/16 v4, 0x42

    invoke-virtual {v3, v4}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v2

    .line 1151
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_a

    .line 1152
    const/16 v3, 0x42

    invoke-virtual {v2, v3}, Landroid/view/View;->requestFocus(I)Z

    .line 1154
    :cond_a
    return v6

    .line 1155
    .end local v2    # "v":Landroid/view/View;
    :cond_b
    const/16 v3, 0x15

    if-ne v0, v3, :cond_0

    .line 1156
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v2

    .line 1157
    .restart local v2    # "v":Landroid/view/View;
    if-eqz v2, :cond_c

    .line 1158
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/view/View;->requestFocus(I)Z

    .line 1160
    :cond_c
    return v6

    .line 1166
    .end local v2    # "v":Landroid/view/View;
    :sswitch_2
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v3, :cond_d

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v3, :cond_e

    .line 1169
    :cond_d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1c

    .line 1170
    const/16 v3, 0x14

    if-ne v0, v3, :cond_15

    .line 1171
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v3, v8, :cond_f

    .line 1172
    iput v7, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1173
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 1174
    return v6

    .line 1167
    :cond_e
    return v5

    .line 1175
    :cond_f
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v3, v7, :cond_11

    .line 1176
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v3, :cond_10

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v4

    if-ne v3, v4, :cond_10

    .line 1177
    return v5

    .line 1179
    :cond_10
    iput v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1180
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 1181
    return v6

    .line 1182
    :cond_11
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v3, v9, :cond_13

    .line 1183
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v3, :cond_12

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_12

    .line 1184
    return v5

    .line 1186
    :cond_12
    const/4 v3, 0x5

    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1187
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 1188
    return v6

    .line 1189
    :cond_13
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v3, v6, :cond_14

    .line 1190
    iput v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1191
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 1192
    return v6

    .line 1193
    :cond_14
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 1194
    return v5

    .line 1196
    :cond_15
    const/16 v3, 0x13

    if-ne v0, v3, :cond_0

    .line 1197
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v3, v8, :cond_17

    .line 1198
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v3, :cond_16

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_16

    .line 1199
    return v5

    .line 1201
    :cond_16
    iput v6, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1202
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 1203
    return v6

    .line 1204
    :cond_17
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v3, v7, :cond_19

    .line 1205
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v3, :cond_18

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v4

    if-ne v3, v4, :cond_18

    .line 1206
    return v5

    .line 1208
    :cond_18
    iput v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1209
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 1210
    return v6

    .line 1211
    :cond_19
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v3, v9, :cond_1a

    .line 1212
    iput v7, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1213
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 1214
    return v6

    .line 1215
    :cond_1a
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v3, v6, :cond_1b

    .line 1216
    return v5

    .line 1217
    :cond_1b
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 1218
    iput v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1219
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 1220
    return v6

    .line 1223
    :cond_1c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 1224
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1225
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    .line 1226
    .local v1, "provider":Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;
    if-eqz v1, :cond_1d

    .line 1227
    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/16 v4, 0x40

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    .line 1229
    :cond_1d
    return v6

    .line 1096
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_2
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 819
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 820
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 821
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->hideSoftInput()V

    .line 822
    invoke-virtual {p0, v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->setEditTextMode(Z)V

    .line 823
    const/4 v0, 0x1

    return v0

    .line 825
    :cond_1
    return v2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1030
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1031
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1037
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    return v1

    .line 1034
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    goto :goto_0

    .line 1031
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1238
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1239
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1237
    :goto_0
    :pswitch_0
    return-void

    .line 1242
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    goto :goto_0

    .line 1239
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .prologue
    .line 2045
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAccessibilityNodeProvider:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_0

    .line 2046
    new-instance v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAccessibilityNodeProvider:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    .line 2048
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAccessibilityNodeProvider:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    return-object v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1780
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 3422
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 3483
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 1742
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 3478
    const/4 v0, 0x0

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .prologue
    .line 3473
    const/4 v0, 0x0

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 1704
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .prologue
    .line 3468
    const/4 v0, 0x0

    return v0
.end method

.method public getToggle()Z
    .locals 1

    .prologue
    .line 721
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 1695
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .prologue
    .line 1648
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    return v0
.end method

.method public isEditTextMode()Z
    .locals 1

    .prologue
    .line 770
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    return v0
.end method

.method public isEditTextModeNotAmPm()Z
    .locals 1

    .prologue
    .line 1502
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v0, :cond_1

    .line 1505
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1503
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 1934
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v1, 0x1

    .line 1042
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCustomTypefaceSet:Z

    if-eqz v0, :cond_0

    .line 1043
    return-void

    .line 1045
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->isMeaLanguage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1046
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 1047
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDefaultTypeface:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    .line 1048
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDefaultTypeface:Landroid/graphics/Typeface;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    .line 1049
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1050
    return-void

    .line 1052
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 1053
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1054
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    .line 1041
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1930
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    .line 1929
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 26
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getRight()I

    move-result v10

    .line 1941
    .local v10, "mRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 1942
    .local v9, "mLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 1944
    .local v8, "mBottom":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mHideWheelUntilFocused:Z

    move/from16 v22, v0

    if-eqz v22, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v17

    .line 1945
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    move/from16 v22, v0

    mul-int/lit8 v6, v22, 0x2

    .line 1946
    .local v6, "div_value":I
    sub-int v22, v10, v9

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v18, v22, v23

    .line 1947
    .local v18, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v19, v0

    .line 1948
    .local v19, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    move/from16 v22, v0

    add-int v22, v22, v6

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v21, v0

    .line 1950
    .local v21, "y_max":F
    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4

    .line 1951
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    move/from16 v22, v0

    if-nez v22, :cond_4

    .line 1952
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 1953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getDrawableState()[I

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOverTopSelectionDividerTop:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v10, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1957
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 1958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getDrawableState()[I

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    move/from16 v23, v0

    .line 1960
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBelowBottomSelectionDividerBottom:I

    move/from16 v24, v0

    .line 1959
    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v10, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1963
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 1964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getDrawableState()[I

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOverTopSelectionDividerTop:I

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v10, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1968
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    move/from16 v22, v0

    const/16 v23, 0x5

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 1969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getDrawableState()[I

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBelowBottomSelectionDividerBottom:I

    move/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v10, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1975
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 1976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getDrawableState()[I

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v10, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1982
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    move-object/from16 v16, v0

    .line 1983
    .local v16, "selectorIndices":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v7, v0, :cond_e

    .line 1984
    aget v15, v16, v7

    .line 1985
    .local v15, "selectorIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1992
    .local v14, "scrollSelectorValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x2

    add-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v22, v19, v22

    if-ltz v22, :cond_b

    .line 1993
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x2

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpg-float v22, v19, v22

    if-gtz v22, :cond_b

    .line 1994
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    move/from16 v22, v0

    if-nez v22, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_5

    .line 1995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1997
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->getColor()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextColor:I

    move/from16 v23, v0

    xor-int v22, v22, v23

    shl-int/lit8 v22, v22, 0x8

    if-eqz v22, :cond_6

    .line 1998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextColor:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setColor(I)V

    .line 2009
    :cond_6
    :goto_2
    sub-float v22, v21, v19

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v22

    sub-float v22, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v22, v23

    int-to-float v0, v6

    move/from16 v23, v0

    div-float v12, v22, v23

    .line 2010
    .local v12, "ratioConst":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v11

    .line 2011
    .local v11, "ratio":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v5

    .line 2012
    .local v5, "alphaRatio":F
    const v22, 0x3f4ccccd    # 0.8f

    mul-float v22, v22, v5

    const v23, 0x3e4ccccd    # 0.2f

    add-float v4, v22, v23

    .line 2013
    .local v4, "alpha":F
    const/16 v22, 0x0

    cmpg-float v22, v4, v22

    if-gez v22, :cond_7

    .line 2014
    const/4 v4, 0x0

    .line 2016
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    const/high16 v23, 0x437f0000    # 255.0f

    mul-float v23, v23, v4

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2018
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextSize:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSubTextSize:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSubTextSize:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextSize:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v13, v22, v23

    .line 2019
    .local v13, "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->descent()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Paint;->ascent()F

    move-result v23

    sub-float v22, v22, v23

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v22, v22, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Paint;->descent()F

    move-result v23

    sub-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    .line 2020
    .local v20, "yPos":I
    if-eqz v17, :cond_d

    const/16 v22, 0x2

    move/from16 v0, v22

    if-eq v7, v0, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    move/from16 v22, v0

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    move/from16 v22, v0

    if-eqz v22, :cond_d

    .line 2021
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2022
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v13, v13, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 2023
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2024
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2031
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v19, v19, v22

    .line 1983
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 1944
    .end local v4    # "alpha":F
    .end local v5    # "alphaRatio":F
    .end local v6    # "div_value":I
    .end local v7    # "i":I
    .end local v11    # "ratio":F
    .end local v12    # "ratioConst":F
    .end local v13    # "scale":F
    .end local v14    # "scrollSelectorValue":Ljava/lang/String;
    .end local v15    # "selectorIndex":I
    .end local v16    # "selectorIndices":[I
    .end local v18    # "x":F
    .end local v19    # "y":F
    .end local v20    # "yPos":I
    .end local v21    # "y_max":F
    :cond_a
    const/16 v17, 0x1

    .local v17, "showSelectorWheel":Z
    goto/16 :goto_0

    .line 2001
    .end local v17    # "showSelectorWheel":Z
    .restart local v6    # "div_value":I
    .restart local v7    # "i":I
    .restart local v14    # "scrollSelectorValue":Ljava/lang/String;
    .restart local v15    # "selectorIndex":I
    .restart local v16    # "selectorIndices":[I
    .restart local v18    # "x":F
    .restart local v19    # "y":F
    .restart local v21    # "y_max":F
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    move/from16 v22, v0

    if-nez v22, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_c

    .line 2002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2004
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->getColor()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSubTextColor:I

    move/from16 v23, v0

    xor-int v22, v22, v23

    shl-int/lit8 v22, v22, 0x8

    if-eqz v22, :cond_6

    .line 2005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSubTextColor:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_2

    .line 2025
    .restart local v4    # "alpha":F
    .restart local v5    # "alphaRatio":F
    .restart local v11    # "ratio":F
    .restart local v12    # "ratioConst":F
    .restart local v13    # "scale":F
    .restart local v20    # "yPos":I
    :cond_d
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v7, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getVisibility()I

    move-result v22

    if-eqz v22, :cond_9

    .line 2026
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2027
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v13, v13, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 2028
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2029
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_3

    .line 1939
    .end local v4    # "alpha":F
    .end local v5    # "alphaRatio":F
    .end local v11    # "ratio":F
    .end local v12    # "ratioConst":F
    .end local v13    # "scale":F
    .end local v14    # "scrollSelectorValue":Ljava/lang/String;
    .end local v15    # "selectorIndex":I
    .end local v20    # "yPos":I
    :cond_e
    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 6
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, -0x1

    .line 1060
    if-nez p1, :cond_1

    .line 1061
    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1090
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 1059
    return-void

    .line 1063
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v1, :cond_5

    .line 1069
    :cond_2
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1070
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v1, v3, :cond_3

    .line 1071
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 1072
    iput v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1079
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1080
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    .line 1081
    .local v0, "provider":Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;
    if-eqz v0, :cond_0

    .line 1082
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v1, :cond_7

    .line 1085
    :cond_4
    :goto_2
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1086
    const/16 v2, 0x40

    .line 1085
    invoke-virtual {v0, v1, v2, v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_0

    .line 1064
    .end local v0    # "provider":Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;
    :cond_5
    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1065
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 1066
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    .line 1074
    :cond_6
    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    goto :goto_1

    .line 1083
    .restart local v0    # "provider":Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;
    :cond_7
    iput v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    goto :goto_2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2037
    const-class v0, Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 2038
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 2039
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    .line 2040
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    .line 2036
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 880
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-eqz v1, :cond_2

    .line 881
    :cond_1
    return v5

    .line 883
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 884
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 932
    return v5

    .line 886
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    .line 887
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 888
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownEventY:F

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    .line 889
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownEventTime:J

    .line 890
    iput-boolean v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    .line 891
    iput-boolean v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    .line 893
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownEventY:F

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    .line 894
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    if-nez v1, :cond_3

    .line 895
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {v1, v6}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->buttonPressDelayed(I)V

    .line 905
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 906
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_6

    .line 907
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 908
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 909
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    if-ne v1, v6, :cond_4

    .line 910
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 911
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 913
    :cond_4
    invoke-direct {p0, v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    .line 929
    :goto_1
    return v4

    .line 898
    :cond_5
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownEventY:F

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 899
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    if-nez v1, :cond_3

    .line 900
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {v1, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_0

    .line 914
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_7

    .line 915
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 916
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    .line 917
    :cond_7
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownEventY:F

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_8

    .line 918
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->hideSoftInput()V

    .line 920
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    .line 919
    invoke-direct {p0, v5, v2, v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 921
    :cond_8
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownEventY:F

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_9

    .line 922
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->hideSoftInput()V

    .line 924
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    .line 923
    invoke-direct {p0, v4, v2, v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 926
    :cond_9
    iput-boolean v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    .line 927
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->postBeginSoftInputOnLongPressCommand()V

    goto :goto_1

    .line 884
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onLayout(ZIIII)V
    .locals 12
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 780
    iget-object v8, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 781
    .local v7, "msrdWdth":I
    iget-object v8, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 784
    .local v6, "msrdHght":I
    iget-object v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 785
    .local v3, "inptTxtMsrdWdth":I
    iget-object v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v9, v6

    iget v10, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mHeightRatio:F

    mul-float/2addr v9, v10

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 786
    .local v2, "inptTxtMsrdHght":I
    iput v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mModifiedTxtHeight:I

    .line 787
    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .line 788
    .local v1, "inptTxtLeft":I
    sub-int v8, v6, v2

    div-int/lit8 v5, v8, 0x2

    .line 789
    .local v5, "inptTxtTop":I
    add-int v4, v1, v3

    .line 790
    .local v4, "inptTxtRight":I
    add-int v0, v5, v2

    .line 791
    .local v0, "inptTxtBottom":I
    iget-object v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8, v1, v5, v4, v0}, Landroid/view/View;->layout(IIII)V

    .line 793
    if-eqz p1, :cond_0

    .line 795
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->initializeSelectorWheel()V

    .line 796
    iput v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    .line 797
    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    .line 798
    iget v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    sub-int v8, v5, v8

    iput v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOverTopSelectionDividerTop:I

    .line 799
    iget v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    add-int/2addr v8, v0

    iput v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBelowBottomSelectionDividerBottom:I

    .line 779
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 806
    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxWidth:I

    invoke-direct {p0, p1, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->makeMeasureSpec(II)I

    move-result v2

    .line 807
    .local v2, "newWidthMeasureSpec":I
    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxHeight:I

    invoke-direct {p0, p2, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->makeMeasureSpec(II)I

    move-result v1

    .line 808
    .local v1, "newHeightMeasureSpec":I
    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v2, v1}, Lcom/samsung/android/widget/SemNumberPicker;->superOnMeasure(II)V

    .line 810
    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinWidth:I

    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 812
    .local v3, "widthSize":I
    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinHeight:I

    iget-object v5, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v0

    .line 814
    .local v0, "heightSize":I
    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v3, v0}, Lcom/samsung/android/widget/SemNumberPicker;->setMeasuredDimensionWrapper(II)V

    .line 804
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 937
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v9}, Landroid/view/View;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v9, :cond_1

    :cond_0
    iget-boolean v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-eqz v9, :cond_2

    .line 938
    :cond_1
    const/4 v9, 0x0

    return v9

    .line 940
    :cond_2
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v9, :cond_3

    .line 941
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 943
    :cond_3
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 944
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 945
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1025
    :cond_4
    :goto_0
    const/4 v9, 0x1

    return v9

    .line 947
    :pswitch_0
    iget-boolean v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    if-nez v9, :cond_4

    .line 950
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 951
    .local v1, "currentMoveY":F
    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_6

    .line 952
    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownEventY:F

    sub-float v9, v1, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v2, v9

    .line 953
    .local v2, "deltaDownY":I
    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTouchSlop:I

    if-le v2, v9, :cond_5

    .line 954
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    .line 955
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    .line 962
    .end local v2    # "deltaDownY":I
    :cond_5
    :goto_1
    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    goto :goto_0

    .line 958
    :cond_6
    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    sub-float v9, v1, v9

    float-to-int v3, v9

    .line 959
    .local v3, "deltaMoveY":I
    const/4 v9, 0x0

    invoke-virtual {p0, v9, v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->scrollBy(II)V

    .line 960
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 965
    .end local v1    # "currentMoveY":F
    .end local v3    # "deltaMoveY":I
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->removeBeginSoftInputCommand()V

    .line 966
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->removeChangeCurrentByOneFromLongPress()V

    .line 967
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->cancel()V

    .line 968
    iget-object v8, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 969
    .local v8, "velocityTracker":Landroid/view/VelocityTracker;
    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaximumFlingVelocity:I

    int-to-float v9, v9

    const/16 v10, 0x3e8

    invoke-virtual {v8, v10, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 970
    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v9

    float-to-int v7, v9

    .line 971
    .local v7, "initialVelocity":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v6, v9

    .line 972
    .local v6, "eventY":I
    int-to-float v9, v6

    iget v10, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownEventY:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v3, v9

    .line 973
    .restart local v3    # "deltaMoveY":I
    iget-boolean v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v9, :cond_7

    iget-boolean v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    if-eqz v9, :cond_7

    .line 974
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    .line 975
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    .line 1017
    :goto_2
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 1018
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 976
    :cond_7
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinimumFlingVelocity:I

    if-le v9, v10, :cond_9

    .line 977
    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTouchSlop:I

    if-gt v3, v9, :cond_8

    iget-boolean v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    if-eqz v9, :cond_8

    .line 978
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    .line 979
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->performClick()V

    .line 980
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    goto :goto_2

    .line 982
    :cond_8
    invoke-direct {p0, v7}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->fling(I)V

    .line 983
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    goto :goto_2

    .line 986
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownEventTime:J

    sub-long v4, v10, v12

    .line 987
    .local v4, "deltaTime":J
    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTouchSlop:I

    if-gt v3, v9, :cond_f

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v9

    int-to-long v10, v9

    cmp-long v9, v4, v10

    if-gez v9, :cond_f

    .line 988
    iget-boolean v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    if-eqz v9, :cond_a

    .line 989
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    .line 990
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->performClick()V

    .line 1015
    :goto_3
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    goto :goto_2

    .line 992
    :cond_a
    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBelowBottomSelectionDividerBottom:I

    if-le v6, v9, :cond_b

    .line 993
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByTwo(Z)V

    .line 994
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

    .line 995
    const/4 v10, 0x1

    .line 994
    invoke-virtual {v9, v10}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->buttonTapped(I)V

    goto :goto_3

    .line 996
    :cond_b
    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOverTopSelectionDividerTop:I

    if-ge v6, v9, :cond_c

    .line 997
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByTwo(Z)V

    .line 998
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

    .line 999
    const/4 v10, 0x2

    .line 998
    invoke-virtual {v9, v10}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->buttonTapped(I)V

    goto :goto_3

    .line 1000
    :cond_c
    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    if-le v6, v9, :cond_d

    .line 1001
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    .line 1002
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

    .line 1003
    const/4 v10, 0x1

    .line 1002
    invoke-virtual {v9, v10}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->buttonTapped(I)V

    goto :goto_3

    .line 1004
    :cond_d
    iget v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    if-ge v6, v9, :cond_e

    .line 1005
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    .line 1006
    iget-object v9, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;

    .line 1007
    const/4 v10, 0x2

    .line 1006
    invoke-virtual {v9, v10}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$PressedStateHelper;->buttonTapped(I)V

    goto :goto_3

    .line 1009
    :cond_e
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    goto :goto_3

    .line 1013
    :cond_f
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    goto :goto_3

    .line 1021
    .end local v3    # "deltaMoveY":I
    .end local v4    # "deltaTime":J
    .end local v6    # "eventY":I
    .end local v7    # "initialVelocity":I
    .end local v8    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    .line 1022
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    goto/16 :goto_0

    .line 945
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v1, 0x1

    .line 863
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->showSoftInputForWindowFocused()V

    .line 867
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez v0, :cond_3

    .line 868
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 869
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 871
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 872
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 874
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    .line 862
    :cond_3
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 774
    return-void
.end method

.method public performClick()V
    .locals 1

    .prologue
    .line 1510
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v0, :cond_0

    .line 1511
    return-void

    .line 1513
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->showSoftInput()V

    .line 1509
    return-void
.end method

.method public performClick(Z)V
    .locals 2
    .param p1, "toIncrement"    # Z

    .prologue
    .line 1518
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v0, :cond_1

    .line 1519
    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    if-ne v0, v1, :cond_0

    .line 1520
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    .line 1517
    :goto_0
    return-void

    .line 1522
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    goto :goto_0

    .line 1525
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    goto :goto_0
.end method

.method public performLongClick()V
    .locals 1

    .prologue
    .line 1531
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    .line 1532
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v0, :cond_0

    .line 1533
    return-void

    .line 1535
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->showSoftInput()V

    .line 1530
    return-void
.end method

.method public scrollBy(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 1349
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    .line 1350
    .local v0, "selectorIndices":[I
    if-eqz p2, :cond_0

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    if-gtz v1, :cond_1

    .line 1351
    :cond_0
    return-void

    .line 1353
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    if-le v1, v2, :cond_2

    .line 1354
    aget v1, v0, v4

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    if-gt v1, v2, :cond_2

    .line 1355
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    sub-int p2, v1, v2

    .line 1356
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 1357
    iput-boolean v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    .line 1358
    return-void

    .line 1361
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    if-ge v1, v2, :cond_3

    .line 1362
    aget v1, v0, v4

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    if-lt v1, v2, :cond_3

    .line 1363
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    sub-int p2, v1, v2

    .line 1364
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 1365
    iput-boolean v5, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    .line 1366
    return-void

    .line 1369
    :cond_3
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    .line 1370
    :cond_4
    :goto_0
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorTextGapHeight:I

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_7

    .line 1371
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    .line 1372
    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->decrementSelectorIndices([I)V

    .line 1373
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez v1, :cond_5

    .line 1374
    aget v1, v0, v4

    invoke-direct {p0, v1, v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->setValueInternal(IZ)V

    .line 1375
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressCount:I

    if-lez v1, :cond_6

    .line 1376
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressCount:I

    .line 1381
    :cond_5
    :goto_1
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v1, :cond_4

    aget v1, v0, v4

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    if-gt v1, v2, :cond_4

    .line 1382
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1378
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->playSoundAndHapticFeedback()V

    goto :goto_1

    .line 1385
    :cond_7
    :goto_2
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    iget v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorTextGapHeight:I

    sub-int/2addr v2, v3

    neg-int v2, v2

    if-gt v1, v2, :cond_a

    .line 1386
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    .line 1387
    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->incrementSelectorIndices([I)V

    .line 1388
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez v1, :cond_8

    .line 1389
    aget v1, v0, v4

    invoke-direct {p0, v1, v5}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->setValueInternal(IZ)V

    .line 1390
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressCount:I

    if-lez v1, :cond_9

    .line 1391
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressCount:I

    .line 1396
    :cond_8
    :goto_3
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v1, :cond_7

    aget v1, v0, v4

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    if-lt v1, v2, :cond_7

    .line 1397
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    goto :goto_2

    .line 1393
    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->playSoundAndHapticFeedback()V

    goto :goto_3

    .line 1348
    :cond_a
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 2
    .param p1, "displayedValues"    # [Ljava/lang/String;

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1794
    return-void

    .line 1796
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    .line 1797
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1799
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 1804
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    .line 1805
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    .line 1806
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    .line 1792
    return-void

    .line 1802
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRawInputType(I)V

    goto :goto_0
.end method

.method public setEditTextMode(Z)V
    .locals 5
    .param p1, "isEditTextMode"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 731
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-ne v1, p1, :cond_0

    .line 732
    return-void

    .line 735
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    .line 736
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v1, :cond_4

    .line 757
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 758
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 760
    :cond_2
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 762
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 763
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOnEditTextModeChangedListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

    if-eqz v1, :cond_3

    .line 764
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOnEditTextModeChangedListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;->onEditTextModeChanged(Lcom/samsung/android/widget/SemNumberPicker;Z)V

    .line 730
    :cond_3
    return-void

    .line 738
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    .line 739
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    .line 740
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez v1, :cond_5

    .line 741
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    .line 742
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 743
    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    .line 746
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    const/high16 v2, 0x40000

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 747
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    .line 748
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 749
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 750
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    .line 751
    .local v0, "provider":Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;
    if-eqz v0, :cond_2

    .line 752
    const/4 v1, 0x3

    .line 753
    const/16 v2, 0x80

    .line 752
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1339
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1341
    if-nez p1, :cond_0

    iget v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mScrollState:I

    if-eqz v0, :cond_0

    .line 1342
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->stopScrollAnimation()V

    .line 1343
    invoke-direct {p0, v1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    .line 1338
    :cond_0
    return-void
.end method

.method public setFormatter(Lcom/samsung/android/widget/SemNumberPicker$Formatter;)V
    .locals 1
    .param p1, "formatter"    # Lcom/samsung/android/widget/SemNumberPicker$Formatter;

    .prologue
    .line 1457
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFormatter:Lcom/samsung/android/widget/SemNumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    .line 1458
    return-void

    .line 1460
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFormatter:Lcom/samsung/android/widget/SemNumberPicker$Formatter;

    .line 1461
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    .line 1462
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    .line 1456
    return-void
.end method

.method public setImeOptions(I)V
    .locals 1
    .param p1, "imeOptions"    # I

    .prologue
    .line 689
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 688
    return-void
.end method

.method public setMaxInputLength(I)V
    .locals 6
    .param p1, "limit"    # I

    .prologue
    const/4 v5, 0x0

    .line 3411
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    .line 3412
    .local v1, "filterArr":[Landroid/text/InputFilter;
    aget-object v0, v1, v5

    .line 3413
    .local v0, "backupFilter":Landroid/text/InputFilter;
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 3414
    .local v2, "lengthFilter":Landroid/text/InputFilter;
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/text/InputFilter;

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 3410
    return-void
.end method

.method public setMaxValue(I)V
    .locals 3
    .param p1, "maxValue"    # I

    .prologue
    const/4 v0, 0x0

    .line 1756
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    if-ne v1, p1, :cond_0

    .line 1757
    return-void

    .line 1759
    :cond_0
    if-gez p1, :cond_1

    .line 1760
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "maxValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1762
    :cond_1
    iput p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    .line 1763
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    if-ge v1, v2, :cond_2

    .line 1764
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    .line 1766
    :cond_2
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1767
    .local v0, "wrapSelectorWheel":Z
    :cond_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->setWrapSelectorWheel(Z)V

    .line 1768
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    .line 1769
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    .line 1770
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    .line 1771
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 1755
    return-void
.end method

.method public setMinValue(I)V
    .locals 3
    .param p1, "minValue"    # I

    .prologue
    const/4 v0, 0x0

    .line 1718
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    if-ne v1, p1, :cond_0

    .line 1719
    return-void

    .line 1721
    :cond_0
    if-gez p1, :cond_1

    .line 1722
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1724
    :cond_1
    iput p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    .line 1725
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    if-le v1, v2, :cond_2

    .line 1726
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    iput v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mValue:I

    .line 1728
    :cond_2
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1729
    .local v0, "wrapSelectorWheel":Z
    :cond_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->setWrapSelectorWheel(Z)V

    .line 1730
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    .line 1731
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->updateInputTextView()Z

    .line 1732
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    .line 1733
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 1717
    return-void
.end method

.method public setMonthInputMode()V
    .locals 2

    .prologue
    .line 3430
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 3431
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const-string/jumbo v1, "inputType=month_edittext"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 3432
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3429
    return-void
.end method

.method public setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;)V
    .locals 0
    .param p1, "onEditTextModeChangedListener"    # Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

    .prologue
    .line 1442
    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOnEditTextModeChangedListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

    .line 1441
    return-void
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 1
    .param p1, "intervalMillis"    # J

    .prologue
    .line 1686
    iput-wide p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mLongPressUpdateInterval:J

    .line 1685
    return-void
.end method

.method public setOnScrollListener(Lcom/samsung/android/widget/SemNumberPicker$OnScrollListener;)V
    .locals 0
    .param p1, "onScrollListener"    # Lcom/samsung/android/widget/SemNumberPicker$OnScrollListener;

    .prologue
    .line 1432
    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOnScrollListener:Lcom/samsung/android/widget/SemNumberPicker$OnScrollListener;

    .line 1431
    return-void
.end method

.method public setOnValueChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;)V
    .locals 0
    .param p1, "onValueChangedListener"    # Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;

    .prologue
    .line 1423
    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mOnValueChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;

    .line 1422
    return-void
.end method

.method public setPickerContentDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 683
    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerContentDescription:Ljava/lang/String;

    .line 684
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    check-cast v0, Lcom/samsung/android/widget/SemNumberPicker$CustomEditText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker$CustomEditText;->setPickerContentDescription(Ljava/lang/String;)V

    .line 682
    return-void
.end method

.method public setSkipValuesOnLongPressEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1304
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSkipNumbers:Z

    .line 1303
    return-void
.end method

.method public setSubTextSize(F)V
    .locals 2
    .param p1, "size"    # F

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1821
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSubTextSize:I

    .line 1820
    return-void
.end method

.method public setTextSize(F)V
    .locals 3
    .param p1, "size"    # F

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1811
    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextSize:I

    .line 1814
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1815
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextSize:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1816
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    .line 1810
    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 2
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    const/4 v0, 0x1

    .line 1832
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mCustomTypefaceSet:Z

    .line 1833
    iput-object p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    .line 1834
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    .line 1835
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1836
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1837
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    .line 1831
    return-void
.end method

.method public setToggle(Z)V
    .locals 7
    .param p1, "value"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 693
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    .line 694
    iget-boolean v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v3, :cond_1

    .line 695
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 696
    .local v1, "res":Landroid/content/res/Resources;
    const v3, 0x1050331

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextSize:I

    .line 697
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 698
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 699
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 700
    const-string/jumbo v3, "sec-roboto-condensed"

    invoke-static {v3, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    .line 703
    const-string/jumbo v3, "persist.sys.flipfontpath"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, "flipFontPath":Ljava/lang/String;
    const-string/jumbo v3, "#Theme"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 706
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "theme_font_system"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 707
    .local v2, "themeTypeFace":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 712
    .end local v2    # "themeTypeFace":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    .line 713
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 714
    iget-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 715
    const v3, 0x1050330

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSubTextSize:I

    .line 692
    .end local v0    # "flipFontPath":Ljava/lang/String;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_1
    return-void

    .line 708
    .restart local v0    # "flipFontPath":Ljava/lang/String;
    .restart local v1    # "res":Landroid/content/res/Resources;
    .restart local v2    # "themeTypeFace":Ljava/lang/String;
    :cond_2
    invoke-static {v2}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1495
    invoke-direct {p0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->stopScrollAnimation()V

    .line 1497
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->setValueInternal(IZ)V

    .line 1493
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 3
    .param p1, "wrapSelectorWheel"    # Z

    .prologue
    .line 1669
    iget v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    .line 1670
    .local v0, "wrappingAllowed":Z
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eq p1, v1, :cond_1

    .line 1671
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    .line 1668
    :cond_1
    return-void

    .line 1669
    .end local v0    # "wrappingAllowed":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "wrappingAllowed":Z
    goto :goto_0
.end method

.method public setYearDateTimeInputMode()V
    .locals 2

    .prologue
    .line 3440
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 3441
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const-string/jumbo v1, "inputType=YearDateTime_edittext"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 3442
    iget-object v0, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3439
    return-void
.end method

.method public startAnimation(ILcom/samsung/android/widget/SemAnimationListener;)V
    .locals 3
    .param p1, "delayTime"    # I
    .param p2, "listener"    # Lcom/samsung/android/widget/SemAnimationListener;

    .prologue
    .line 1860
    iput-object p2, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mAnimationListener:Lcom/samsung/android/widget/SemAnimationListener;

    .line 1861
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v1, :cond_0

    .line 1862
    return-void

    .line 1865
    :cond_0
    move v0, p1

    .line 1866
    .local v0, "delay":I
    iget-object v1, p0, Lcom/samsung/android/widget/SemNumberPicker$AbstractSemNumberPickerDelegate;->mDelegator:Lcom/samsung/android/widget/SemNumberPicker;

    new-instance v2, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate$4;-><init>(Lcom/samsung/android/widget/SemNumberPickerSpinnerDelegate;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1859
    return-void
.end method
