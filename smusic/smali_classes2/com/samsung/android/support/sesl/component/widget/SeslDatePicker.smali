.class public Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;
.super Landroid/widget/LinearLayout;
.source "SeslDatePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$OnDayClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$OnEditTextModeChangedListener;,
        Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;,
        Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;,
        Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPageChangeListener;,
        Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;,
        Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState;,
        Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$ValidationCallback;,
        Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$OnDateChangedListener;,
        Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DateMode;
    }
.end annotation


# static fields
.field public static final DATE_MODE_END:I = 0x2

.field public static final DATE_MODE_NONE:I = 0x0

.field public static final DATE_MODE_START:I = 0x1

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DEFAULT_MONTH_PER_YEAR:I = 0xc

.field private static final DEFAULT_START_YEAR:I = 0x76e

.field private static final MAX_FONT_SCALE:F = 1.2f

.field private static final MESSAGE_CALENDAR_HEADER_MONTH_BUTTON_SET:I = 0x3e9

.field private static final MESSAGE_CALENDAR_HEADER_TEXT_VALUE_SET:I = 0x3e8

.field private static final SESL_DEBUG:Z = false

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final TAG_CSCFEATURE_CALENDAR_SETCOLOROFDAYS:Ljava/lang/String; = "CscFeature_Calendar_SetColorOfDays"

.field private static final USE_LOCALE:I = 0x0

.field private static final VIEW_CALENDAR:I = 0x0

.field private static final VIEW_SPINNER:I = 0x1


# instance fields
.field private mAnimator:Landroid/widget/ViewAnimator;

.field private mBackgroundBorderlessResId:I

.field private mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

.field private mCalendarHeaderLayoutHeight:I

.field private mCalendarHeaderText:Landroid/widget/TextView;

.field private mCalendarPagerAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;

.field private mCalendarViewMargin:I

.field private mCalendarViewPager:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

.field private mCalendarViewPagerHeight:I

.field private mCalendarViewPagerWidth:I

.field private mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

.field private mContext:Landroid/content/Context;

.field private mCurrentDate:Ljava/util/Calendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private mCurrentPosition:I

.field private mCurrentView:I

.field private mDatePickerHeight:I

.field private mDatePickerLayout:Landroid/widget/LinearLayout;

.field private mDayFormatter:Ljava/text/SimpleDateFormat;

.field private mDayHeight:I

.field private mDayOfTheWeekLayout:Landroid/widget/LinearLayout;

.field private mDayOfTheWeekLayoutHeight:I

.field private mDayOfTheWeekLayoutWidth:I

.field private mDayOfTheWeekView:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;

.field private mEndDate:Ljava/util/Calendar;

.field private mFirstBlankSpace:Landroid/view/View;

.field private mFirstBlankSpaceHeight:I

.field private mFirstDayOfWeek:I

.field private mHandler:Landroid/os/Handler;

.field private mIsFarsiLanguage:Z

.field private mIsFirstMeasure:Z

.field private mIsFromSetMaxDate:Z

.field private mIsFromSetMinDate:Z

.field private mIsRTL:Z

.field private mIsSimplifiedChinese:Z

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mMode:I

.field private mNextButton:Landroid/widget/ImageButton;

.field private mNumDays:I

.field private mOldCalendarViewPagerWidth:I

.field private mOldSelectedDay:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnDateChangedListener:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$OnDateChangedListener;

.field private mPadding:I

.field private mPositionCount:I

.field private mPrevButton:Landroid/widget/ImageButton;

.field private mSecondBlankSpace:Landroid/view/View;

.field private mSecondBlankSpaceHeight:I

.field private mSpinnerLayout:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

.field private mSpinnerLayoutBottomMargin:I

.field private mSpinnerLayoutHeight:I

.field private mSpinnerLayoutTopMargin:I

.field private mStartDate:Ljava/util/Calendar;

.field private mTempDate:Ljava/util/Calendar;

.field private mTempMinMaxDate:Ljava/util/Calendar;

.field private mValidationCallback:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$ValidationCallback;

