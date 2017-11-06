.class Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;
.super Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$AbstractSeslNumberPickerDelegate;
.source "SeslNumberPickerSpinnerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;,
        Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;,
        Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;,
        Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;,
        Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;
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
.field private final ALPHA_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private final SIZE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private mAccessibilityNodeProvider:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mAnimationListener:Lcom/samsung/android/support/sesl/component/widget/SeslAnimationListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

.field private mBelowBottomSelectionDividerBottom:I

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

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

.field private mFormatter:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$Formatter;

.field private final mHeightRatio:F

.field private mIgnoreMoveEvents:Z

.field private mIncrementVirtualButtonPressed:Z

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field private mIsAmPm:Z

.field private mIsEditTextMode:Z

.field private mIsLongPressed:Z

.field private mIsStartingAnimation:Z

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

.field private mOnEditTextModeChangedListener:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnEditTextModeChangedListener;

.field private mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnValueChangeListener;

.field private mOverTopSelectionDividerTop:I

.field private mPerformClickOnTap:Z

.field private mPickerBoldTypeface:Landroid/graphics/Typeface;

.field private mPickerContentDescription:Ljava/lang/String;

.field private mPickerTypeface:Landroid/graphics/Typeface;

.field private final mPressedStateHelper:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mReservedStartAnimation:Z

.field private mScrollState:I

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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2521
    const/16 v0, 0x3c

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->DIGIT_CHARACTERS:[C

    return-void

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

.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 26
    .param p1, "delegator"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    .line 493
    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$AbstractSeslNumberPickerDelegate;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;Landroid/content/Context;)V

    .line 244
    const-wide/16 v20, 0x12c

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLongPressUpdateInterval:J

    .line 249
    new-instance v19, Landroid/util/SparseArray;

    invoke-direct/range {v19 .. v19}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 254
    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    .line 274
    const/high16 v19, -0x80000000

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    .line 355
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mScrollState:I

    .line 400
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mChangeValueBy:I

    .line 453
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    .line 455
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mReservedStartAnimation:Z

    .line 469
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    .line 471
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mCustomTypefaceSet:Z

    .line 478
    new-instance v19, Landroid/view/animation/PathInterpolator;

    const/high16 v20, 0x3f000000    # 0.5f

    const/16 v21, 0x0

    const v22, 0x3ecccccd    # 0.4f

    const/high16 v23, 0x3f800000    # 1.0f

    invoke-direct/range {v19 .. v23}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->SIZE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 479
    new-instance v19, Landroid/view/animation/PathInterpolator;

    const v20, 0x3f59999a    # 0.85f

    const/high16 v21, 0x3e800000    # 0.25f

    const/high16 v22, 0x3f800000    # 1.0f

    const/high16 v23, 0x3f800000    # 1.0f

    invoke-direct/range {v19 .. v23}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->ALPHA_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 496
    .local v17, "res":Landroid/content/res/Resources;
    sget v19, Lcom/samsung/android/support/sesl/R$dimen;->sesl_number_picker_spinner_height:I

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 497
    .local v11, "defaultHeight":I
    sget v19, Lcom/samsung/android/support/sesl/R$dimen;->sesl_number_picker_spinner_width:I

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 498
    .local v12, "defaultWidth":I
    sget v19, Lcom/samsung/android/support/sesl/R$dimen;->sesl_number_picker_spinner_edit_text_height:I

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 500
    .local v10, "defaultEditTextHeight":I
    int-to-float v0, v10

    move/from16 v19, v0

    int-to-float v0, v11

    move/from16 v20, v0

    div-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mHeightRatio:F

    .line 503
    sget-object v19, Lcom/samsung/android/support/sesl/R$styleable;->SeslNumberPicker:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v19

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 506
    .local v7, "attributesArray":Landroid/content/res/TypedArray;
    sget v19, Lcom/samsung/android/support/sesl/R$styleable;->SeslNumberPicker_seslInternalMinHeight:I

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinHeight:I

    .line 508
    sget v19, Lcom/samsung/android/support/sesl/R$styleable;->SeslNumberPicker_seslInternalMaxHeight:I

    move/from16 v0, v19

    invoke-virtual {v7, v0, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMaxHeight:I

    .line 510
    sget v19, Lcom/samsung/android/support/sesl/R$styleable;->SeslNumberPicker_seslInternalMinWidth:I

    move/from16 v0, v19

    invoke-virtual {v7, v0, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinWidth:I

    .line 512
    sget v19, Lcom/samsung/android/support/sesl/R$styleable;->SeslNumberPicker_seslInternalMaxWidth:I

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMaxWidth:I

    .line 515
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 517
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinHeight:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMaxHeight:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMaxHeight:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    .line 519
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "minHeight > maxHeight"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 521
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinWidth:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMaxWidth:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMaxWidth:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1

    .line 523
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "minWidth > maxWidth"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 526
    :cond_1
    const/16 v19, 0x1

    const/high16 v20, 0x40000000    # 2.0f

    .line 528
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    .line 526
    invoke-static/range {v19 .. v21}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectionDividerHeight:I

    .line 530
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMaxWidth:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    const/16 v19, 0x1

    :goto_0
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mComputeMaxWidth:Z

    .line 533
    new-instance v15, Landroid/util/TypedValue;

    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    .line 534
    .local v15, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v19

    const v20, 0x1010434

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v15, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 535
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 536
    iget v0, v15, Landroid/util/TypedValue;->resourceId:I

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/content/res/SeslResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v19

    const v20, 0xffffff

    and-int v19, v19, v20

    const/high16 v20, 0x33000000

    or-int v18, v19, v20

    .line 540
    .local v18, "selectedPickerColor":I
    :goto_1
    new-instance v19, Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    .line 542
    sget v19, Lcom/samsung/android/support/sesl/R$color;->sesl_number_picker_spinner_sub_text_color_light:I

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/sesl/core/content/res/SeslResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSubTextColor:I

    .line 544
    new-instance v19, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setWillNotDraw(Z)V

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "layout_inflater"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .line 555
    .local v14, "inflater":Landroid/view/LayoutInflater;
    sget v19, Lcom/samsung/android/support/sesl/R$layout;->sesl_number_picker_spinner:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v14, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    move-object/from16 v19, v0

    sget v20, Lcom/samsung/android/support/sesl/R$id;->numberpicker_input:I

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/EditText;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    .line 561
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDefaultTypeface:Landroid/graphics/Typeface;

    .line 562
    const-string/jumbo v19, "sec-roboto-condensed-light"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDefaultTypeface:Landroid/graphics/Typeface;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 564
    const-string/jumbo v19, "sans-serif-thin"

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    .line 566
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->isMeaLanguage()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDefaultTypeface:Landroid/graphics/Typeface;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    .line 570
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 573
    .local v8, "colors":Landroid/content/res/ColorStateList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getEnableStateSet()[I

    move-result-object v13

    .line 574
    .local v13, "enabledStateSet":[I
    const/16 v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v8, v13, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mTextColor:I

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    new-instance v20, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    new-instance v20, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$2;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    new-instance v22, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$InputTextFilter;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)V

    aput-object v22, v20, v21

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const v20, 0x2000006

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHighlightColor(I)V

    .line 605
    invoke-static {}, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector;->getField_TYPE_NONE()I

    move-result v6

    .line 606
    .local v6, "TYPE_NONE":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v6}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->semSetHoverPopupType(Landroid/view/View;I)V

    .line 609
    invoke-static/range {p2 .. p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    .line 610
    .local v9, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mTouchSlop:I

    .line 611
    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v19

    mul-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinimumFlingVelocity:I

    .line 612
    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v19

    div-int/lit8 v19, v19, 0x4

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMaximumFlingVelocity:I

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/EditText;->getTextSize()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mTextSize:I

    .line 617
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    .line 618
    .local v16, "paint":Landroid/graphics/Paint;
    const/16 v19, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 619
    sget-object v19, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 620
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mTextSize:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 622
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSubTextColor:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 623
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 625
    sget v19, Lcom/samsung/android/support/sesl/R$dimen;->sesl_time_picker_spinner_sub_text_size:I

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSubTextSize:I

    .line 626
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSubTextSize:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const v20, 0x3ef5c28f    # 0.48f

    mul-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDefaultEdgeHeight:I

    .line 629
    new-instance v19, Landroid/widget/Scroller;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->SIZE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-direct/range {v19 .. v22}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mCustomScroller:Landroid/widget/Scroller;

    .line 630
    new-instance v19, Landroid/widget/Scroller;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-direct/range {v19 .. v22}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLinearScroller:Landroid/widget/Scroller;

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLinearScroller:Landroid/widget/Scroller;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    .line 632
    new-instance v19, Landroid/widget/Scroller;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v21, Landroid/view/animation/PathInterpolator;

    const v22, 0x3ecccccd    # 0.4f

    const/16 v23, 0x0

    const v24, 0x3e99999a    # 0.3f

    const/high16 v25, 0x3f800000    # 1.0f

    invoke-direct/range {v21 .. v25}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-direct/range {v19 .. v21}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    .line 634
    invoke-static {}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getTwoDigitFormatter()Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$Formatter;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->setFormatter(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$Formatter;)V

    .line 635
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->updateInputTextView()Z

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getImportantForAccessibility()I

    move-result v19

    if-nez v19, :cond_4

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setImportantForAccessibility(I)V

    .line 642
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "audio"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/media/AudioManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mAudioManager:Landroid/media/AudioManager;

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setFocusableInTouchMode(Z)V

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    move-object/from16 v19, v0

    const/high16 v20, 0x20000

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setDescendantFocusability(I)V

    .line 647
    const-string v19, ""

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPickerContentDescription:Ljava/lang/String;

    .line 648
    sget v19, Lcom/samsung/android/support/sesl/R$string;->sesl_number_picker_invalid_value_entered:I

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mToastText:Ljava/lang/String;

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->semSetDirectPenInputEnabled(Landroid/view/View;Z)V

    .line 654
    return-void

    .line 530
    .end local v6    # "TYPE_NONE":I
    .end local v8    # "colors":Landroid/content/res/ColorStateList;
    .end local v9    # "configuration":Landroid/view/ViewConfiguration;
    .end local v13    # "enabledStateSet":[I
    .end local v14    # "inflater":Landroid/view/LayoutInflater;
    .end local v15    # "outValue":Landroid/util/TypedValue;
    .end local v16    # "paint":Landroid/graphics/Paint;
    .end local v18    # "selectedPickerColor":I
    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 538
    .restart local v15    # "outValue":Landroid/util/TypedValue;
    :cond_6
    iget v0, v15, Landroid/util/TypedValue;->data:I

    move/from16 v19, v0

    const v20, 0xffffff

    and-int v19, v19, v20

    const/high16 v20, 0x33000000

    or-int v18, v19, v20

    .restart local v18    # "selectedPickerColor":I
    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;Landroid/widget/Scroller;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;
    .param p1, "x1"    # Landroid/widget/Scroller;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;
    .param p1, "x1"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    return p1
.end method

.method static synthetic access$1300(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLinearScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Lcom/samsung/android/support/sesl/component/widget/SeslAnimationListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mAnimationListener:Lcom/samsung/android/support/sesl/component/widget/SeslAnimationListener;

    return-object v0
.end method

.method static synthetic access$1700()[C
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->showSoftInput()V

    return-void
.end method

.method static synthetic access$2000(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .prologue
    .line 94
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    return v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;
    .param p1, "x1"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mToastText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->needCompareEqualMonthLanguage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .prologue
    .line 94
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    return v0
.end method

.method static synthetic access$2600(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .prologue
    .line 94
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    return v0
.end method

.method static synthetic access$2800(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .prologue
    .line 94
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    return v0
.end method

.method static synthetic access$3100(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .prologue
    .line 94
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    return v0
.end method

.method static synthetic access$3200(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .prologue
    .line 94
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mOverTopSelectionDividerTop:I

    return v0
.end method

.method static synthetic access$3300(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .prologue
    .line 94
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectionDividerHeight:I

    return v0
.end method

.method static synthetic access$3400(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .prologue
    .line 94
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mBelowBottomSelectionDividerBottom:I

    return v0
.end method

.method static synthetic access$3500(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->changeValueByTwo(Z)V

    return-void
.end method

.method static synthetic access$3600(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .prologue
    .line 94
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    return v0
.end method

.method static synthetic access$3700(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;I)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;
    .param p1, "x1"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getWrappedSelectorIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .prologue
    .line 94
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .prologue
    .line 94
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    return v0
.end method

.method static synthetic access$4000(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPickerContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mReservedStartAnimation:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$702(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;Landroid/widget/Scroller;)Landroid/widget/Scroller;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;
    .param p1, "x1"    # Landroid/widget/Scroller;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    return-object p1
.end method

.method static synthetic access$800(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/Scroller;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mCustomScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    return v0
.end method

.method private changeValueByOne(Z)V
    .locals 6
    .param p1, "increment"    # Z

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2131
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2132
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2133
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 2135
    :cond_0
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    .line 2136
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mChangeValueBy:I

    .line 2138
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLongPressed_FIRST_SCROLL:Z

    if-eqz v0, :cond_3

    .line 2139
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLongPressed_FIRST_SCROLL:Z

    .line 2140
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLongPressed_SECOND_SCROLL:Z

    .line 2155
    :cond_1
    :goto_0
    const/16 v5, 0x1f4

    .line 2156
    .local v5, "duration":I
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSkipNumbers:Z

    if-eqz v0, :cond_7

    .line 2157
    const/16 v5, 0xc8

    .line 2158
    const-wide/16 v2, 0x258

    iput-wide v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLongPressUpdateInterval:J

    .line 2165
    :cond_2
    :goto_1
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mChangeValueBy:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLongPressCount:I

    .line 2167
    if-eqz p1, :cond_8

    .line 2168
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    neg-int v2, v2

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mChangeValueBy:I

    mul-int v4, v2, v3

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2172
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->invalidate()V

    .line 2173
    return-void

    .line 2141
    .end local v5    # "duration":I
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLongPressed_SECOND_SCROLL:Z

    if-eqz v0, :cond_6

    .line 2142
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLongPressed_SECOND_SCROLL:Z

    .line 2143
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLongPressed_THIRD_SCROLL:Z

    .line 2144
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_4

    .line 2145
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mChangeValueBy:I

    goto :goto_0

    .line 2146
    :cond_4
    if-eqz p1, :cond_5

    .line 2147
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    rsub-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mChangeValueBy:I

    goto :goto_0

    .line 2149
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mChangeValueBy:I

    goto :goto_0

    .line 2151
    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLongPressed_THIRD_SCROLL:Z

    if-eqz v0, :cond_1

    .line 2152
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mChangeValueBy:I

    goto :goto_0

    .line 2159
    .restart local v5    # "duration":I
    :cond_7
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    if-eqz v0, :cond_2

    .line 2160
    const/16 v5, 0x64

    .line 2161
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mChangeValueBy:I

    .line 2162
    const-wide/16 v2, 0x12c

    iput-wide v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLongPressUpdateInterval:J

    goto :goto_1

    .line 2170
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mChangeValueBy:I

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

    .line 2183
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2184
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2185
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 2187
    :cond_0
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    .line 2189
    if-eqz p1, :cond_1

    .line 2190
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    neg-int v2, v2

    mul-int/lit8 v4, v2, 0x2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2194
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->invalidate()V

    .line 2195
    return-void

    .line 2192
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/lit8 v4, v2, 0x2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0
.end method

.method private decrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 2305
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 2306
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 2305
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2308
    :cond_0
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 2309
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    if-ge v1, v2, :cond_1

    .line 2310
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    .line 2312
    :cond_1
    const/4 v2, 0x0

    aput v1, p1, v2

    .line 2313
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->ensureCachedScrollSelectorValue(I)V

    .line 2314
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 2321
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 2322
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2323
    .local v2, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2337
    :goto_0
    return-void

    .line 2326
    :cond_0
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    if-le p1, v3, :cond_2

    .line 2327
    :cond_1
    const-string v2, ""

    .line 2336
    :goto_1
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 2329
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 2330
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int v1, p1, v3

    .line 2331
    .local v1, "displayedValueIndex":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 2332
    goto :goto_1

    .line 2333
    .end local v1    # "displayedValueIndex":I
    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2620
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 2633
    :cond_0
    :goto_0
    return v1

    .line 2623
    :cond_1
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    sub-int v4, v0, v2

    .line 2624
    .local v4, "deltaY":I
    if-eqz v4, :cond_0

    .line 2625
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    .line 2626
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_2

    .line 2627
    if-lez v4, :cond_3

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    neg-int v0, v0

    :goto_1
    add-int/2addr v4, v0

    .line 2629
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    const/16 v5, 0x12c

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2630
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->invalidate()V

    .line 2631
    const/4 v1, 0x1

    goto :goto_0

    .line 2627
    :cond_3
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    goto :goto_1
.end method

.method private fling(I)V
    .locals 10
    .param p1, "velocityY"    # I

    .prologue
    const/4 v1, 0x0

    .line 2262
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    .line 2264
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 2265
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    add-int v9, v0, v1

    .line 2267
    .local v9, "tempFinal":I
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    if-lez p1, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    add-int/2addr v0, v2

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->setFinalY(I)V

    .line 2269
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->invalidate()V

    .line 2270
    return-void

    .line 2267
    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    neg-int v0, v0

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    add-int/2addr v0, v2

    .line 2268
    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2340
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mFormatter:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mFormatter:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$Formatter;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static formatNumberWithLocale(I)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 3377
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2490
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2492
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2515
    :goto_0
    return v1

    .line 2497
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 2499
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2500
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2501
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    add-int/2addr v1, v0

    goto :goto_0

    .line 2497
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2510
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 2493
    .end local v0    # "i":I
    :catch_0
    move-exception v1

    .line 2515
    :goto_2
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    goto :goto_0

    .line 2511
    .restart local v0    # "i":I
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 2276
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    if-le p1, v0, :cond_1

    .line 2277
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    .line 2281
    .end local p1    # "selectorIndex":I
    :cond_0
    :goto_0
    return p1

    .line 2278
    .restart local p1    # "selectorIndex":I
    :cond_1
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    if-ge p1, v0, :cond_0

    .line 2279
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method

.method private hideSoftInput()V
    .locals 3

    .prologue
    .line 1554
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1555
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1556
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1557
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1559
    :cond_0
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 2289
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 2290
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 2289
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2292
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    .line 2293
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    if-le v1, v2, :cond_1

    .line 2294
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    .line 2296
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    .line 2297
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->ensureCachedScrollSelectorValue(I)V

    .line 2298
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2198
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-eqz v2, :cond_1

    .line 2199
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2200
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 2202
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->stopScrollAnimation()V

    .line 2205
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez v2, :cond_2

    .line 2206
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    .line 2208
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDefaultEdgeHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    .line 2210
    const/16 v0, 0xd

    .line 2211
    .local v0, "DEFAULT_TEXT_GAP_HEIGHT":I
    const/4 v2, 0x1

    const/high16 v3, 0x41500000    # 13.0f

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    .line 2212
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 2211
    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorTextGapHeight:I

    .line 2213
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v2, :cond_3

    .line 2214
    const/4 v2, 0x4

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorTextGapHeight:I

    .line 2217
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTop()I

    move-result v2

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mModifiedTxtHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    .line 2218
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    .line 2219
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 2220
    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getBaseline()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mModifiedTxtHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sub-int v1, v2, v3

    .line 2221
    .local v1, "adjustTextViewBaseLine":I
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$CustomEditText;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$CustomEditText;->setEditTextPosition(I)V

    .line 2223
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mReservedStartAnimation:Z

    if-eqz v2, :cond_4

    .line 2224
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mAnimationListener:Lcom/samsung/android/support/sesl/component/widget/SeslAnimationListener;

    invoke-virtual {p0, v5, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->startAnimation(ILcom/samsung/android/support/sesl/component/widget/SeslAnimationListener;)V

    .line 2225
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mReservedStartAnimation:Z

    .line 2227
    :cond_4
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .prologue
    .line 2078
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 2079
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    .line 2080
    .local v3, "selectorIndices":[I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v0

    .line 2081
    .local v0, "current":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 2082
    add-int/lit8 v4, v1, -0x2

    add-int v2, v0, v4

    .line 2083
    .local v2, "selectorIndex":I
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 2084
    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getWrappedSelectorIndex(I)I

    move-result v2

    .line 2086
    :cond_0
    aput v2, v3, v1

    .line 2087
    aget v4, v3, v1

    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->ensureCachedScrollSelectorValue(I)V

    .line 2081
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2089
    .end local v2    # "selectorIndex":I
    :cond_1
    return-void
.end method

.method private isMeaLanguage()Z
    .locals 2

    .prologue
    .line 3420
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 3421
    .local v0, "language":Ljava/lang/String;
    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeMeasureSpec(II)I
    .locals 5
    .param p1, "measureSpec"    # I
    .param p2, "maxSize"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 2036
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 2047
    .end local p1    # "measureSpec":I
    :goto_0
    :sswitch_0
    return p1

    .line 2039
    .restart local p1    # "measureSpec":I
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 2040
    .local v1, "size":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2041
    .local v0, "mode":I
    sparse-switch v0, :sswitch_data_0

    .line 2049
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2045
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 2047
    :sswitch_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 2041
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
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 800
    invoke-virtual {p1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 801
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v5

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    sub-int v0, v5, v6

    .line 804
    .local v0, "amountToScroll":I
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    if-nez v5, :cond_1

    .line 821
    :cond_0
    :goto_0
    return v3

    .line 806
    :cond_1
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int v1, v5, v0

    .line 807
    .local v1, "futureScrollOffset":I
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    sub-int v2, v5, v1

    .line 808
    .local v2, "overshootAdjustment":I
    if-eqz v2, :cond_0

    .line 809
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    rem-int/2addr v2, v5

    .line 810
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_2

    .line 811
    if-lez v2, :cond_3

    .line 812
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    sub-int/2addr v2, v5

    .line 817
    :cond_2
    :goto_1
    add-int/2addr v0, v2

    .line 818
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->scrollBy(II)V

    move v3, v4

    .line 819
    goto :goto_0

    .line 814
    :cond_3
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    add-int/2addr v2, v5

    goto :goto_1
.end method

.method private needCompareEqualMonthLanguage()Z
    .locals 2

    .prologue
    .line 3428
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 3429
    .local v0, "language":Ljava/lang/String;
    const-string/jumbo v1, "vi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private notifyChange(II)V
    .locals 6
    .param p1, "previous"    # I
    .param p2, "current"    # I

    .prologue
    .line 2385
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    const-string v4, "accessibility"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez v3, :cond_1

    .line 2387
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    invoke-direct {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getWrappedSelectorIndex(I)I

    move-result v2

    .line 2388
    .local v2, "value":I
    const/4 v1, 0x0

    .line 2389
    .local v1, "text":Ljava/lang/String;
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    if-gt v2, v3, :cond_0

    .line 2390
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-nez v3, :cond_3

    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 2393
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v3, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2394
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v3, :cond_1

    .line 2395
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    .line 2396
    .local v0, "provider":Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;
    if-eqz v0, :cond_1

    .line 2397
    const/4 v3, 0x3

    const/16 v4, 0x40

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    .line 2402
    .end local v0    # "provider":Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;
    .end local v1    # "text":Ljava/lang/String;
    .end local v2    # "value":I
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mOnValueChangeListener:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnValueChangeListener;

    if-eqz v3, :cond_2

    .line 2403
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mOnValueChangeListener:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnValueChangeListener;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    invoke-interface {v3, v4, p1, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnValueChangeListener;->onValueChange(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;II)V

    .line 2405
    :cond_2
    return-void

    .line 2390
    .restart local v1    # "text":Ljava/lang/String;
    .restart local v2    # "value":I
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int v4, v2, v4

    aget-object v1, v3, v4

    goto :goto_0
.end method

.method private onScrollStateChange(I)V
    .locals 2
    .param p1, "scrollState"    # I

    .prologue
    .line 2249
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 2256
    :cond_0
    :goto_0
    return-void

    .line 2252
    :cond_1
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mScrollState:I

    .line 2253
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnScrollListener;

    if-eqz v0, :cond_0

    .line 2254
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnScrollListener;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnScrollListener;->onScrollStateChange(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;I)V

    goto :goto_0
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 2
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    .line 2233
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_2

    .line 2234
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2235
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->updateInputTextView()Z

    .line 2237
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    .line 2243
    :cond_1
    :goto_0
    return-void

    .line 2239
    :cond_2
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2240
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->updateInputTextView()Z

    goto :goto_0
.end method

.method private playSoundAndHapticFeedback()V
    .locals 2

    .prologue
    .line 1297
    invoke-static {}, Lcom/samsung/android/support/sesl/core/media/SeslAudioManagerReflector;->getField_SOUND_TIME_PICKER_SCROLL()I

    move-result v0

    .line 1298
    .local v0, "SOUND_TIME_PICKER_SCROLL":I
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 1299
    return-void
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .locals 4

    .prologue
    .line 2447
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_0

    .line 2448
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    .line 2452
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2453
    return-void

    .line 2450
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 4
    .param p1, "increment"    # Z
    .param p2, "delayMillis"    # J

    .prologue
    const/4 v2, 0x1

    .line 2413
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 2414
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    .line 2418
    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    .line 2419
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLongPressed_FIRST_SCROLL:Z

    .line 2420
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;->access$1600(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 2421
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {v0, v1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2422
    return-void

    .line 2416
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private removeAllCallbacks()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2468
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    if-eqz v0, :cond_0

    .line 2469
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    .line 2470
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    .line 2472
    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLongPressed_FIRST_SCROLL:Z

    .line 2473
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLongPressed_SECOND_SCROLL:Z

    .line 2474
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLongPressed_THIRD_SCROLL:Z

    .line 2475
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mChangeValueBy:I

    .line 2476
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLongPressUpdateInterval:J

    .line 2477
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_1

    .line 2478
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2480
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_2

    .line 2481
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2483
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->cancel()V

    .line 2484
    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .locals 2

    .prologue
    .line 2459
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_0

    .line 2460
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mBeginSoftInputOnLongPressCommand:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$BeginSoftInputOnLongPressCommand;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2462
    :cond_0
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2428
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    if-eqz v0, :cond_0

    .line 2429
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsLongPressed:Z

    .line 2430
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    .line 2432
    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLongPressed_FIRST_SCROLL:Z

    .line 2433
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLongPressed_SECOND_SCROLL:Z

    .line 2434
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLongPressed_THIRD_SCROLL:Z

    .line 2435
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mChangeValueBy:I

    .line 2436
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLongPressUpdateInterval:J

    .line 2437
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_1

    .line 2438
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2440
    :cond_1
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 2
    .param p1, "minSize"    # I
    .param p2, "measuredSize"    # I
    .param p3, "measureSpec"    # I

    .prologue
    .line 2065
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 2066
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2067
    .local v0, "desiredWidth":I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p2

    .line 2069
    .end local v0    # "desiredWidth":I
    .end local p2    # "measuredSize":I
    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 2
    .param p1, "current"    # I
    .param p2, "notifyChange"    # Z

    .prologue
    .line 2098
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    if-ne v1, p1, :cond_1

    .line 2099
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->isMeaLanguage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2100
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->updateInputTextView()Z

    .line 2101
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->invalidate()V

    .line 2121
    :cond_0
    :goto_0
    return-void

    .line 2107
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_3

    .line 2108
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 2113
    :goto_1
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    .line 2114
    .local v0, "previous":I
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    .line 2115
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->updateInputTextView()Z

    .line 2116
    if-eqz p2, :cond_2

    .line 2117
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->notifyChange(II)V

    .line 2119
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    .line 2120
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->invalidate()V

    goto :goto_0

    .line 2110
    .end local v0    # "previous":I
    :cond_3
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2111
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1
.end method

.method private showSoftInput()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1542
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1543
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1544
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1545
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1546
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1548
    :cond_0
    return-void
.end method

.method private showSoftInputForWindowFocused()V
    .locals 4

    .prologue
    .line 1518
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$3;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1536
    return-void
.end method

.method private stopScrollAnimation()V
    .locals 1

    .prologue
    .line 1899
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1900
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1901
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1902
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 1904
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    .line 1905
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 11

    .prologue
    .line 1565
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mComputeMaxWidth:Z

    if-nez v9, :cond_0

    .line 1614
    :goto_0
    return-void

    .line 1568
    :cond_0
    const/4 v5, 0x0

    .line 1570
    .local v5, "maxTextWidth":I
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1571
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-nez v9, :cond_7

    .line 1572
    const/4 v4, 0x0

    .line 1573
    .local v4, "maxDigitWidth":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    const/16 v9, 0x9

    if-gt v3, v9, :cond_2

    .line 1574
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1575
    .local v1, "digitWidth":F
    cmpl-float v9, v1, v4

    if-lez v9, :cond_1

    .line 1576
    move v4, v1

    .line 1573
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1579
    .end local v1    # "digitWidth":F
    :cond_2
    const/4 v6, 0x0

    .line 1580
    .local v6, "numberOfDigits":I
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    .line 1581
    .local v0, "current":I
    :goto_2
    if-lez v0, :cond_3

    .line 1582
    add-int/lit8 v6, v6, 0x1

    .line 1583
    div-int/lit8 v0, v0, 0xa

    goto :goto_2

    .line 1585
    :cond_3
    int-to-float v9, v6

    mul-float/2addr v9, v4

    float-to-int v5, v9

    .line 1595
    .end local v0    # "current":I
    .end local v4    # "maxDigitWidth":F
    .end local v6    # "numberOfDigits":I
    :cond_4
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v5, v9

    .line 1598
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-static {v9}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->isHighContrastTextEnabled(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1599
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v9}, Lcom/samsung/android/support/sesl/core/graphics/SeslPaintReflector;->getHCTStrokeWidth(Landroid/graphics/Paint;)F

    move-result v2

    .line 1600
    .local v2, "hCTStrokeWidth":F
    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v9, v2

    float-to-int v9, v9

    add-int/2addr v5, v9

    .line 1604
    .end local v2    # "hCTStrokeWidth":F
    :cond_5
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMaxWidth:I

    if-eq v9, v5, :cond_6

    .line 1605
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinWidth:I

    if-le v5, v9, :cond_9

    .line 1606
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMaxWidth:I

    .line 1610
    :goto_3
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->invalidate()V

    .line 1613
    :cond_6
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    .line 1587
    .end local v3    # "i":I
    :cond_7
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    array-length v8, v9

    .line 1588
    .local v8, "valueCount":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    if-ge v3, v8, :cond_4

    .line 1589
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 1590
    .local v7, "textWidth":F
    int-to-float v9, v5

    cmpl-float v9, v7, v9

    if-lez v9, :cond_8

    .line 1591
    float-to-int v5, v7

    .line 1588
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1608
    .end local v7    # "textWidth":F
    .end local v8    # "valueCount":I
    :cond_9
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinWidth:I

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMaxWidth:I

    goto :goto_3
.end method

.method private updateInputTextView()Z
    .locals 4

    .prologue
    .line 2369
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 2371
    .local v0, "text":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2372
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2373
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 2374
    const/4 v1, 0x1

    .line 2377
    :goto_1
    return v1

    .line 2369
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v2, v3

    aget-object v0, v1, v2

    goto :goto_0

    .line 2377
    .restart local v0    # "text":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2344
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2345
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 2346
    .local v0, "current":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    if-ne v2, v0, :cond_1

    .line 2348
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->updateInputTextView()Z

    .line 2353
    :goto_0
    return-void

    .line 2351
    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->setValueInternal(IZ)V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    .line 1303
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    .line 1304
    .local v1, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1305
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    .line 1306
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1322
    :goto_0
    return-void

    .line 1310
    :cond_0
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1311
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 1312
    .local v0, "currentScrollerY":I
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 1313
    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    .line 1315
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->scrollBy(II)V

    .line 1316
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPreviousScrollerY:I

    .line 1317
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1318
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 1320
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->invalidate()V

    goto :goto_0
.end method

.method public computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getHeight()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 1391
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 1396
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x100

    const/16 v8, 0x80

    const/16 v7, 0x40

    const/4 v6, -0x1

    .line 1235
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    const-string v5, "accessibility"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    .line 1238
    .local v1, "eventY":I
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-nez v4, :cond_1

    .line 1239
    const/4 v2, 0x3

    .line 1251
    .local v2, "hoveredVirtualViewId":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1253
    .local v0, "action":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    .line 1254
    .local v3, "provider":Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;
    packed-switch v0, :pswitch_data_0

    .line 1282
    .end local v0    # "action":I
    .end local v1    # "eventY":I
    .end local v2    # "hoveredVirtualViewId":I
    .end local v3    # "provider":Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;
    :cond_0
    :goto_1
    :pswitch_0
    const/4 v4, 0x0

    return v4

    .line 1240
    .restart local v1    # "eventY":I
    :cond_1
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mOverTopSelectionDividerTop:I

    if-gt v4, v1, :cond_2

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    if-ge v1, v4, :cond_2

    .line 1241
    const/4 v2, 0x2

    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_0

    .line 1242
    .end local v2    # "hoveredVirtualViewId":I
    :cond_2
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mOverTopSelectionDividerTop:I

    if-ge v1, v4, :cond_3

    .line 1243
    const/4 v2, 0x1

    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_0

    .line 1244
    .end local v2    # "hoveredVirtualViewId":I
    :cond_3
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    if-ge v4, v1, :cond_4

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mBelowBottomSelectionDividerBottom:I

    if-gt v1, v4, :cond_4

    .line 1245
    const/4 v2, 0x4

    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_0

    .line 1246
    .end local v2    # "hoveredVirtualViewId":I
    :cond_4
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mBelowBottomSelectionDividerBottom:I

    if-le v1, v4, :cond_5

    .line 1247
    const/4 v2, 0x5

    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_0

    .line 1249
    .end local v2    # "hoveredVirtualViewId":I
    :cond_5
    const/4 v2, 0x3

    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_0

    .line 1256
    .restart local v0    # "action":I
    .restart local v3    # "provider":Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;
    :pswitch_1
    invoke-virtual {v3, v2, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1258
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    .line 1259
    invoke-virtual {v3, v2, v7, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 1263
    :pswitch_2
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    if-eq v4, v2, :cond_0

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    if-eq v4, v6, :cond_0

    .line 1265
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    invoke-virtual {v3, v4, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1268
    invoke-virtual {v3, v2, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1270
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    .line 1271
    invoke-virtual {v3, v2, v7, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 1276
    :pswitch_3
    invoke-virtual {v3, v2, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1278
    iput v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    goto :goto_1

    .line 1254
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

    .line 1074
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 1075
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 1076
    .local v1, "keyCode":I
    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    move v4, v5

    .line 1219
    :goto_1
    return v4

    .line 1079
    :sswitch_0
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-nez v4, :cond_1

    move v4, v5

    .line 1080
    goto :goto_1

    .line 1082
    :cond_1
    if-nez v0, :cond_0

    .line 1083
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    if-ne v4, v7, :cond_3

    .line 1084
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v4, :cond_2

    move v4, v5

    .line 1085
    goto :goto_1

    .line 1087
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1088
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 1089
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->showSoftInput()V

    .line 1090
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    goto :goto_0

    .line 1091
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1092
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1114
    :pswitch_1
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x3

    if-ne v4, v6, :cond_5

    .line 1115
    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    goto :goto_0

    .line 1094
    :pswitch_2
    invoke-direct {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    .line 1095
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v4, v6, :cond_0

    .line 1096
    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    goto :goto_0

    .line 1100
    :pswitch_3
    invoke-direct {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    .line 1101
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    if-ne v4, v6, :cond_0

    .line 1102
    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    goto :goto_0

    .line 1106
    :pswitch_4
    invoke-direct {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->changeValueByTwo(Z)V

    .line 1107
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    if-ne v4, v6, :cond_4

    .line 1108
    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    goto/16 :goto_0

    .line 1109
    :cond_4
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    if-ne v4, v6, :cond_0

    .line 1110
    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    goto/16 :goto_0

    .line 1116
    :cond_5
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    if-ne v4, v6, :cond_0

    .line 1117
    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    goto/16 :goto_0

    .line 1127
    :sswitch_1
    if-nez v0, :cond_0

    .line 1128
    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    .line 1137
    :pswitch_5
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->focusSearch(I)Landroid/view/View;

    move-result-object v3

    .line 1138
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_6

    .line 1139
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/view/View;->requestFocus(I)Z

    :cond_6
    move v4, v6

    .line 1141
    goto/16 :goto_1

    .line 1130
    .end local v3    # "v":Landroid/view/View;
    :pswitch_6
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    const/16 v5, 0x42

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->focusSearch(I)Landroid/view/View;

    move-result-object v3

    .line 1131
    .restart local v3    # "v":Landroid/view/View;
    if-eqz v3, :cond_7

    .line 1132
    const/16 v4, 0x42

    invoke-virtual {v3, v4}, Landroid/view/View;->requestFocus(I)Z

    :cond_7
    move v4, v6

    .line 1134
    goto/16 :goto_1

    .line 1148
    .end local v3    # "v":Landroid/view/View;
    :sswitch_2
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-nez v4, :cond_8

    move v4, v5

    .line 1149
    goto/16 :goto_1

    .line 1151
    :cond_8
    if-nez v0, :cond_e

    .line 1152
    const/16 v4, 0x14

    if-ne v1, v4, :cond_b

    .line 1153
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    packed-switch v4, :pswitch_data_2

    goto/16 :goto_0

    .line 1173
    :pswitch_7
    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1174
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->invalidate()V

    move v4, v6

    .line 1175
    goto/16 :goto_1

    .line 1155
    :pswitch_8
    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1156
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->invalidate()V

    move v4, v6

    .line 1157
    goto/16 :goto_1

    .line 1159
    :pswitch_9
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v4, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v7

    if-ne v4, v7, :cond_9

    move v4, v5

    .line 1160
    goto/16 :goto_1

    .line 1162
    :cond_9
    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1163
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->invalidate()V

    move v4, v6

    .line 1164
    goto/16 :goto_1

    .line 1166
    :pswitch_a
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v4, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v4, v7, :cond_a

    move v4, v5

    .line 1167
    goto/16 :goto_1

    .line 1169
    :cond_a
    const/4 v4, 0x5

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1170
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->invalidate()V

    move v4, v6

    .line 1171
    goto/16 :goto_1

    :pswitch_b
    move v4, v5

    .line 1177
    goto/16 :goto_1

    .line 1180
    :cond_b
    const/16 v4, 0x13

    if-ne v1, v4, :cond_0

    .line 1181
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    packed-switch v4, :pswitch_data_3

    goto/16 :goto_0

    :pswitch_c
    move v4, v5

    .line 1201
    goto/16 :goto_1

    .line 1183
    :pswitch_d
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v4, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    if-ne v4, v7, :cond_c

    move v4, v5

    .line 1184
    goto/16 :goto_1

    .line 1186
    :cond_c
    iput v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1187
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->invalidate()V

    move v4, v6

    .line 1188
    goto/16 :goto_1

    .line 1190
    :pswitch_e
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v4, :cond_d

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v7

    if-ne v4, v7, :cond_d

    move v4, v5

    .line 1191
    goto/16 :goto_1

    .line 1193
    :cond_d
    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1194
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->invalidate()V

    move v4, v6

    .line 1195
    goto/16 :goto_1

    .line 1197
    :pswitch_f
    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1198
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->invalidate()V

    move v4, v6

    .line 1199
    goto/16 :goto_1

    .line 1203
    :pswitch_10
    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1204
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->invalidate()V

    move v4, v6

    .line 1205
    goto/16 :goto_1

    .line 1209
    :cond_e
    if-ne v0, v6, :cond_0

    .line 1210
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    const-string v7, "accessibility"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1211
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    .line 1212
    .local v2, "provider":Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;
    if-eqz v2, :cond_f

    .line 1213
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/16 v5, 0x40

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v5, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    :cond_f
    move v4, v6

    .line 1215
    goto/16 :goto_1

    .line 1076
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_2
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 1092
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch

    .line 1128
    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 1153
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 1181
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 781
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 782
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 783
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 784
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->hideSoftInput()V

    .line 785
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->setEditTextMode(Z)V

    .line 786
    const/4 v0, 0x1

    .line 788
    :cond_1
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 993
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 994
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1000
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    return v1

    .line 997
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    goto :goto_0

    .line 994
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
    .line 1224
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1225
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1231
    :goto_0
    :pswitch_0
    return-void

    .line 1228
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    goto :goto_0

    .line 1225
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
    .line 2022
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mAccessibilityNodeProvider:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_0

    .line 2023
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mAccessibilityNodeProvider:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    .line 2025
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mAccessibilityNodeProvider:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    return-object v0
.end method

.method public getAmPm()Z
    .locals 1

    .prologue
    .line 685
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1757
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 3396
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 3449
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 1719
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 3444
    const/4 v0, 0x0

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .prologue
    .line 3439
    const/4 v0, 0x0

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 1681
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .prologue
    .line 3434
    const/4 v0, 0x0

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 1672
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .prologue
    .line 1625
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    return v0
.end method

.method public isEditTextMode()Z
    .locals 1

    .prologue
    .line 733
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    return v0
.end method

.method public isEditTextModeNotAmPm()Z
    .locals 1

    .prologue
    .line 1489
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 1915
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v1, 0x1

    .line 1022
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mCustomTypefaceSet:Z

    if-eqz v0, :cond_0

    .line 1035
    :goto_0
    return-void

    .line 1025
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->isMeaLanguage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1026
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    .line 1027
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDefaultTypeface:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    .line 1028
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDefaultTypeface:Landroid/graphics/Typeface;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    .line 1029
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 1032
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setIncludeFontPadding(Z)V

    .line 1033
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1034
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1909
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    .line 1910
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getRight()I

    move-result v13

    .line 1920
    .local v13, "right":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getLeft()I

    move-result v9

    .line 1921
    .local v9, "left":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getBottom()I

    move-result v6

    .line 1923
    .local v6, "bottom":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    move/from16 v21, v0

    mul-int/lit8 v7, v21, 0x2

    .line 1924
    .local v7, "divValue":I
    sub-int v21, v13, v9

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v18, v21, v22

    .line 1925
    .local v18, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v19, v0

    .line 1926
    .local v19, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    move/from16 v21, v0

    add-int v21, v21, v7

    move/from16 v0, v21

    int-to-float v10, v0

    .line 1928
    .local v10, "maxY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mScrollState:I

    move/from16 v21, v0

    if-nez v21, :cond_0

    .line 1929
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    .line 1960
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    move-object/from16 v17, v0

    .line 1961
    .local v17, "selectorIndices":[I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v8, v0, :cond_9

    .line 1962
    aget v16, v17, v8

    .line 1963
    .local v16, "selectorIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1969
    .local v15, "scrollSelectorValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v21, v19, v21

    if-ltz v21, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x2

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpg-float v21, v19, v21

    if-gtz v21, :cond_6

    .line 1971
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    move/from16 v21, v0

    if-nez v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 1972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1974
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Paint;->getColor()I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mTextColor:I

    move/from16 v22, v0

    xor-int v21, v21, v22

    shl-int/lit8 v21, v21, 0x8

    if-eqz v21, :cond_2

    .line 1975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mTextColor:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setColor(I)V

    .line 1986
    :cond_2
    :goto_2
    sub-float v21, v10, v19

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    sub-float v21, v10, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    int-to-float v0, v7

    move/from16 v22, v0

    div-float v12, v21, v22

    .line 1987
    .local v12, "ratioConst":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->SIZE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v11

    .line 1988
    .local v11, "ratio":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->ALPHA_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v5

    .line 1989
    .local v5, "alphaRatio":F
    const v21, 0x3f4ccccd    # 0.8f

    mul-float v21, v21, v5

    const v22, 0x3e4ccccd    # 0.2f

    add-float v4, v21, v22

    .line 1990
    .local v4, "alpha":F
    const/16 v21, 0x0

    cmpg-float v21, v4, v21

    if-gez v21, :cond_3

    .line 1991
    const/4 v4, 0x0

    .line 1993
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    const/high16 v22, 0x437f0000    # 255.0f

    mul-float v22, v22, v4

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1995
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mTextSize:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSubTextSize:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSubTextSize:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mTextSize:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v14, v21, v22

    .line 1996
    .local v14, "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Paint;->descent()F

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->ascent()F

    move-result v22

    sub-float v21, v21, v22

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    add-float v21, v21, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->descent()F

    move-result v22

    sub-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v20, v0

    .line 1997
    .local v20, "yPos":I
    const/16 v21, 0x2

    move/from16 v0, v21

    if-eq v8, v0, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    move/from16 v21, v0

    if-eqz v21, :cond_8

    .line 1998
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 1999
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v14, v14, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 2000
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2001
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2008
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v19, v19, v21

    .line 1961
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 1931
    .end local v4    # "alpha":F
    .end local v5    # "alphaRatio":F
    .end local v8    # "i":I
    .end local v11    # "ratio":F
    .end local v12    # "ratioConst":F
    .end local v14    # "scale":F
    .end local v15    # "scrollSelectorValue":Ljava/lang/String;
    .end local v16    # "selectorIndex":I
    .end local v17    # "selectorIndices":[I
    .end local v20    # "yPos":I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getDrawableState()[I

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mOverTopSelectionDividerTop:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    move/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v13, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 1936
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getDrawableState()[I

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mBelowBottomSelectionDividerBottom:I

    move/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v13, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 1942
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getDrawableState()[I

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mOverTopSelectionDividerTop:I

    move/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v13, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 1947
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getDrawableState()[I

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mBelowBottomSelectionDividerBottom:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v13, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 1952
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getDrawableState()[I

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    move/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v13, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mVirtualButtonFocusedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 1978
    .restart local v8    # "i":I
    .restart local v15    # "scrollSelectorValue":Ljava/lang/String;
    .restart local v16    # "selectorIndex":I
    .restart local v17    # "selectorIndices":[I
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    move/from16 v21, v0

    if-nez v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_7

    .line 1979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1981
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Paint;->getColor()I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSubTextColor:I

    move/from16 v22, v0

    xor-int v21, v21, v22

    shl-int/lit8 v21, v21, 0x8

    if-eqz v21, :cond_2

    .line 1982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSubTextColor:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_2

    .line 2002
    .restart local v4    # "alpha":F
    .restart local v5    # "alphaRatio":F
    .restart local v11    # "ratio":F
    .restart local v12    # "ratioConst":F
    .restart local v14    # "scale":F
    .restart local v20    # "yPos":I
    :cond_8
    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v8, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getVisibility()I

    move-result v21

    if-eqz v21, :cond_5

    .line 2003
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2004
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v14, v14, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 2005
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2006
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_3

    .line 2010
    .end local v4    # "alpha":F
    .end local v5    # "alphaRatio":F
    .end local v11    # "ratio":F
    .end local v12    # "ratioConst":F
    .end local v14    # "scale":F
    .end local v15    # "scrollSelectorValue":Ljava/lang/String;
    .end local v16    # "selectorIndex":I
    .end local v20    # "yPos":I
    :cond_9
    return-void

    .line 1929
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 5
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, -0x1

    .line 1039
    if-nez p1, :cond_1

    .line 1040
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1041
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    .line 1069
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->invalidate()V

    .line 1070
    return-void

    .line 1043
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-nez v1, :cond_4

    .line 1044
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1045
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 1046
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1058
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1059
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    .line 1060
    .local v0, "provider":Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;
    if-eqz v0, :cond_0

    .line 1061
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-nez v1, :cond_3

    .line 1062
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1064
    :cond_3
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/16 v2, 0x40

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_0

    .line 1049
    .end local v0    # "provider":Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;
    :cond_4
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 1050
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v1, v3, :cond_2

    .line 1051
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getMinValue()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 1052
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    goto :goto_1

    .line 1054
    :cond_5
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    goto :goto_1
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 1005
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 1006
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    move v2, v1

    .line 1017
    :goto_0
    return v2

    .line 1008
    :pswitch_0
    const/16 v3, 0x9

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 1009
    .local v0, "vscroll":F
    cmpl-float v3, v0, v4

    if-eqz v3, :cond_0

    .line 1011
    cmpg-float v3, v0, v4

    if-gez v3, :cond_1

    move v1, v2

    :cond_1
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    goto :goto_0

    .line 1006
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2014
    const-class v0, Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2015
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 2016
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 2017
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 2018
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 843
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v3, :cond_1

    :cond_0
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    .line 895
    :goto_0
    return v1

    .line 846
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 847
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    move v1, v2

    .line 895
    goto :goto_0

    .line 849
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    .line 850
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 851
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastDownEventY:F

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    .line 852
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastDownEventTime:J

    .line 853
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    .line 854
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    .line 856
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastDownEventY:F

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    .line 857
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mScrollState:I

    if-nez v3, :cond_3

    .line 858
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {v3, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->buttonPressDelayed(I)V

    .line 868
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 869
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_6

    .line 870
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 871
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 872
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mScrollState:I

    if-ne v3, v6, :cond_4

    .line 873
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 874
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 876
    :cond_4
    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    goto :goto_0

    .line 861
    :cond_5
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastDownEventY:F

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 862
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mScrollState:I

    if-nez v3, :cond_3

    .line 863
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {v3, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_1

    .line 877
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_7

    .line 878
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 879
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto/16 :goto_0

    .line 880
    :cond_7
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastDownEventY:F

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_8

    .line 881
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->hideSoftInput()V

    .line 883
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v4, v3

    .line 882
    invoke-direct {p0, v2, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto/16 :goto_0

    .line 884
    :cond_8
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastDownEventY:F

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    .line 885
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->hideSoftInput()V

    .line 887
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    .line 886
    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto/16 :goto_0

    .line 889
    :cond_9
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    .line 890
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->postBeginSoftInputOnLongPressCommand()V

    goto/16 :goto_0

    .line 847
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
    .line 742
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getMeasuredWidth()I

    move-result v7

    .line 743
    .local v7, "msrdWdth":I
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getMeasuredHeight()I

    move-result v6

    .line 746
    .local v6, "msrdHght":I
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v3

    .line 747
    .local v3, "inptTxtMsrdWdth":I
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v8

    int-to-float v9, v6

    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mHeightRatio:F

    mul-float/2addr v9, v10

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 748
    .local v2, "inptTxtMsrdHght":I
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mModifiedTxtHeight:I

    .line 749
    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .line 750
    .local v1, "inptTxtLeft":I
    sub-int v8, v6, v2

    div-int/lit8 v5, v8, 0x2

    .line 751
    .local v5, "inptTxtTop":I
    add-int v4, v1, v3

    .line 752
    .local v4, "inptTxtRight":I
    add-int v0, v5, v2

    .line 753
    .local v0, "inptTxtBottom":I
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8, v1, v5, v4, v0}, Landroid/widget/EditText;->layout(IIII)V

    .line 755
    if-eqz p1, :cond_0

    .line 757
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->initializeSelectorWheel()V

    .line 758
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    .line 759
    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    .line 760
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    sub-int v8, v5, v8

    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mOverTopSelectionDividerTop:I

    .line 761
    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    add-int/2addr v8, v0

    iput v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mBelowBottomSelectionDividerBottom:I

    .line 763
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 768
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMaxWidth:I

    invoke-direct {p0, p1, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->makeMeasureSpec(II)I

    move-result v2

    .line 769
    .local v2, "newWidthMeasureSpec":I
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMaxHeight:I

    invoke-direct {p0, p2, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->makeMeasureSpec(II)I

    move-result v1

    .line 770
    .local v1, "newHeightMeasureSpec":I
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v4, v2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->superOnMeasure(II)V

    .line 772
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinWidth:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 774
    .local v3, "widthSize":I
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinHeight:I

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getMeasuredHeight()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v0

    .line 776
    .local v0, "heightSize":I
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v4, v3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setMeasuredDimensionWrapper(II)V

    .line 777
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 900
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v9, :cond_1

    :cond_0
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-eqz v9, :cond_2

    .line 901
    :cond_1
    const/4 v9, 0x0

    .line 988
    :goto_0
    return v9

    .line 903
    :cond_2
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v9, :cond_3

    .line 904
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 906
    :cond_3
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 907
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 908
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 988
    :cond_4
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 910
    :pswitch_0
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    if-nez v9, :cond_4

    .line 913
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 914
    .local v1, "currentMoveY":F
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mScrollState:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_6

    .line 915
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastDownEventY:F

    sub-float v9, v1, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v2, v9

    .line 916
    .local v2, "deltaDownY":I
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mTouchSlop:I

    if-le v2, v9, :cond_5

    .line 917
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    .line 918
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    .line 925
    .end local v2    # "deltaDownY":I
    :cond_5
    :goto_2
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    goto :goto_1

    .line 921
    :cond_6
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    sub-float v9, v1, v9

    float-to-int v3, v9

    .line 922
    .local v3, "deltaMoveY":I
    const/4 v9, 0x0

    invoke-virtual {p0, v9, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->scrollBy(II)V

    .line 923
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->invalidate()V

    goto :goto_2

    .line 928
    .end local v1    # "currentMoveY":F
    .end local v3    # "deltaMoveY":I
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->removeBeginSoftInputCommand()V

    .line 929
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->removeChangeCurrentByOneFromLongPress()V

    .line 930
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->cancel()V

    .line 931
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 932
    .local v8, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v9, 0x3e8

    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMaximumFlingVelocity:I

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 933
    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v9

    float-to-int v7, v9

    .line 934
    .local v7, "initialVelocity":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v6, v9

    .line 935
    .local v6, "eventY":I
    int-to-float v9, v6

    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastDownEventY:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-int v3, v9

    .line 936
    .restart local v3    # "deltaMoveY":I
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v9, :cond_7

    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    if-eqz v9, :cond_7

    .line 937
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    .line 938
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    .line 980
    :goto_3
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    .line 981
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 939
    :cond_7
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinimumFlingVelocity:I

    if-le v9, v10, :cond_9

    .line 940
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mTouchSlop:I

    if-gt v3, v9, :cond_8

    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    if-eqz v9, :cond_8

    .line 941
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    .line 942
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->performClick()V

    .line 943
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    goto :goto_3

    .line 945
    :cond_8
    invoke-direct {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->fling(I)V

    .line 946
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    goto :goto_3

    .line 949
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastDownEventTime:J

    sub-long v4, v10, v12

    .line 950
    .local v4, "deltaTime":J
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mTouchSlop:I

    if-gt v3, v9, :cond_f

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v9

    int-to-long v10, v9

    cmp-long v9, v4, v10

    if-gez v9, :cond_f

    .line 951
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    if-eqz v9, :cond_a

    .line 952
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPerformClickOnTap:Z

    .line 953
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->performClick()V

    .line 978
    :goto_4
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    goto :goto_3

    .line 955
    :cond_a
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mBelowBottomSelectionDividerBottom:I

    if-le v6, v9, :cond_b

    .line 956
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->changeValueByTwo(Z)V

    .line 957
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->buttonTapped(I)V

    goto :goto_4

    .line 959
    :cond_b
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mOverTopSelectionDividerTop:I

    if-ge v6, v9, :cond_c

    .line 960
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->changeValueByTwo(Z)V

    .line 961
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->buttonTapped(I)V

    goto :goto_4

    .line 963
    :cond_c
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    if-le v6, v9, :cond_d

    .line 964
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    .line 965
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->buttonTapped(I)V

    goto :goto_4

    .line 967
    :cond_d
    iget v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    if-ge v6, v9, :cond_e

    .line 968
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    .line 969
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPressedStateHelper:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$PressedStateHelper;->buttonTapped(I)V

    goto :goto_4

    .line 972
    :cond_e
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    goto :goto_4

    .line 976
    :cond_f
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    goto :goto_4

    .line 984
    .end local v3    # "deltaMoveY":I
    .end local v4    # "deltaTime":J
    .end local v6    # "eventY":I
    .end local v7    # "initialVelocity":I
    .end local v8    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    .line 985
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    goto/16 :goto_1

    .line 908
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

    .line 826
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->showSoftInputForWindowFocused()V

    .line 830
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez v0, :cond_3

    .line 831
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 832
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 834
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 835
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 837
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->ensureScrollWheelAdjusted()Z

    .line 839
    :cond_3
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 738
    return-void
.end method

.method public performClick()V
    .locals 1

    .prologue
    .line 1494
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v0, :cond_0

    .line 1498
    :goto_0
    return-void

    .line 1497
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->showSoftInput()V

    goto :goto_0
.end method

.method public performClick(Z)V
    .locals 2
    .param p1, "toIncrement"    # Z

    .prologue
    .line 1502
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    if-eq v0, v1, :cond_1

    const/4 p1, 0x1

    .end local p1    # "toIncrement":Z
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    .line 1503
    return-void

    .line 1502
    .restart local p1    # "toIncrement":Z
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public performLongClick()V
    .locals 1

    .prologue
    .line 1507
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    .line 1508
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v0, :cond_0

    .line 1512
    :goto_0
    return-void

    .line 1511
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->showSoftInput()V

    goto :goto_0
.end method

.method public scrollBy(II)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 1336
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    .line 1337
    .local v0, "selectorIndices":[I
    if-eqz p2, :cond_0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    if-gtz v1, :cond_1

    .line 1387
    :cond_0
    :goto_0
    return-void

    .line 1340
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    if-le v1, v2, :cond_2

    aget v1, v0, v4

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    if-gt v1, v2, :cond_2

    .line 1342
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    sub-int p2, v1, v2

    .line 1343
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 1344
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    goto :goto_0

    .line 1348
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    if-ge v1, v2, :cond_3

    aget v1, v0, v4

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    if-lt v1, v2, :cond_3

    .line 1350
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    sub-int p2, v1, v2

    .line 1351
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastDownOrMoveEventY:F

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 1352
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    goto :goto_0

    .line 1356
    :cond_3
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    .line 1357
    :cond_4
    :goto_1
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorTextGapHeight:I

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_7

    .line 1358
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    .line 1359
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->decrementSelectorIndices([I)V

    .line 1360
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez v1, :cond_5

    .line 1361
    aget v1, v0, v4

    invoke-direct {p0, v1, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->setValueInternal(IZ)V

    .line 1362
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLongPressCount:I

    if-lez v1, :cond_6

    .line 1363
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLongPressCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLongPressCount:I

    .line 1368
    :cond_5
    :goto_2
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v1, :cond_4

    aget v1, v0, v4

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    if-gt v1, v2, :cond_4

    .line 1369
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    goto :goto_1

    .line 1365
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->playSoundAndHapticFeedback()V

    goto :goto_2

    .line 1372
    :cond_7
    :goto_3
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorTextGapHeight:I

    sub-int/2addr v2, v3

    neg-int v2, v2

    if-gt v1, v2, :cond_0

    .line 1373
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    .line 1374
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->incrementSelectorIndices([I)V

    .line 1375
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez v1, :cond_8

    .line 1376
    aget v1, v0, v4

    invoke-direct {p0, v1, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->setValueInternal(IZ)V

    .line 1377
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLongPressCount:I

    if-lez v1, :cond_9

    .line 1378
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLongPressCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLongPressCount:I

    .line 1383
    :cond_8
    :goto_4
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v1, :cond_7

    aget v1, v0, v4

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    if-lt v1, v2, :cond_7

    .line 1384
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    goto :goto_3

    .line 1380
    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->playSoundAndHapticFeedback()V

    goto :goto_4
.end method

.method public setAmPm(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    const/4 v3, 0x0

    .line 668
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    .line 669
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-eqz v1, :cond_0

    .line 670
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 671
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/samsung/android/support/sesl/R$dimen;->sesl_time_picker_spinner_am_pm_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mTextSize:I

    .line 672
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 673
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 674
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 675
    const-string/jumbo v1, "sec-roboto-condensed"

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    .line 676
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    .line 677
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 678
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 679
    sget v1, Lcom/samsung/android/support/sesl/R$dimen;->sesl_time_picker_am_pm_sub_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSubTextSize:I

    .line 681
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 2
    .param p1, "displayedValues"    # [Ljava/lang/String;

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1784
    :goto_0
    return-void

    .line 1773
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    .line 1774
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1776
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1781
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->updateInputTextView()Z

    .line 1782
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    .line 1783
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    goto :goto_0

    .line 1779
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_1
.end method

.method public setEditTextMode(Z)V
    .locals 4
    .param p1, "isEditTextMode"    # Z

    .prologue
    const/4 v3, 0x0

    .line 695
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-ne v1, p1, :cond_1

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    .line 700
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsAmPm:Z

    if-nez v1, :cond_4

    .line 701
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    .line 702
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->removeAllCallbacks()V

    .line 703
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    if-nez v1, :cond_2

    .line 704
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInitialScrollOffset:I

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mCurrentScrollOffset:I

    .line 705
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 706
    invoke-direct {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    .line 709
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    const/high16 v2, 0x40000

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setDescendantFocusability(I)V

    .line 710
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->updateInputTextView()Z

    .line 711
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 712
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 713
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;

    .line 714
    .local v0, "provider":Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;
    if-eqz v0, :cond_3

    .line 715
    const/4 v1, 0x3

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    .line 723
    .end local v0    # "provider":Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;
    :cond_3
    :goto_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    .line 725
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->invalidate()V

    .line 726
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mOnEditTextModeChangedListener:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnEditTextModeChangedListener;

    if-eqz v1, :cond_0

    .line 727
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mOnEditTextModeChangedListener:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnEditTextModeChangedListener;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnEditTextModeChangedListener;->onEditTextModeChanged(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;Z)V

    goto :goto_0

    .line 720
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 721
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setDescendantFocusability(I)V

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1328
    if-nez p1, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mScrollState:I

    if-eqz v0, :cond_0

    .line 1329
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->stopScrollAnimation()V

    .line 1330
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->onScrollStateChange(I)V

    .line 1332
    :cond_0
    return-void
.end method

.method public setFormatter(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$Formatter;)V
    .locals 1
    .param p1, "formatter"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$Formatter;

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mFormatter:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    .line 1450
    :goto_0
    return-void

    .line 1447
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mFormatter:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$Formatter;

    .line 1448
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    .line 1449
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->updateInputTextView()Z

    goto :goto_0
.end method

.method public setImeOptions(I)V
    .locals 1
    .param p1, "imeOptions"    # I

    .prologue
    .line 664
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 665
    return-void
.end method

.method public setMaxInputLength(I)V
    .locals 6
    .param p1, "limit"    # I

    .prologue
    const/4 v5, 0x0

    .line 3385
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    .line 3386
    .local v1, "filterArr":[Landroid/text/InputFilter;
    aget-object v0, v1, v5

    .line 3387
    .local v0, "backupFilter":Landroid/text/InputFilter;
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 3388
    .local v2, "lengthFilter":Landroid/text/InputFilter;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/text/InputFilter;

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 3389
    return-void
.end method

.method public setMaxValue(I)V
    .locals 3
    .param p1, "maxValue"    # I

    .prologue
    .line 1733
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    if-ne v1, p1, :cond_0

    .line 1749
    :goto_0
    return-void

    .line 1736
    :cond_0
    if-gez p1, :cond_1

    .line 1737
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1739
    :cond_1
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    .line 1740
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    if-ge v1, v2, :cond_2

    .line 1741
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    .line 1743
    :cond_2
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1744
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->setWrapSelectorWheel(Z)V

    .line 1745
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    .line 1746
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->updateInputTextView()Z

    .line 1747
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    .line 1748
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->invalidate()V

    goto :goto_0

    .line 1743
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMinValue(I)V
    .locals 3
    .param p1, "minValue"    # I

    .prologue
    .line 1695
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    if-ne v1, p1, :cond_0

    .line 1711
    :goto_0
    return-void

    .line 1698
    :cond_0
    if-gez p1, :cond_1

    .line 1699
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1701
    :cond_1
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    .line 1702
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    if-le v1, v2, :cond_2

    .line 1703
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    .line 1705
    :cond_2
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1706
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->setWrapSelectorWheel(Z)V

    .line 1707
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->initializeSelectorWheelIndices()V

    .line 1708
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->updateInputTextView()Z

    .line 1709
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    .line 1710
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->invalidate()V

    goto :goto_0

    .line 1705
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMonthInputMode()V
    .locals 2

    .prologue
    .line 3404
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 3405
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const-string v1, "inputType=month_edittext"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 3406
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3407
    return-void
.end method

.method public setOnEditTextModeChangedListener(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnEditTextModeChangedListener;)V
    .locals 0
    .param p1, "onEditTextModeChangedListener"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnEditTextModeChangedListener;

    .prologue
    .line 1429
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mOnEditTextModeChangedListener:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnEditTextModeChangedListener;

    .line 1430
    return-void
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 1
    .param p1, "intervalMillis"    # J

    .prologue
    .line 1663
    iput-wide p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mLongPressUpdateInterval:J

    .line 1664
    return-void
.end method

.method public setOnScrollListener(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnScrollListener;)V
    .locals 0
    .param p1, "onScrollListener"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnScrollListener;

    .prologue
    .line 1419
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mOnScrollListener:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnScrollListener;

    .line 1420
    return-void
.end method

.method public setOnValueChangedListener(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnValueChangeListener;)V
    .locals 0
    .param p1, "onValueChangedListener"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnValueChangeListener;

    .prologue
    .line 1410
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mOnValueChangeListener:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnValueChangeListener;

    .line 1411
    return-void
.end method

.method public setPickerContentDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 658
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPickerContentDescription:Ljava/lang/String;

    .line 659
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$CustomEditText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$CustomEditText;->setPickerContentDescription(Ljava/lang/String;)V

    .line 660
    return-void
.end method

.method public setSkipValuesOnLongPressEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1290
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSkipNumbers:Z

    .line 1291
    return-void
.end method

.method public setSubTextSize(F)V
    .locals 2
    .param p1, "size"    # F

    .prologue
    .line 1798
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    .line 1799
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1798
    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSubTextSize:I

    .line 1800
    return-void
.end method

.method public setTextSize(F)V
    .locals 3
    .param p1, "size"    # F

    .prologue
    .line 1788
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mContext:Landroid/content/Context;

    .line 1789
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1788
    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mTextSize:I

    .line 1791
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1792
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x0

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 1793
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    .line 1794
    return-void
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)V
    .locals 2
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    const/4 v0, 0x1

    .line 1809
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mCustomTypefaceSet:Z

    .line 1810
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    .line 1811
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    .line 1812
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPickerTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1813
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mPickerBoldTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1814
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->tryComputeMaxWidth()V

    .line 1815
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1482
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->stopScrollAnimation()V

    .line 1484
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->setValueInternal(IZ)V

    .line 1485
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 3
    .param p1, "wrapSelectorWheel"    # Z

    .prologue
    .line 1646
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mSelectorIndices:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    .line 1647
    .local v0, "wrappingAllowed":Z
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eq p1, v1, :cond_1

    .line 1648
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    .line 1650
    :cond_1
    return-void

    .line 1646
    .end local v0    # "wrappingAllowed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setYearDateTimeInputMode()V
    .locals 2

    .prologue
    .line 3414
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 3415
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const-string v1, "inputType=YearDateTime_edittext"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 3416
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3417
    return-void
.end method

.method public startAnimation(ILcom/samsung/android/support/sesl/component/widget/SeslAnimationListener;)V
    .locals 3
    .param p1, "delayTime"    # I
    .param p2, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslAnimationListener;

    .prologue
    .line 1840
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mAnimationListener:Lcom/samsung/android/support/sesl/component/widget/SeslAnimationListener;

    .line 1841
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v1, :cond_0

    .line 1896
    :goto_0
    return-void

    .line 1845
    :cond_0
    move v0, p1

    .line 1846
    .local v0, "delay":I
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    new-instance v2, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate$4;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPickerSpinnerDelegate;I)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