.field private mWeekStart:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 381
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 382
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 388
    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 389
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 395
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 396
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 402
    invoke-direct/range {p0 .. p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 177
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentView:I

    .line 208
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mIsFromSetMaxDate:Z

    .line 209
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mIsFromSetMinDate:Z

    .line 211
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mFirstDayOfWeek:I

    .line 214
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mOldSelectedDay:I

    .line 217
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mPadding:I

    .line 219
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mIsFirstMeasure:Z

    .line 235
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mBackgroundBorderlessResId:I

    .line 243
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMode:I

    .line 246
    new-instance v14, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    .line 353
    new-instance v14, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$2;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 404
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    .line 405
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 406
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->isRTL()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mIsRTL:Z

    .line 407
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->isFarsiLanguage()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mIsFarsiLanguage:Z

    .line 408
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->isSimplifiedChinese()Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mIsSimplifiedChinese:Z

    .line 409
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mIsSimplifiedChinese:Z

    if-eqz v14, :cond_2

    .line 410
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v15, "EEEEE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    .line 414
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    .line 415
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    .line 416
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    .line 417
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 418
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    .line 420
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 421
    .local v12, "res":Landroid/content/res/Resources;
    sget-object v14, Lcom/samsung/android/support/sesl/R$styleable;->SeslDatePicker:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v14, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 423
    .local v4, "a":Landroid/content/res/TypedArray;
    sget v14, Lcom/samsung/android/support/sesl/R$styleable;->SeslDatePicker_android_startYear:I

    const/16 v15, 0x76e

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 424
    .local v13, "startYear":I
    sget v14, Lcom/samsung/android/support/sesl/R$styleable;->SeslDatePicker_android_endYear:I

    const/16 v15, 0x834

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 425
    .local v6, "endYear":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v13, v15, v0}, Ljava/util/Calendar;->set(III)V

    .line 426
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    const/16 v15, 0xb

    const/16 v16, 0x1f

    move/from16 v0, v16

    invoke-virtual {v14, v6, v15, v0}, Ljava/util/Calendar;->set(III)V

    .line 428
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 430
    .local v8, "inflater":Landroid/view/LayoutInflater;
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x17

    if-lt v14, v15, :cond_3

    .line 432
    sget v14, Lcom/samsung/android/support/sesl/R$layout;->sesl_date_picker:I

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v8, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 437
    :goto_1
    sget v14, Lcom/samsung/android/support/sesl/R$styleable;->SeslDatePicker_android_firstDayOfWeek:I

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 438
    .local v7, "firstDayOfWeek":I
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 440
    if-eqz v7, :cond_0

    .line 441
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->setFirstDayOfWeek(I)V

    .line 444
    :cond_0
    sget v14, Lcom/samsung/android/support/sesl/R$id;->sesl_date_picker_calendar:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarViewPager:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    .line 445
    new-instance v14, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;

    .line 446
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarViewPager:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;

    invoke-virtual {v14, v15}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setAdapter(Lcom/samsung/android/support/sesl/core/view/SeslPagerAdapter;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarViewPager:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    new-instance v15, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPageChangeListener;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPageChangeListener;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$1;)V

    invoke-virtual {v14, v15}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setOnPageChangeListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPager$OnPageChangeListener;)V

    .line 448
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarViewPager:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setMouseWheelEventSupport(Z)V

    .line 449
    sget v14, Lcom/samsung/android/support/sesl/R$dimen;->sesl_date_picker_calendar_view_padding:I

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mPadding:I

    .line 450
    sget v14, Lcom/samsung/android/support/sesl/R$id;->sesl_date_picker_calendar_header_text:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    .line 451
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    .line 452
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    .line 453
    sget v14, Lcom/samsung/android/support/sesl/R$id;->sesl_date_picker_view_animator:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ViewAnimator;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mAnimator:Landroid/widget/ViewAnimator;

    .line 454
    sget v14, Lcom/samsung/android/support/sesl/R$id;->sesl_date_picker_spinner_view:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSpinnerLayout:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    .line 456
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSpinnerLayout:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    new-instance v15, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$3;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)V

    invoke-virtual {v14, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->setOnSpinnerDateChangedListener(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$OnSpinnerDateChangedListener;)V

    .line 485
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentView:I

    .line 486
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    new-instance v15, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$4;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)V

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 495
    sget v14, Lcom/samsung/android/support/sesl/R$dimen;->sesl_date_picker_calendar_day_height:I

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mDayOfTheWeekLayoutHeight:I

    .line 497
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->checkMaxFontSize()V

    .line 499
    sget v14, Lcom/samsung/android/support/sesl/R$dimen;->sesl_date_picker_calendar_view_width:I

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    .line 501
    sget v14, Lcom/samsung/android/support/sesl/R$dimen;->sesl_date_picker_calendar_view_margin:I

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarViewMargin:I

    .line 503
    sget v14, Lcom/samsung/android/support/sesl/R$dimen;->sesl_date_picker_calendar_view_width:I

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mDayOfTheWeekLayoutWidth:I

    .line 505
    sget v14, Lcom/samsung/android/support/sesl/R$id;->sesl_date_picker_day_of_the_week:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mDayOfTheWeekLayout:Landroid/widget/LinearLayout;

    .line 506
    new-instance v14, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mDayOfTheWeekView:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;

    .line 507
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mDayOfTheWeekLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mDayOfTheWeekView:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 509
    sget v14, Lcom/samsung/android/support/sesl/R$id;->sesl_date_picker_layout:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mDatePickerLayout:Landroid/widget/LinearLayout;

    .line 510
    sget v14, Lcom/samsung/android/support/sesl/R$id;->sesl_date_picker_calendar_header_layout:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

    .line 513
    sget v14, Lcom/samsung/android/support/sesl/R$id;->sesl_date_picker_calendar_header_prev_button:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    .line 514
    sget v14, Lcom/samsung/android/support/sesl/R$id;->sesl_date_picker_calendar_header_next_button:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    .line 515
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mIsRTL:Z

    if-eqz v14, :cond_1

    .line 516
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    sget v16, Lcom/samsung/android/support/sesl/R$string;->sesl_date_picker_increment_month:I

    .line 517
    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 516
    invoke-virtual {v14, v15}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 518
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    sget v16, Lcom/samsung/android/support/sesl/R$string;->sesl_date_picker_decrement_month:I

    .line 519
    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 518
    invoke-virtual {v14, v15}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 522
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 524
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 525
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 528
    new-instance v10, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$5;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$5;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)V

    .line 538
    .local v10, "monthTouchListener":Landroid/view/View$OnTouchListener;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v10}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 539
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v10}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 542
    new-instance v9, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$6;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$6;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)V

    .line 552
    .local v9, "monthKeyListener":Landroid/view/View$OnKeyListener;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v9}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 553
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v9}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 556
    new-instance v5, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$7;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$7;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)V

    .line 564
    .local v5, "btnFocusChangeListener":Landroid/view/View$OnFocusChangeListener;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v5}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 565
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v5}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 567
    new-instance v11, Landroid/util/TypedValue;

    invoke-direct {v11}, Landroid/util/TypedValue;-><init>()V

    .line 568
    .local v11, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v14

    const v15, 0x101045c

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v15, v11, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 570
    iget v14, v11, Landroid/util/TypedValue;->resourceId:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mBackgroundBorderlessResId:I

    .line 571
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mBackgroundBorderlessResId:I

    invoke-virtual {v14, v15}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 572
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mBackgroundBorderlessResId:I

    invoke-virtual {v14, v15}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 574
    sget v14, Lcom/samsung/android/support/sesl/R$dimen;->sesl_date_picker_calendar_header_height:I

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarHeaderLayoutHeight:I

    .line 576
    sget v14, Lcom/samsung/android/support/sesl/R$dimen;->sesl_date_picker_calendar_view_height:I

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarViewPagerHeight:I

    .line 578
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mOldCalendarViewPagerWidth:I

    .line 580
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 581
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    sget v15, Lcom/samsung/android/support/sesl/R$id;->sesl_date_picker_calendar_header_text:I

    invoke-virtual {v14, v15}, Landroid/widget/ImageButton;->setNextFocusRightId(I)V

    .line 582
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    sget v15, Lcom/samsung/android/support/sesl/R$id;->sesl_date_picker_calendar_header_text:I

    invoke-virtual {v14, v15}, Landroid/widget/ImageButton;->setNextFocusLeftId(I)V

    .line 583
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    sget v15, Lcom/samsung/android/support/sesl/R$id;->sesl_date_picker_calendar_header_next_button:I

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setNextFocusRightId(I)V

    .line 584
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    sget v15, Lcom/samsung/android/support/sesl/R$id;->sesl_date_picker_calendar_header_prev_button:I

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setNextFocusLeftId(I)V

    .line 587
    sget v14, Lcom/samsung/android/support/sesl/R$id;->sesl_date_picker_between_header_and_weekend:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mFirstBlankSpace:Landroid/view/View;

    .line 588
    sget v14, Lcom/samsung/android/support/sesl/R$id;->sesl_date_picker_between_weekend_and_calender:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSecondBlankSpace:Landroid/view/View;

    .line 589
    sget v14, Lcom/samsung/android/support/sesl/R$dimen;->sesl_date_picker_gap_between_header_and_weekend:I

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mFirstBlankSpaceHeight:I

    .line 591
    sget v14, Lcom/samsung/android/support/sesl/R$dimen;->sesl_date_picker_gap_between_weekend_and_calender:I

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSecondBlankSpaceHeight:I

    .line 594
    sget v14, Lcom/samsung/android/support/sesl/R$dimen;->sesl_date_picker_spinner_height:I

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSpinnerLayoutHeight:I

    .line 595
    sget v14, Lcom/samsung/android/support/sesl/R$dimen;->sesl_date_picker_spinner_margin_top:I

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSpinnerLayoutTopMargin:I

    .line 597
    sget v14, Lcom/samsung/android/support/sesl/R$dimen;->sesl_date_picker_spinner_margin_bottom:I

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSpinnerLayoutBottomMargin:I

    .line 600
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarHeaderLayoutHeight:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mFirstBlankSpaceHeight:I

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mDayOfTheWeekLayoutHeight:I

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSecondBlankSpaceHeight:I

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarViewPagerHeight:I

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mDatePickerHeight:I

    .line 604
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->updateSimpleMonthView(Z)V

    .line 605
    return-void

    .line 412
    .end local v4    # "a":Landroid/content/res/TypedArray;
    .end local v5    # "btnFocusChangeListener":Landroid/view/View$OnFocusChangeListener;
    .end local v6    # "endYear":I
    .end local v7    # "firstDayOfWeek":I
    .end local v8    # "inflater":Landroid/view/LayoutInflater;
    .end local v9    # "monthKeyListener":Landroid/view/View$OnKeyListener;
    .end local v10    # "monthTouchListener":Landroid/view/View$OnTouchListener;
    .end local v11    # "outValue":Landroid/util/TypedValue;
    .end local v12    # "res":Landroid/content/res/Resources;
    .end local v13    # "startYear":I
    :cond_2
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v15, "EEE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    goto/16 :goto_0

    .line 434
    .restart local v4    # "a":Landroid/content/res/TypedArray;
    .restart local v6    # "endYear":I
    .restart local v8    # "inflater":Landroid/view/LayoutInflater;
    .restart local v12    # "res":Landroid/content/res/Resources;
    .restart local v13    # "startYear":I
    :cond_3
    sget v14, Lcom/samsung/android/support/sesl/R$layout;->sesl_date_picker_legacy:I

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v8, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;
    .param p1, "x1"    # Ljava/util/Calendar;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getMonthAndYearString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->removeAllCallbacks()V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;
    .param p1, "x1"    # I

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->setCurrentView(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    .prologue
    .line 115
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMode:I

    return v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->updateSimpleMonthView(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->onDateChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->seslLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mIsRTL:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    .prologue
    .line 115
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mNumDays:I

    return v0
.end method

.method static synthetic access$2502(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;
    .param p1, "x1"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mNumDays:I

    return p1
.end method

.method static synthetic access$2600(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    .prologue
    .line 115
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mDayHeight:I

    return v0
.end method

.method static synthetic access$2602(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;
    .param p1, "x1"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mDayHeight:I

    return p1
.end method

.method static synthetic access$2700(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    .prologue
    .line 115
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mDayOfTheWeekLayoutHeight:I

    return v0
.end method

.method static synthetic access$2800(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    .prologue
    .line 115
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mWeekStart:I

    return v0
.end method

.method static synthetic access$2802(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;
    .param p1, "x1"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mWeekStart:I

    return p1
.end method

.method static synthetic access$2900(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mIsFromSetMinDate:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mIsFromSetMinDate:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    .prologue
    .line 115
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentView:I

    return v0
.end method

.method static synthetic access$3000(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mIsFromSetMaxDate:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mIsFromSetMaxDate:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    .prologue
    .line 115
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mDayOfTheWeekLayoutWidth:I

    return v0
.end method

.method static synthetic access$3400(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Ljava/text/SimpleDateFormat;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    .prologue
    .line 115
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mPadding:I

    return v0
.end method

.method static synthetic access$3700(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Lcom/samsung/android/support/sesl/core/view/SeslViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarViewPager:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mNextButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    .prologue
    .line 115
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$702(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;
    .param p1, "x1"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    .prologue
    .line 115
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mPositionCount:I

    return v0
.end method

.method static synthetic access$802(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;
    .param p1, "x1"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mPositionCount:I

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    .prologue
    .line 115
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mBackgroundBorderlessResId:I

    return v0
.end method

.method private checkMaxFontSize()V
    .locals 8

    .prologue
    .line 1870
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 1871
    .local v1, "currentFontScale":F
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/sesl/R$dimen;->sesl_date_picker_calendar_header_month_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 1874
    .local v0, "calendarHeaderTextSize":I
    const v2, 0x3f99999a    # 1.2f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 1875
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    const/4 v3, 0x0

    int-to-float v4, v0

    div-float/2addr v4, v1

    float-to-double v4, v4

    .line 1876
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    const-wide v6, 0x3ff3333340000000L    # 1.2000000476837158

    mul-double/2addr v4, v6

    .line 1875
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1878
    :cond_0
    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3
    .param p1, "oldCalendar"    # Ljava/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 636
    if-nez p1, :cond_0

    .line 637
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 642
    :goto_0
    return-object v2

    .line 639
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 640
    .local v0, "currentTimeMillis":J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 641
    .local v2, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method public static getDaysInMonth(II)I
    .locals 2
    .param p0, "month"    # I
    .param p1, "year"    # I

    .prologue
    .line 1108
    packed-switch p0, :pswitch_data_0

    .line 1125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Month"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1116
    :pswitch_0
    const/16 v0, 0x1f

    .line 1123
    :goto_0
    return v0

    .line 1121
    :pswitch_1
    const/16 v0, 0x1e

    goto :goto_0

    .line 1123
    :pswitch_2
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_0

    :cond_0
    const/16 v0, 0x1c

    goto :goto_0

    .line 1108
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getMonthAndYearString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 10
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 1600
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mIsFarsiLanguage:Z

    if-eqz v0, :cond_0

    .line 1601
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v0, "LLLL y"

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v8, v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1603
    .local v8, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1612
    .end local v8    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    return-object v0

    .line 1605
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v0, 0x32

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1606
    .local v9, "stringBuilder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Formatter;

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {v1, v9, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 1608
    .local v1, "formatter":Ljava/util/Formatter;
    const/16 v6, 0x24

    .line 1610
    .local v6, "flags":I
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1611
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 1612
    .local v2, "millis":J
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1613
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v7

    move-wide v4, v2

    .line 1612
    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    .line 1613
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isFarsiLanguage()Z
    .locals 2

    .prologue
    .line 2008
    const-string v0, "fa"

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isRTL()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1289
    const-string/jumbo v3, "ur"

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1294
    :cond_0
    :goto_0
    return v1

    .line 1292
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 1293
    invoke-virtual {v3, v4}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1292
    invoke-static {v3}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    .line 1294
    .local v0, "defDirectionality":B
    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private isSimplifiedChinese()Z
    .locals 2

    .prologue
    .line 2012
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 2013
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2012
    :goto_0
    return v0

    .line 2013
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeMeasureSpec(II)I
    .locals 8
    .param p1, "measureSpec"    # I
    .param p2, "maxSize"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 1561
    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    move v0, p1

    .line 1596
    .end local p1    # "measureSpec":I
    .local v0, "measureSpec":I
    :goto_0
    return v0

    .line 1564
    .end local v0    # "measureSpec":I
    .restart local p1    # "measureSpec":I
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1566
    .local v1, "mode":I
    const/high16 v4, -0x80000000

    if-ne v1, v4, :cond_2

    .line 1568
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v3, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1569
    .local v3, "smallestScreenWidthDp":I
    const/16 v4, 0x258

    if-lt v3, v4, :cond_1

    .line 1570
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/support/sesl/R$dimen;->sesl_date_picker_dialog_min_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1580
    .end local v3    # "smallestScreenWidthDp":I
    .local v2, "size":I
    :goto_1
    sparse-switch v1, :sswitch_data_0

    .line 1594
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown measure mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1573
    .end local v2    # "size":I
    .restart local v3    # "smallestScreenWidthDp":I
    :cond_1
    const/4 v4, 0x1

    int-to-float v5, v3

    .line 1574
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 1573
    invoke-static {v4, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v2, v4

    .restart local v2    # "size":I
    goto :goto_1

    .line 1577
    .end local v2    # "size":I
    .end local v3    # "smallestScreenWidthDp":I
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .restart local v2    # "size":I
    goto :goto_1

    .line 1582
    :sswitch_0
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarViewMargin:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v2, v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    .line 1583
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarViewMargin:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v2, v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mDayOfTheWeekLayoutWidth:I

    :goto_2
    move v0, p1

    .line 1596
    .end local p1    # "measureSpec":I
    .restart local v0    # "measureSpec":I
    goto :goto_0

    .line 1586
    .end local v0    # "measureSpec":I
    .restart local p1    # "measureSpec":I
    :sswitch_1
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarViewMargin:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v2, v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    .line 1587
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarViewMargin:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v2, v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mDayOfTheWeekLayoutWidth:I

    .line 1588
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1589
    goto :goto_2

    .line 1591
    :sswitch_2
    invoke-static {p2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1592
    goto :goto_2

    .line 1580
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private onDateChanged(Z)V
    .locals 5
    .param p1, "callbackToClient"    # Z

    .prologue
    .line 795
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mOnDateChangedListener:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$OnDateChangedListener;

    if-eqz v3, :cond_0

    .line 796
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 797
    .local v2, "year":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 798
    .local v1, "monthOfYear":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 799
    .local v0, "dayOfMonth":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mOnDateChangedListener:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$OnDateChangedListener;

    invoke-interface {v3, p0, v2, v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$OnDateChangedListener;->onDateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;III)V

    .line 801
    .end local v0    # "dayOfMonth":I
    .end local v1    # "monthOfYear":I
    .end local v2    # "year":I
    :cond_0
    return-void
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 2
    .param p1, "increment"    # Z
    .param p2, "delayMillis"    # J

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 1745
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

    .line 1749
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;->access$3600(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 1750
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1751
    return-void

    .line 1747
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private removeAllCallbacks()V
    .locals 4

    .prologue
    .line 1757
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v1, :cond_0

    .line 1758
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1760
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1761
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$10;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1768
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method private seslLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1285
    return-void
.end method

.method private setCurrentView(I)V
    .locals 11
    .param p1, "viewIndex"    # I

    .prologue
    const/16 v10, 0x3e8

    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1881
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentView:I

    if-eq v5, p1, :cond_0

    .line 1882
    packed-switch p1, :pswitch_data_0

    .line 1938
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 1939
    .local v3, "msg1":Landroid/os/Message;
    const/16 v5, 0x3e9

    iput v5, v3, Landroid/os/Message;->what:I

    .line 1940
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1941
    return-void

    .line 1884
    .end local v3    # "msg1":Landroid/os/Message;
    :pswitch_0
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->notifyDataSetChanged()V

    .line 1886
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSpinnerLayout:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->updateInputState()V

    .line 1887
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSpinnerLayout:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v5, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->setEditTextMode(Z)V

    .line 1889
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v5, v7}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 1891
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSpinnerLayout:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->setVisibility(I)V

    .line 1892
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSpinnerLayout:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v5, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->setEnabled(Z)V

    .line 1893
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentView:I

    .line 1896
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 1897
    .local v2, "msg":Landroid/os/Message;
    iput v10, v2, Landroid/os/Message;->what:I

    .line 1898
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1905
    .end local v2    # "msg":Landroid/os/Message;
    :pswitch_1
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMode:I

    packed-switch v5, :pswitch_data_1

    .line 1917
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1918
    .local v4, "year":I
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1919
    .local v1, "month":I
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1922
    .local v0, "day":I
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSpinnerLayout:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v5, v4, v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->updateDate(III)V

    .line 1923
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v5, v6}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 1924
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSpinnerLayout:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->setEnabled(Z)V

    .line 1925
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentView:I

    .line 1928
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 1929
    .restart local v2    # "msg":Landroid/os/Message;
    iput v10, v2, Landroid/os/Message;->what:I

    .line 1930
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1907
    .end local v0    # "day":I
    .end local v1    # "month":I
    .end local v2    # "msg":Landroid/os/Message;
    .end local v4    # "year":I
    :pswitch_2
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1908
    .restart local v4    # "year":I
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1909
    .restart local v1    # "month":I
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1910
    .restart local v0    # "day":I
    goto :goto_1

    .line 1912
    .end local v0    # "day":I
    .end local v1    # "month":I
    .end local v4    # "year":I
    :pswitch_3
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1913
    .restart local v4    # "year":I
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1914
    .restart local v1    # "month":I
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1915
    .restart local v0    # "day":I
    goto :goto_1

    .line 1882
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1905
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateSimpleMonthView(Z)V
    .locals 9
    .param p1, "animation"    # Z

    .prologue
    const/4 v8, 0x1

    .line 1338
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1339
    .local v0, "month":I
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1341
    .local v5, "year":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getMinYear()I

    move-result v6

    sub-int v6, v5, v6

    mul-int/lit8 v6, v6, 0xc

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getMinMonth()I

    move-result v7

    sub-int v7, v0, v7

    add-int v3, v6, v7

    .line 1342
    .local v3, "position":I
    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mIsRTL:Z

    if-eqz v6, :cond_0

    .line 1343
    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mPositionCount:I

    add-int/lit8 v4, v6, -0x1

    .line 1344
    .local v4, "rtlIndex":I
    sub-int v3, v4, v3

    .line 1347
    .end local v4    # "rtlIndex":I
    :cond_0
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentPosition:I

    .line 1348
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarViewPager:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    invoke-virtual {v6, v3, p1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setCurrentItem(IZ)V

    .line 1350
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1351
    .local v1, "msg":Landroid/os/Message;
    const/16 v6, 0x3e8

    iput v6, v1, Landroid/os/Message;->what:I

    .line 1352
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1353
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1355
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 1356
    .local v2, "msg1":Landroid/os/Message;
    const/16 v6, 0x3e9

    iput v6, v2, Landroid/os/Message;->what:I

    .line 1357
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1358
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 964
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 965
    const/4 v0, 0x1

    return v0
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
    .line 1071
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 1072
    return-void
.end method

.method public getDateMode()I
    .locals 1

    .prologue
    .line 1866
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMode:I

    return v0
.end method

.method public getDayOfMonth()I
    .locals 2

    .prologue
    .line 827
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getEditText(I)Landroid/widget/EditText;
    .locals 1
    .param p1, "picker"    # I

    .prologue
    .line 1993
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSpinnerLayout:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->getEditText(I)Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method public getEndDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .prologue
    .line 1060
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mFirstDayOfWeek:I

    if-eqz v0, :cond_0

    .line 1061
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mFirstDayOfWeek:I

    .line 1063
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    goto :goto_0
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    .line 890
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxDateCalendar()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMaxDay()I
    .locals 2

    .prologue
    .line 956
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMaxMonth()I
    .locals 2

    .prologue
    .line 946
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMaxYear()I
    .locals 2

    .prologue
    .line 936
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    .line 841
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDateCalendar()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMinDay()I
    .locals 2

    .prologue
    .line 951
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMinMonth()I
    .locals 2

    .prologue
    .line 941
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMinYear()I
    .locals 2

    .prologue
    .line 931
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .locals 2

    .prologue
    .line 818
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getNumberPicker(I)Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;
    .locals 1
    .param p1, "picker"    # I

    .prologue
    .line 2004
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSpinnerLayout:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->getNumberPicker(I)Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedDay()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getStartDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 809
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILcom/samsung/android/support/sesl/component/widget/SeslDatePicker$OnDateChangedListener;)V
    .locals 4
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$OnDateChangedListener;

    .prologue
    const/4 v2, 0x1

    .line 658
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 659
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 661
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 666
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 669
    :cond_1
    iput-object p4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mOnDateChangedListener:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$OnDateChangedListener;

    .line 671
    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->updateSimpleMonthView(Z)V

    .line 672
    invoke-direct {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->onDateChanged(Z)V

    .line 674
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSpinnerLayout:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->setMinDate(J)V

    .line 675
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSpinnerLayout:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->setMaxDate(J)V

    .line 677
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentView:I

    if-nez v0, :cond_2

    .line 678
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSpinnerLayout:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->setVisibility(I)V

    .line 679
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSpinnerLayout:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->setEnabled(Z)V

    .line 682
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 683
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 684
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 685
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 686
    return-void
.end method

.method public init(IIILcom/samsung/android/support/sesl/component/widget/SeslDatePicker$OnDateChangedListener;JJ)V
    .locals 5
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$OnDateChangedListener;
    .param p5, "minDate"    # J
    .param p7, "maxDate"    # J

    .prologue
    const/4 v4, 0x1

    .line 702
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 703
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 706
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p5, p6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 707
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p5, p6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p5, p6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 713
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p7, p8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 714
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 715
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p7, p8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 717
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p7, p8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 719
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 721
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSpinnerLayout:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->setMinDate(J)V

    .line 722
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSpinnerLayout:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->setMaxDate(J)V

    .line 724
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 725
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 726
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 727
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 729
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->notifyDataSetChanged()V

    .line 730
    iput-object p4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mOnDateChangedListener:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$OnDateChangedListener;

    .line 732
    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->updateSimpleMonthView(Z)V

    .line 733
    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->onDateChanged(Z)V

    .line 734
    return-void
.end method

.method public isEditTextMode()Z
    .locals 1

    .prologue
    .line 1961
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentView:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSpinnerLayout:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->isEditTextMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 1709
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1710
    .local v0, "id":I
    sget v1, Lcom/samsung/android/support/sesl/R$id;->sesl_date_picker_calendar_header_prev_button:I

    if-ne v0, v1, :cond_1

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentPosition:I

    if-eqz v1, :cond_1

    .line 1711
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarViewPager:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentPosition:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setCurrentItemFromUser(IZ)V

    .line 1716
    :cond_0
    :goto_0
    return-void

    .line 1712
    :cond_1
    sget v1, Lcom/samsung/android/support/sesl/R$id;->sesl_date_picker_calendar_header_next_button:I

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentPosition:I

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mPositionCount:I

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1714
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarViewPager:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setCurrentItemFromUser(IZ)V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v5, 0x1

    .line 970
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 971
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->isRTL()Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mIsRTL:Z

    .line 972
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->isFarsiLanguage()Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mIsFarsiLanguage:Z

    .line 975
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_1

    .line 976
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 980
    .local v0, "locale":Ljava/util/Locale;
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    if-eq v3, v0, :cond_0

    .line 981
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 982
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->isSimplifiedChinese()Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mIsSimplifiedChinese:Z

    .line 983
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mIsSimplifiedChinese:Z

    if-eqz v3, :cond_2

    .line 984
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "EEEEE"

    invoke-direct {v3, v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    .line 990
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 991
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mDatePickerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 993
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mIsFirstMeasure:Z

    .line 995
    sget v3, Lcom/samsung/android/support/sesl/R$dimen;->sesl_date_picker_calendar_header_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarHeaderLayoutHeight:I

    .line 997
    sget v3, Lcom/samsung/android/support/sesl/R$dimen;->sesl_date_picker_calendar_view_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarViewPagerHeight:I

    .line 999
    sget v3, Lcom/samsung/android/support/sesl/R$dimen;->sesl_date_picker_calendar_day_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mDayOfTheWeekLayoutHeight:I

    .line 1001
    sget v3, Lcom/samsung/android/support/sesl/R$dimen;->sesl_date_picker_gap_between_header_and_weekend:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mFirstBlankSpaceHeight:I

    .line 1003
    sget v3, Lcom/samsung/android/support/sesl/R$dimen;->sesl_date_picker_gap_between_weekend_and_calender:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSecondBlankSpaceHeight:I

    .line 1006
    sget v3, Lcom/samsung/android/support/sesl/R$dimen;->sesl_date_picker_spinner_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSpinnerLayoutHeight:I

    .line 1007
    sget v3, Lcom/samsung/android/support/sesl/R$dimen;->sesl_date_picker_spinner_margin_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSpinnerLayoutTopMargin:I

    .line 1009
    sget v3, Lcom/samsung/android/support/sesl/R$dimen;->sesl_date_picker_spinner_margin_bottom:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSpinnerLayoutBottomMargin:I

    .line 1012
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarHeaderLayoutHeight:I

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mFirstBlankSpaceHeight:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mDayOfTheWeekLayoutHeight:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSecondBlankSpaceHeight:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarViewPagerHeight:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mDatePickerHeight:I

    .line 1015
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSpinnerLayoutHeight:I

    invoke-direct {v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1017
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSpinnerLayoutTopMargin:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1018
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSpinnerLayoutBottomMargin:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1019
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSpinnerLayout:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v3, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1021
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->checkMaxFontSize()V

    .line 1022
    return-void

    .line 978
    .end local v0    # "locale":Ljava/util/Locale;
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_1
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .restart local v0    # "locale":Ljava/util/Locale;
    goto/16 :goto_0

    .line 986
    :cond_2
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "EEE"

    invoke-direct {v3, v4, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    goto/16 :goto_1
.end method

.method public onDayClick(Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;Ljava/util/Calendar;)V
    .locals 21
    .param p1, "view"    # Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;
    .param p2, "day"    # Ljava/util/Calendar;

    .prologue
    .line 1300
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDayClick day : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->seslLog(Ljava/lang/String;)V

    .line 1301
    if-eqz p2, :cond_2

    .line 1302
    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v20

    .line 1303
    .local v20, "year":I
    const/4 v4, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v18

    .line 1304
    .local v18, "month":I
    const/4 v4, 0x5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v19

    .line 1306
    .local v19, "selectedDay":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v17

    .line 1307
    .local v17, "currentYear":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v16

    .line 1309
    .local v16, "currentMonth":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->onDayOfMonthSelected(III)V

    .line 1311
    move/from16 v0, v20

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    move/from16 v0, v18

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mOldSelectedDay:I

    move/from16 v0, v19

    if-eq v0, v4, :cond_1

    .line 1312
    :cond_0
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mOldSelectedDay:I

    .line 1313
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->notifyDataSetChanged()V

    .line 1317
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getMinMonth()I

    move-result v4

    move/from16 v0, v18

    if-ne v4, v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getMinYear()I

    move-result v4

    move/from16 v0, v20

    if-ne v4, v0, :cond_3

    .line 1318
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getMinDay()I

    move-result v9

    .line 1324
    .local v9, "enabledDayRangeStart":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getMaxMonth()I

    move-result v4

    move/from16 v0, v18

    if-ne v4, v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getMaxYear()I

    move-result v4

    move/from16 v0, v20

    if-ne v4, v0, :cond_4

    .line 1325
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getMaxDay()I

    move-result v10

    .line 1330
    .local v10, "enabledDayRangeEnd":I
    :goto_1
    const/4 v4, 0x5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v4, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v4, 0x1

    .line 1331
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getFirstDayOfWeek()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMode:I

    move-object/from16 v4, p1

    .line 1330
    invoke-virtual/range {v4 .. v15}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->setMonthParams(IIIIIILjava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;I)V

    .line 1333
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->invalidate()V

    .line 1335
    .end local v9    # "enabledDayRangeStart":I
    .end local v10    # "enabledDayRangeEnd":I
    .end local v16    # "currentMonth":I
    .end local v17    # "currentYear":I
    .end local v18    # "month":I
    .end local v19    # "selectedDay":I
    .end local v20    # "year":I
    :cond_2
    return-void

    .line 1320
    .restart local v16    # "currentMonth":I
    .restart local v17    # "currentYear":I
    .restart local v18    # "month":I
    .restart local v19    # "selectedDay":I
    .restart local v20    # "year":I
    :cond_3
    const/4 v9, 0x1

    .restart local v9    # "enabledDayRangeStart":I
    goto :goto_0

    .line 1327
    :cond_4
    const/16 v10, 0x1f

    .restart local v10    # "enabledDayRangeEnd":I
    goto :goto_1
.end method

.method public onDayOfMonthSelected(III)V
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    const/4 v3, 0x1

    .line 1131
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 1132
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 1133
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 1135
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1136
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1137
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1139
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMode:I

    packed-switch v1, :pswitch_data_0

    .line 1149
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 1150
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 1151
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 1152
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 1156
    :goto_0
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMode:I

    if-eqz v1, :cond_0

    .line 1157
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->onValidationChanged(Z)V

    .line 1159
    :cond_0
    invoke-direct {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->onDateChanged(Z)V

    .line 1160
    return-void

    .line 1141
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 1142
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    goto :goto_0

    .line 1145
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 1146
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    goto :goto_0

    .line 1139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1721
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->removeAllCallbacks()V

    .line 1722
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1723
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 1728
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1729
    .local v0, "id":I
    sget v1, Lcom/samsung/android/support/sesl/R$id;->sesl_date_picker_calendar_header_prev_button:I

    if-ne v0, v1, :cond_1

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentPosition:I

    if-eqz v1, :cond_1

    .line 1730
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-direct {p0, v4, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    .line 1735
    :cond_0
    :goto_0
    return v4

    .line 1731
    :cond_1
    sget v1, Lcom/samsung/android/support/sesl/R$id;->sesl_date_picker_calendar_header_next_button:I

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentPosition:I

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mPositionCount:I

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1733
    const/4 v1, 0x1

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 1515
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->makeMeasureSpec(II)I

    move-result v1

    .line 1517
    .local v1, "newWidthMeasureSpec":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1518
    .local v0, "height":I
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mDatePickerHeight:I

    if-ge v0, v2, :cond_1

    .line 1519
    invoke-direct {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->setCurrentView(I)V

    .line 1520
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1521
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1530
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mIsFirstMeasure:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mOldCalendarViewPagerWidth:I

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    if-ne v2, v3, :cond_2

    .line 1531
    invoke-super {p0, v1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1551
    :goto_1
    return-void

    .line 1523
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->hasOnClickListeners()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1524
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1525
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0

    .line 1534
    :cond_2
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mIsFirstMeasure:Z

    .line 1535
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mOldCalendarViewPagerWidth:I

    .line 1537
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarHeaderLayoutHeight:I

    invoke-direct {v3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1539
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mDayOfTheWeekLayout:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mDayOfTheWeekLayoutWidth:I

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mDayOfTheWeekLayoutHeight:I

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1541
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mDayOfTheWeekView:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mDayOfTheWeekLayoutWidth:I

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mDayOfTheWeekLayoutHeight:I

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$DayOfTheWeekView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1543
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarViewPager:Lcom/samsung/android/support/sesl/core/view/SeslViewPager;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarViewPagerWidth:I

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarViewPagerHeight:I

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1545
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mFirstBlankSpace:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mFirstBlankSpaceHeight:I

    invoke-direct {v3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1547
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSecondBlankSpace:Landroid/view/View;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSecondBlankSpaceHeight:I

    invoke-direct {v3, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1550
    invoke-super {p0, v1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1096
    move-object v0, p1

    check-cast v0, Landroid/view/View$BaseSavedState;

    .line 1097
    .local v0, "bss":Landroid/view/View$BaseSavedState;
    invoke-virtual {v0}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    move-object v1, p1

    .line 1099
    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState;

    .line 1101
    .local v1, "ss":Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState;
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState;->getSelectedYear()I

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState;->getSelectedMonth()I

    move-result v4

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState;->getSelectedDay()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Calendar;->set(III)V

    .line 1102
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState;->getMinDate()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1103
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState;->getMaxDate()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1104
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 12

    .prologue
    .line 1079
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 1081
    .local v2, "superState":Landroid/os/Parcelable;
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1082
    .local v3, "year":I
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1083
    .local v4, "month":I
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1085
    .local v5, "day":I
    const/4 v10, -0x1

    .line 1087
    .local v10, "listPosition":I
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState;

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    .line 1088
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    const/4 v11, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIJJILcom/samsung/android/support/sesl/component/widget/SeslDatePicker$1;)V

    .line 1087
    return-object v1
.end method

.method protected onValidationChanged(Z)V
    .locals 1
    .param p1, "valid"    # Z

    .prologue
    .line 624
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mValidationCallback:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$ValidationCallback;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mValidationCallback:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$ValidationCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$ValidationCallback;->onValidationChanged(Z)V

    .line 627
    :cond_0
    return-void
.end method

.method public setDateMode(I)V
    .locals 14
    .param p1, "mode"    # I

    .prologue
    const/4 v13, 0x5

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 1804
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMode:I

    .line 1806
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMode:I

    packed-switch v4, :pswitch_data_0

    .line 1821
    :goto_0
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentView:I

    if-ne v4, v10, :cond_0

    .line 1822
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSpinnerLayout:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->setVisibility(I)V

    .line 1823
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSpinnerLayout:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v4, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->setEnabled(Z)V

    .line 1826
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;

    iget-object v12, v4, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    .line 1827
    .local v12, "views":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;>;"
    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentPosition:I

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;

    .line 1828
    .local v0, "view":Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;
    if-eqz v0, :cond_1

    .line 1829
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v4, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1830
    .local v3, "year":I
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v4, v11}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1831
    .local v2, "month":I
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v4, v13}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1834
    .local v1, "selectedDay":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getMinMonth()I

    move-result v4

    if-ne v4, v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getMinYear()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 1835
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getMinDay()I

    move-result v5

    .line 1841
    .local v5, "enabledDayRangeStart":I
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getMaxMonth()I

    move-result v4

    if-ne v4, v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getMaxYear()I

    move-result v4

    if-ne v4, v3, :cond_3

    .line 1842
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getMaxDay()I

    move-result v6

    .line 1847
    .local v6, "enabledDayRangeEnd":I
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getFirstDayOfWeek()I

    move-result v4

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    iget v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMode:I

    invoke-virtual/range {v0 .. v11}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->setMonthParams(IIIIIILjava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;I)V

    .line 1849
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->invalidate()V

    .line 1852
    .end local v1    # "selectedDay":I
    .end local v2    # "month":I
    .end local v3    # "year":I
    .end local v5    # "enabledDayRangeStart":I
    .end local v6    # "enabledDayRangeEnd":I
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->notifyDataSetChanged()V

    .line 1853
    return-void

    .line 1808
    .end local v0    # "view":Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;
    .end local v12    # "views":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;>;"
    :pswitch_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSpinnerLayout:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    .line 1809
    invoke-virtual {v8, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    .line 1810
    invoke-virtual {v9, v13}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 1808
    invoke-virtual {v4, v7, v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->updateDate(III)V

    goto :goto_0

    .line 1813
    :pswitch_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSpinnerLayout:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    .line 1814
    invoke-virtual {v8, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    .line 1815
    invoke-virtual {v9, v13}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 1813
    invoke-virtual {v4, v7, v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->updateDate(III)V

    goto/16 :goto_0

    .line 1837
    .restart local v0    # "view":Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;
    .restart local v1    # "selectedDay":I
    .restart local v2    # "month":I
    .restart local v3    # "year":I
    .restart local v12    # "views":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;>;"
    :cond_2
    const/4 v5, 0x1

    .restart local v5    # "enabledDayRangeStart":I
    goto :goto_1

    .line 1844
    :cond_3
    const/16 v6, 0x1f

    .restart local v6    # "enabledDayRangeEnd":I
    goto :goto_2

    .line 1806
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEditTextMode(Z)V
    .locals 1
    .param p1, "editTextMode"    # Z

    .prologue
    .line 1949
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentView:I

    if-nez v0, :cond_0

    .line 1953
    :goto_0
    return-void

    .line 1952
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSpinnerLayout:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->setEditTextMode(Z)V

    goto :goto_0
.end method

.method public setFirstDayOfWeek(I)V
    .locals 2
    .param p1, "firstDayOfWeek"    # I

    .prologue
    .line 1039
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    .line 1040
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "firstDayOfWeek must be between 1 and 7"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1042
    :cond_1
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mFirstDayOfWeek:I

    .line 1043
    return-void
.end method

.method public setMaxDate(J)V
    .locals 5
    .param p1, "maxDate"    # J

    .prologue
    const/4 v2, 0x6

    const/4 v4, 0x1

    .line 906
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 907
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    .line 908
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 927
    :goto_0
    return-void

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 912
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 913
    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->onDateChanged(Z)V

    .line 915
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 917
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSpinnerLayout:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->setMaxDate(J)V

    .line 919
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mIsFromSetMaxDate:Z

    .line 920
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->notifyDataSetChanged()V

    .line 921
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$9;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setMinDate(J)V
    .locals 5
    .param p1, "minDate"    # J

    .prologue
    const/4 v2, 0x6

    const/4 v4, 0x1

    .line 857
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 858
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    .line 859
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 877
    :goto_0
    return-void

    .line 862
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 863
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 864
    invoke-direct {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->onDateChanged(Z)V

    .line 866
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 868
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSpinnerLayout:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->setMinDate(J)V

    .line 870
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mIsFromSetMinDate:Z

    .line 871
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->notifyDataSetChanged()V

    .line 872
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$8;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setOnEditTextModeChangedListener(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$OnEditTextModeChangedListener;)V
    .locals 1
    .param p1, "onEditTextModeChangedListener"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$OnEditTextModeChangedListener;

    .prologue
    .line 1982
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSpinnerLayout:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->setOnEditTextModeChangedListener(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$OnEditTextModeChangedListener;)V

    .line 1984
    return-void
.end method

.method public setValidationCallback(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$ValidationCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$ValidationCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 614
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mValidationCallback:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$ValidationCallback;

    .line 615
    return-void
.end method

.method public updateDate(III)V
    .locals 16
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 744
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v5, 0x1

    move/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 745
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v5, 0x2

    move/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 746
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v5, 0x5

    move/from16 v0, p3

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 748
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentLocale:Ljava/util/Locale;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 750
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 751
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    .line 752
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 762
    :goto_0
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->updateSimpleMonthView(Z)V

    .line 764
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->onDateChanged(Z)V

    .line 766
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;

    iget-object v15, v4, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    .line 767
    .local v15, "views":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;>;"
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mCurrentPosition:I

    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;

    .line 768
    .local v3, "view":Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;
    if-eqz v3, :cond_0

    .line 770
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getMinMonth()I

    move-result v4

    move/from16 v0, p2

    if-ne v4, v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getMinYear()I

    move-result v4

    move/from16 v0, p1

    if-ne v4, v0, :cond_3

    .line 771
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getMinDay()I

    move-result v8

    .line 777
    .local v8, "enabledDayRangeStart":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getMaxMonth()I

    move-result v4

    move/from16 v0, p2

    if-ne v4, v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getMaxYear()I

    move-result v4

    move/from16 v0, p1

    if-ne v4, v0, :cond_4

    .line 778
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getMaxDay()I

    move-result v9

    .line 783
    .local v9, "enabledDayRangeEnd":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getFirstDayOfWeek()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMinDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMaxDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMode:I

    move/from16 v4, p3

    move/from16 v5, p2

    move/from16 v6, p1

    invoke-virtual/range {v3 .. v14}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->setMonthParams(IIIIIILjava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;I)V

    .line 786
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->invalidate()V

    .line 788
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSpinnerLayout:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    if-eqz v4, :cond_0

    .line 789
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mSpinnerLayout:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->updateDate(III)V

    .line 792
    .end local v8    # "enabledDayRangeStart":I
    .end local v9    # "enabledDayRangeEnd":I
    :cond_0
    return-void

    .line 753
    .end local v3    # "view":Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;
    .end local v15    # "views":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;>;"
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 754
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    .line 755
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    goto/16 :goto_0

    .line 757
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    .line 758
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mStartDate:Ljava/util/Calendar;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 759
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    .line 760
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->mEndDate:Ljava/util/Calendar;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    goto/16 :goto_0

    .line 773
    .restart local v3    # "view":Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;
    .restart local v15    # "views":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;>;"
    :cond_3
    const/4 v8, 0x1

    .restart local v8    # "enabledDayRangeStart":I
    goto/16 :goto_1

    .line 780
    :cond_4
    const/16 v9, 0x1f

    .restart local v9    # "enabledDayRangeEnd":I
    goto/16 :goto_2
.end method
