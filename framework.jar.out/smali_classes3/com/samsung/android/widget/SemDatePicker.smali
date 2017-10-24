.class public Lcom/samsung/android/widget/SemDatePicker;
.super Landroid/widget/LinearLayout;
.source "SemDatePicker.java"

# interfaces
.implements Lcom/samsung/android/widget/SemSimpleMonthView$OnDayClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemDatePicker$1;,
        Lcom/samsung/android/widget/SemDatePicker$2;,
        Lcom/samsung/android/widget/SemDatePicker$3;,
        Lcom/samsung/android/widget/SemDatePicker$4;,
        Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;,
        Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;,
        Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;,
        Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;,
        Lcom/samsung/android/widget/SemDatePicker$LunarDate;,
        Lcom/samsung/android/widget/SemDatePicker$LunarUtils;,
        Lcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;,
        Lcom/samsung/android/widget/SemDatePicker$OnEditTextModeChangedListener;,
        Lcom/samsung/android/widget/SemDatePicker$SavedState;,
        Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;
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

.field private static final MESSAGE_CALENDAR_HEADER_MONTH_BUTTON_SET:I = 0x3e9

.field private static final MESSAGE_CALENDAR_HEADER_TEXT_VALUE_SET:I = 0x3e8

.field private static final SEM_DEBUG:Z = false

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SPINNER_HAVE_ONLY_ONE_ITEM_ALPHA:I = 0x66

.field private static final TAG:Ljava/lang/String;

.field private static final USE_LOCALE:I = 0x0

.field private static final VIEW_CALENDAR:I = 0x0

.field private static final VIEW_SPINNER:I = 0x1

.field private static mPackageManager:Landroid/content/pm/PackageManager;


# instance fields
.field private mAnimator:Landroid/widget/ViewAnimator;

.field private mBackgroundBorderlessResId:I

.field private final mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mCalendarHeader:Landroid/widget/RelativeLayout;

.field private mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

.field private mCalendarHeaderLayoutHeight:I

.field private mCalendarHeaderText:Landroid/widget/TextView;

.field private mCalendarHeaderTextSize:I

.field private mCalendarLayout:Landroid/widget/LinearLayout;

.field private mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

.field private final mCalendarTextColor:Landroid/content/res/ColorStateList;

.field private mCalendarView:Lcom/samsung/android/widget/SemSimpleMonthView;

.field private mCalendarViewMargin:I

.field private mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

.field private mCalendarViewPagerHeight:I

.field private mCalendarViewPagerWidth:I

.field private mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;

.field private mCurrentDate:Ljava/util/Calendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private mCurrentPosition:I

.field private mCurrentView:I

.field private mCustomButtonView:Landroid/view/View;

.field private mDatePickerHeight:I

.field private mDatePickerLayout:Landroid/widget/LinearLayout;

.field private mDayFormatter:Ljava/text/SimpleDateFormat;

.field private mDayHeight:I

.field private mDayOfTheWeekLayout:Landroid/widget/LinearLayout;

.field private mDayOfTheWeekLayoutHeight:I

.field private mDayOfTheWeekLayoutWidth:I

.field private mDayOfTheWeekView:Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;

.field private mEndDate:Ljava/util/Calendar;

.field private mEndYear:I

.field private mFirstBlankSpace:Landroid/view/View;

.field private mFirstBlankSpaceHeight:I

.field private mFirstDayOfWeek:I

.field private mGetLunarMethod:Ljava/lang/reflect/Method;

.field private mHandler:Landroid/os/Handler;

.field private mIndexOfLeapMonthField:Ljava/lang/reflect/Field;

.field private mIsConfigurationChanged:Z

.field private mIsEnabled:Z

.field private mIsFirstMeasure:Z

.field private mIsFromSetLunar:Z

.field private mIsFromSystem:Z

.field private mIsLeapMonth:Z

.field private mIsLunar:Z

.field private mIsLunarSupported:Z

.field private mIsRTL:Z

.field private mLongPressUpdateInterval:J

.field private mLunarChanged:Z

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mMode:I

.field private mMonthKeyListener:Landroid/view/View$OnKeyListener;

.field private mMonthTouchListener:Landroid/view/View$OnTouchListener;

.field private mNextButton:Landroid/widget/ImageButton;

.field private mNumDays:I

.field private mNumberOfMonths:I

.field private mOldCalendarViewPagerWidth:I

.field private mOldSelectedDay:I

.field private mOnDateChangedListener:Lcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;

.field private mPadding:I

.field mPathClassLoader:Ldalvik/system/PathClassLoader;

.field private mPositionCount:I

.field private mPrevButton:Landroid/widget/ImageButton;

.field private mSecondBlankSpace:Landroid/view/View;

.field private mSecondBlankSpaceHeight:I

.field private mShortMonths:[Ljava/lang/String;

.field private mSolarLunarTables:Ljava/lang/Object;

.field private mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

.field private mSpinnerLayoutBottomMargin:I

.field private mSpinnerLayoutBottomMarginRatio:F

.field private mSpinnerLayoutHeight:I

.field private mSpinnerLayoutHeightRatio:F

.field private mSpinnerLayoutTopMargin:I

.field private mSpinnerLayoutTopMarginRatio:F

.field private mStartDate:Ljava/util/Calendar;

.field private mStartOfLunarYearField:Ljava/lang/reflect/Field;

.field private mStartYear:I

.field private mTempDate:Ljava/util/Calendar;

.field private mTempMinMaxDate:Ljava/util/Calendar;

.field private mTotalMonthCountWithLeap:[I

.field private mValidationCallback:Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;

.field private mWeekStart:I

.field private mWidthPerYearField:Ljava/lang/reflect/Field;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mBackgroundBorderlessResId:I

    return v0
.end method

.method static synthetic -get10(Lcom/samsung/android/widget/SemDatePicker;)Ljava/text/SimpleDateFormat;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayHeight:I

    return v0
.end method

.method static synthetic -get12(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutHeight:I

    return v0
.end method

.method static synthetic -get13(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutWidth:I

    return v0
.end method

.method static synthetic -get14(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/widget/SemDatePicker;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get16(Lcom/samsung/android/widget/SemDatePicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsFromSetLunar:Z

    return v0
.end method

.method static synthetic -get17(Lcom/samsung/android/widget/SemDatePicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    return v0
.end method

.method static synthetic -get18(Lcom/samsung/android/widget/SemDatePicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunarSupported:Z

    return v0
.end method

.method static synthetic -get19(Lcom/samsung/android/widget/SemDatePicker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsRTL:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get20(Lcom/samsung/android/widget/SemDatePicker;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic -get21(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic -get22(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic -get23(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    return v0
.end method

.method static synthetic -get24(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get25(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mNumDays:I

    return v0
.end method

.method static synthetic -get26(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mPadding:I

    return v0
.end method

.method static synthetic -get27(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mPositionCount:I

    return v0
.end method

.method static synthetic -get28(Lcom/samsung/android/widget/SemDatePicker;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get29(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/widget/SemDatePicker;)Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    return-object v0
.end method

.method static synthetic -get30(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic -get31(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mWeekStart:I

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/widget/SemDatePicker;)Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/widget/SemDatePicker;)Lcom/android/internal/widget/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/widget/SemDatePicker;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/widget/SemDatePicker;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    return v0
.end method

.method static synthetic -get9(Lcom/samsung/android/widget/SemDatePicker;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentView:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayHeight:I

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/widget/SemDatePicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsConfigurationChanged:Z

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/widget/SemDatePicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsFromSetLunar:Z

    return p1
.end method

.method static synthetic -set4(Lcom/samsung/android/widget/SemDatePicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    return p1
.end method

.method static synthetic -set5(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mNumDays:I

    return p1
.end method

.method static synthetic -set6(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mPositionCount:I

    return p1
.end method

.method static synthetic -set7(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mWeekStart:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/widget/SemDatePicker;I)Lcom/samsung/android/widget/SemDatePicker$LunarDate;
    .locals 1
    .param p1, "position"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemDatePicker;->getLunarDateByPosition(I)Lcom/samsung/android/widget/SemDatePicker$LunarDate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/widget/SemDatePicker;I)I
    .locals 1
    .param p1, "year"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemDatePicker;->getTotalMonthCountWithLeap(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/widget/SemDatePicker;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemDatePicker;->getMonthAndYearString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/widget/SemDatePicker;ZZ)V
    .locals 0
    .param p1, "fromUser"    # Z
    .param p2, "callbackToClient"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/widget/SemDatePicker;->onDateChanged(ZZ)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/widget/SemDatePicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePicker;->removeAllCallbacks()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/widget/SemDatePicker;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemDatePicker;->semLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/widget/SemDatePicker;I)V
    .locals 0
    .param p1, "viewIndex"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemDatePicker;->setCurrentView(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/widget/SemDatePicker;Z)V
    .locals 0
    .param p1, "animation"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemDatePicker;->updateSimpleMonthView(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    const-class v0, Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 440
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 439
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 447
    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/widget/SemDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 446
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 454
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/widget/SemDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 453
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 461
    invoke-direct/range {p0 .. p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 175
    const-wide/16 v18, 0x12c

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/widget/SemDatePicker;->mLongPressUpdateInterval:J

    .line 190
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mCurrentView:I

    .line 212
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mIsEnabled:Z

    .line 230
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mIsFromSystem:Z

    .line 234
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mFirstDayOfWeek:I

    .line 239
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mOldSelectedDay:I

    .line 242
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mPadding:I

    .line 244
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mIsFirstMeasure:Z

    .line 245
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mIsConfigurationChanged:Z

    .line 258
    new-instance v18, Ljava/text/SimpleDateFormat;

    const-string/jumbo v19, "EEE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    .line 261
    new-instance v18, Lcom/samsung/android/widget/SemDatePicker$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemDatePicker$1;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 269
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mBackgroundBorderlessResId:I

    .line 278
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    .line 281
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mIsLunarSupported:Z

    .line 282
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    .line 283
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    .line 284
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mIsFromSetLunar:Z

    .line 285
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mLunarChanged:Z

    .line 286
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    .line 298
    new-instance v18, Lcom/samsung/android/widget/SemDatePicker$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/widget/SemDatePicker$2;-><init>(Lcom/samsung/android/widget/SemDatePicker;Landroid/os/Looper;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    .line 396
    new-instance v18, Lcom/samsung/android/widget/SemDatePicker$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemDatePicker$3;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mMonthTouchListener:Landroid/view/View$OnTouchListener;

    .line 406
    new-instance v18, Lcom/samsung/android/widget/SemDatePicker$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemDatePicker$4;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mMonthKeyListener:Landroid/view/View$OnKeyListener;

    .line 463
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->isRTL()Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mIsRTL:Z

    .line 464
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    .line 465
    .local v12, "locale":Ljava/util/Locale;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v12}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v12}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v12}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v12}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v12}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mTempDate:Ljava/util/Calendar;

    .line 472
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/android/widget/SemDatePicker;->setLocale(Ljava/util/Locale;)V

    .line 473
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 474
    .local v16, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    .line 475
    sget-object v19, Lcom/android/internal/R$styleable;->DatePicker:[I

    .line 474
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 476
    .local v6, "a":Landroid/content/res/TypedArray;
    const/16 v18, 0x1

    .line 477
    const/16 v19, 0x76e

    .line 476
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mStartYear:I

    .line 478
    const/16 v18, 0x2

    const/16 v19, 0x834

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mEndYear:I

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartYear:I

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-virtual/range {v18 .. v21}, Ljava/util/Calendar;->set(III)V

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndYear:I

    move/from16 v19, v0

    const/16 v20, 0xb

    const/16 v21, 0x1f

    invoke-virtual/range {v18 .. v21}, Ljava/util/Calendar;->set(III)V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    .line 483
    const-string/jumbo v19, "layout_inflater"

    .line 482
    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 485
    .local v10, "inflater":Landroid/view/LayoutInflater;
    const v11, 0x10900fe

    .line 486
    .local v11, "layoutResourceId":I
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v10, v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 488
    const/16 v18, 0x3

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 490
    .local v8, "firstDayOfWeek":I
    if-eqz v8, :cond_0

    .line 491
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/widget/SemDatePicker;->setFirstDayOfWeek(I)V

    .line 495
    :cond_0
    new-instance v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 496
    .local v17, "tempText":Landroid/widget/TextView;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getHighlightColor()I

    move-result v7

    .line 500
    .local v7, "defaultHighlightColor":I
    const/16 v18, 0xf

    .line 499
    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    .line 501
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 503
    const v18, 0x10204ae

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/internal/widget/ViewPager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    .line 504
    new-instance v18, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/widget/ViewPager;->setAdapter(Lcom/android/internal/widget/PagerAdapter;)V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    move-object/from16 v18, v0

    new-instance v19, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;-><init>(Lcom/samsung/android/widget/SemDatePicker;Lcom/samsung/android/widget/SemDatePicker$CalendarPageChangeListener;)V

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/widget/ViewPager;->setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V

    .line 507
    const v18, 0x105030b

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mPadding:I

    .line 508
    const v18, 0x10204a5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeader:Landroid/widget/RelativeLayout;

    .line 509
    const v18, 0x10204a7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v18, v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v18, v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    .line 513
    const v18, 0x10204aa

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ViewAnimator;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mAnimator:Landroid/widget/ViewAnimator;

    .line 514
    const v18, 0x10204ab

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mCalendarLayout:Landroid/widget/LinearLayout;

    .line 515
    const v18, 0x10204af

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    move-object/from16 v18, v0

    new-instance v19, Lcom/samsung/android/widget/SemDatePicker$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemDatePicker$5;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setOnSpinnerDateChangedListener(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$OnSpinnerDateChangedListener;)V

    .line 558
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mCurrentView:I

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Lcom/samsung/android/widget/SemDatePicker$6;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemDatePicker$6;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Lcom/samsung/android/widget/SemDatePicker$7;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemDatePicker$7;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 573
    const v18, 0x1050314

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutHeight:I

    .line 574
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->checkMaxFontSize()V

    .line 576
    const v18, 0x105030c

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerWidth:I

    .line 577
    const v18, 0x1050326

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewMargin:I

    .line 578
    const v18, 0x105030c

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutWidth:I

    .line 579
    const v18, 0x10204ac

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayout:Landroid/widget/LinearLayout;

    .line 580
    new-instance v18, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;-><init>(Lcom/samsung/android/widget/SemDatePicker;Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekView:Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekView:Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 583
    const v18, 0x10204a3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mDatePickerLayout:Landroid/widget/LinearLayout;

    .line 584
    const v18, 0x10204a4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

    .line 586
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsRTL:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 587
    const v18, 0x10204a8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageButton;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    .line 588
    const v18, 0x10204a6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageButton;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x10408d8

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x10408d9

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 595
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mMonthTouchListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mMonthTouchListener:Landroid/view/View$OnTouchListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mMonthKeyListener:Landroid/view/View$OnKeyListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mMonthKeyListener:Landroid/view/View$OnKeyListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 605
    new-instance v13, Landroid/util/TypedValue;

    invoke-direct {v13}, Landroid/util/TypedValue;-><init>()V

    .line 606
    .local v13, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v18

    const v19, 0x101045c

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v13, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 607
    iget v0, v13, Landroid/util/TypedValue;->resourceId:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mBackgroundBorderlessResId:I

    .line 609
    const v18, 0x1050318

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderLayoutHeight:I

    .line 610
    const v18, 0x1050319

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerHeight:I

    .line 611
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mOldCalendarViewPagerWidth:I

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setFocusable(Z)V

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    const v19, 0x10204a7

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    const v19, 0x10204a7

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const v19, 0x10204a8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const v19, 0x10204a6

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 619
    new-instance v18, Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Lcom/samsung/android/widget/SemSimpleMonthView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mCalendarView:Lcom/samsung/android/widget/SemSimpleMonthView;

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarView:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarTextColor:Landroid/content/res/ColorStateList;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/widget/SemSimpleMonthView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarView:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setClickable(Z)V

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarView:Lcom/samsung/android/widget/SemSimpleMonthView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemSimpleMonthView;->setOnDayClickListener(Lcom/samsung/android/widget/SemSimpleMonthView$OnDayClickListener;)V

    .line 625
    const v18, 0x10204a9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mFirstBlankSpace:Landroid/view/View;

    .line 626
    const v18, 0x10204ad

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mSecondBlankSpace:Landroid/view/View;

    .line 627
    const v18, 0x105032b

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mFirstBlankSpaceHeight:I

    .line 628
    const v18, 0x105032c

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mSecondBlankSpaceHeight:I

    .line 630
    const v18, 0x1050327

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutHeight:I

    .line 631
    const v18, 0x1050328

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutTopMargin:I

    .line 632
    const v18, 0x1050329

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutBottomMargin:I

    .line 634
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderLayoutHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mFirstBlankSpaceHeight:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutHeight:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mSecondBlankSpaceHeight:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerHeight:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mDatePickerHeight:I

    .line 636
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x42c80000    # 100.0f

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mDatePickerHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x42c80000    # 100.0f

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutHeightRatio:F

    .line 637
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutTopMargin:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x42c80000    # 100.0f

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mDatePickerHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x42c80000    # 100.0f

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutTopMarginRatio:F

    .line 638
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutBottomMargin:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x42c80000    # 100.0f

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mDatePickerHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x42c80000    # 100.0f

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutBottomMarginRatio:F

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    .line 644
    .local v14, "millis":J
    const/16 v9, 0x10

    .line 647
    .local v9, "flags":I
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/widget/SemDatePicker;->updateSimpleMonthView(Z)V

    .line 460
    return-void

    .line 592
    .end local v9    # "flags":I
    .end local v13    # "outValue":Landroid/util/TypedValue;
    .end local v14    # "millis":J
    :cond_1
    const v18, 0x10204a6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageButton;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    .line 593
    const v18, 0x10204a8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageButton;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    goto/16 :goto_0
.end method

.method private checkMaxFontSize()V
    .locals 6

    .prologue
    .line 2063
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 2064
    .local v0, "currentFontScale":F
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050317

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderTextSize:I

    .line 2062
    const v1, 0x3f99999a    # 1.2f

    .line 2066
    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 2067
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderTextSize:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    const-wide v4, 0x3ff3333340000000L    # 1.2000000476837158

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2061
    :cond_0
    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 4
    .param p1, "oldCalendar"    # Ljava/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 709
    if-nez p1, :cond_0

    .line 710
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    return-object v3

    .line 712
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 713
    .local v0, "currentTimeMillis":J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 714
    .local v2, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 715
    return-object v2
.end method

.method public static getCalendarPackageName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2490
    const-string/jumbo v1, "com.android.calendar"

    .line 2491
    .local v1, "originalPackageName":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    .line 2492
    const-string/jumbo v4, "SEC_FLOATING_FEATURE_CALENDAR_CONFIG_PACKAGE_NAME"

    const-string/jumbo v5, "com.android.calendar"

    .line 2491
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2493
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2496
    :try_start_0
    sget-object v3, Lcom/samsung/android/widget/SemDatePicker;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2503
    :cond_0
    :goto_0
    return-object v2

    .line 2498
    :catch_0
    move-exception v0

    .line 2500
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v2, v1

    goto :goto_0
.end method

.method public static getDaysInMonth(II)I
    .locals 2
    .param p0, "month"    # I
    .param p1, "year"    # I

    .prologue
    .line 1170
    packed-switch p0, :pswitch_data_0

    .line 1187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid Month"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1178
    :pswitch_0
    const/16 v0, 0x1f

    return v0

    .line 1183
    :pswitch_1
    const/16 v0, 0x1e

    return v0

    .line 1185
    :pswitch_2
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    const/16 v0, 0x1d

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1c

    goto :goto_0

    .line 1170
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

.method private getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 2541
    .local p1, "className":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    .line 2544
    .local v1, "memberField":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2549
    .end local v1    # "memberField":Ljava/lang/reflect/Field;
    :goto_0
    return-object v1

    .line 2545
    .restart local v1    # "memberField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 2546
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    sget-object v2, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " NoSuchMethodException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getIndexOfleapMonthOfYear(I)I
    .locals 11
    .param p1, "year"    # I

    .prologue
    const/16 v8, 0x7f

    .line 2406
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    if-nez v6, :cond_0

    .line 2407
    return v8

    .line 2409
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartOfLunarYearField:Ljava/lang/reflect/Field;

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/widget/SemDatePicker;->getObject(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v4

    .line 2410
    .local v4, "startOfLunarYear":Ljava/lang/Object;
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePicker;->mWidthPerYearField:Ljava/lang/reflect/Field;

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/widget/SemDatePicker;->getObject(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v5

    .line 2411
    .local v5, "widthPerYear":Ljava/lang/Object;
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePicker;->mIndexOfLeapMonthField:Ljava/lang/reflect/Field;

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/widget/SemDatePicker;->getObject(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    .line 2412
    .local v1, "indexOfLeapMonth":Ljava/lang/Object;
    instance-of v6, v4, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    instance-of v6, v5, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    .line 2413
    instance-of v6, v1, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    .line 2418
    nop

    nop

    .end local v4    # "startOfLunarYear":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int v6, p1, v6

    nop

    nop

    .end local v5    # "widthPerYear":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    mul-int v3, v6, v7

    .line 2419
    .local v3, "startIndexOfYear":I
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePicker;->mGetLunarMethod:Ljava/lang/reflect/Method;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    nop

    nop

    .end local v1    # "indexOfLeapMonth":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-direct {p0, v6, v7, v8}, Lcom/samsung/android/widget/SemDatePicker;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2420
    .local v0, "index":Ljava/lang/Object;
    const/16 v2, 0x7f

    .line 2421
    .local v2, "indexOfLeapMonthOfYear":I
    instance-of v6, v0, Ljava/lang/Byte;

    if-eqz v6, :cond_1

    .line 2422
    nop

    nop

    .end local v0    # "index":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    .line 2425
    :cond_1
    return v2

    .line 2414
    .end local v2    # "indexOfLeapMonthOfYear":I
    .end local v3    # "startIndexOfYear":I
    .restart local v1    # "indexOfLeapMonth":Ljava/lang/Object;
    .restart local v4    # "startOfLunarYear":Ljava/lang/Object;
    .restart local v5    # "widthPerYear":Ljava/lang/Object;
    :cond_2
    sget-object v6, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "getIndexOfleapMonthOfYear, not Integer"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    return v8
.end method

.method private getLunarDateByPosition(I)Lcom/samsung/android/widget/SemDatePicker$LunarDate;
    .locals 10
    .param p1, "position"    # I

    .prologue
    .line 2377
    new-instance v5, Lcom/samsung/android/widget/SemDatePicker$LunarDate;

    invoke-direct {v5}, Lcom/samsung/android/widget/SemDatePicker$LunarDate;-><init>()V

    .line 2378
    .local v5, "lunarDate":Lcom/samsung/android/widget/SemDatePicker$LunarDate;
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v8

    .line 2379
    .local v8, "year":I
    const/4 v6, 0x0

    .line 2380
    .local v6, "month":I
    const/4 v1, 0x0

    .local v1, "indexOfLeapMonthOfYear":I
    const/4 v2, 0x0

    .local v2, "indexOfMonth":I
    const/4 v4, 0x0

    .line 2381
    .local v4, "lengthOfYear":I
    const/4 v3, 0x0

    .line 2383
    .local v3, "isLeap":Z
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxYear()I

    move-result v9

    if-gt v0, v9, :cond_0

    .line 2384
    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemDatePicker;->getTotalMonthCountWithLeap(I)I

    move-result v9

    if-ge p1, v9, :cond_5

    .line 2385
    move v8, v0

    .line 2386
    const/4 v7, 0x0

    .line 2387
    .local v7, "totalMonthCountWithLeapBefore":I
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 2388
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinMonth()I

    move-result v9

    neg-int v7, v9

    .line 2392
    :goto_1
    sub-int v2, p1, v7

    .line 2393
    invoke-direct {p0, v8}, Lcom/samsung/android/widget/SemDatePicker;->getIndexOfleapMonthOfYear(I)I

    move-result v1

    .line 2394
    const/16 v9, 0xc

    if-le v1, v9, :cond_2

    .line 2395
    const/16 v4, 0xc

    .line 2396
    :goto_2
    if-ge v2, v1, :cond_3

    move v6, v2

    .line 2397
    :goto_3
    const/16 v9, 0xd

    if-ne v4, v9, :cond_4

    if-ne v1, v2, :cond_4

    const/4 v3, 0x1

    .line 2401
    .end local v7    # "totalMonthCountWithLeapBefore":I
    :cond_0
    :goto_4
    const/4 v9, 0x1

    invoke-virtual {v5, v8, v6, v9, v3}, Lcom/samsung/android/widget/SemDatePicker$LunarDate;->set(IIIZ)V

    .line 2402
    return-object v5

    .line 2390
    .restart local v7    # "totalMonthCountWithLeapBefore":I
    :cond_1
    add-int/lit8 v9, v0, -0x1

    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemDatePicker;->getTotalMonthCountWithLeap(I)I

    move-result v7

    goto :goto_1

    .line 2395
    :cond_2
    const/16 v4, 0xd

    goto :goto_2

    .line 2396
    :cond_3
    add-int/lit8 v6, v2, -0x1

    goto :goto_3

    .line 2397
    :cond_4
    const/4 v3, 0x0

    goto :goto_4

    .line 2383
    .end local v7    # "totalMonthCountWithLeapBefore":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private varargs getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .param p2, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 2507
    .local p1, "className":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 2510
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2515
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    .line 2511
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 2512
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    sget-object v2, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " NoSuchMethodException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getMonthAndYearString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 9
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 1774
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v0, 0x32

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1775
    .local v8, "stringBuilder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {v1, v8, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 1777
    .local v1, "formatter":Ljava/util/Formatter;
    const/16 v6, 0x24

    .line 1779
    .local v6, "flags":I
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1780
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 1781
    .local v2, "millis":J
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1782
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v7

    move-wide v4, v2

    .line 1781
    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getObject(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 7
    .param p1, "callerInstance"    # Ljava/lang/Object;
    .param p2, "field"    # Ljava/lang/reflect/Field;

    .prologue
    const/4 v6, 0x0

    .line 2553
    if-nez p2, :cond_0

    .line 2554
    sget-object v3, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "field is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    return-object v6

    .line 2559
    :cond_0
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2560
    .local v2, "result":Ljava/lang/Object;
    return-object v2

    .line 2563
    .end local v2    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 2564
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " IllegalArgumentException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2566
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-object v6

    .line 2561
    :catch_1
    move-exception v0

    .line 2562
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v3, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " IllegalAccessException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getTotalMonthCountWithLeap(I)I
    .locals 2
    .param p1, "year"    # I

    .prologue
    .line 2370
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mTotalMonthCountWithLeap:[I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 2371
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2373
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mTotalMonthCountWithLeap:[I

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v1

    sub-int v1, p1, v1

    aget v0, v0, v1

    return v0
.end method

.method private varargs invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "callerInstance"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 2521
    if-nez p2, :cond_0

    .line 2522
    sget-object v4, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "method is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    return-object v7

    .line 2527
    :cond_0
    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2528
    .local v3, "result":Ljava/lang/Object;
    return-object v3

    .line 2533
    .end local v3    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 2534
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v4, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " InvocationTargetException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2537
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_0
    return-object v7

    .line 2531
    :catch_1
    move-exception v1

    .line 2532
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v4, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " IllegalArgumentException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2529
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 2530
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v4, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " IllegalAccessException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isRTL()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1382
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 1384
    .local v1, "defLocale":Ljava/util/Locale;
    const-string/jumbo v4, "ur"

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1385
    return v3

    .line 1387
    :cond_0
    invoke-virtual {v1, v1}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    .line 1388
    .local v0, "defDirectionality":B
    if-eq v0, v2, :cond_1

    .line 1389
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 1388
    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v3

    .line 1389
    goto :goto_0
.end method

.method private isYearSpinnerAtLeft()Z
    .locals 3

    .prologue
    .line 1239
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "yyyyMMMdd"

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1240
    .local v0, "pattern":Ljava/lang/String;
    const-string/jumbo v1, "y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private makeMeasureSpec(II)I
    .locals 7
    .param p1, "measureSpec"    # I
    .param p2, "maxSize"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 1737
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 1738
    return p1

    .line 1740
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1742
    .local v0, "mode":I
    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_2

    .line 1743
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v2, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1744
    .local v2, "smallestScreenWidthDp":I
    const/16 v3, 0x258

    if-lt v2, v3, :cond_1

    .line 1745
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105030e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1753
    .end local v2    # "smallestScreenWidthDp":I
    .local v1, "size":I
    :goto_0
    sparse-switch v0, :sswitch_data_0

    .line 1767
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown measure mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1748
    .end local v1    # "size":I
    .restart local v2    # "smallestScreenWidthDp":I
    :cond_1
    int-to-float v3, v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 1747
    const/4 v5, 0x1

    invoke-static {v5, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 1748
    const/high16 v4, 0x3f000000    # 0.5f

    .line 1747
    add-float/2addr v3, v4

    float-to-int v1, v3

    .restart local v1    # "size":I
    goto :goto_0

    .line 1751
    .end local v1    # "size":I
    .end local v2    # "smallestScreenWidthDp":I
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .restart local v1    # "size":I
    goto :goto_0

    .line 1755
    :sswitch_0
    iget v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewMargin:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v1, v3

    iput v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerWidth:I

    .line 1756
    iget v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewMargin:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v1, v3

    iput v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutWidth:I

    .line 1769
    :goto_1
    return p1

    .line 1759
    :sswitch_1
    iget v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewMargin:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v1, v3

    iput v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerWidth:I

    .line 1760
    iget v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewMargin:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v1, v3

    iput v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutWidth:I

    .line 1761
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_1

    .line 1764
    :sswitch_2
    invoke-static {p2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_1

    .line 1753
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private onDateChanged(ZZ)V
    .locals 5
    .param p1, "fromUser"    # Z
    .param p2, "callbackToClient"    # Z

    .prologue
    .line 839
    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mOnDateChangedListener:Lcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;

    if-eqz v3, :cond_0

    .line 840
    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 841
    .local v2, "year":I
    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 842
    .local v1, "monthOfYear":I
    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 843
    .local v0, "dayOfMonth":I
    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mOnDateChangedListener:Lcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;

    invoke-interface {v3, p0, v2, v1, v0}, Lcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;->onDateChanged(Lcom/samsung/android/widget/SemDatePicker;III)V

    .line 838
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
    .line 1937
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 1938
    new-instance v0, Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;

    .line 1942
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;->-wrap0(Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 1943
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1936
    return-void

    .line 1940
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private removeAllCallbacks()V
    .locals 4

    .prologue
    .line 1950
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v1, :cond_0

    .line 1951
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/samsung/android/widget/SemDatePicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1953
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1954
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/samsung/android/widget/SemDatePicker$11;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemDatePicker$11;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    .line 1959
    const-wide/16 v2, 0xc8

    .line 1954
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1949
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method private static scanForActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2
    .param p0, "cont"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 1649
    if-nez p0, :cond_0

    .line 1650
    return-object v1

    .line 1651
    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 1652
    nop

    nop

    .end local p0    # "cont":Landroid/content/Context;
    return-object p0

    .line 1653
    .restart local p0    # "cont":Landroid/content/Context;
    :cond_1
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_2

    .line 1654
    nop

    nop

    .end local p0    # "cont":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/widget/SemDatePicker;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0

    .line 1655
    .restart local p0    # "cont":Landroid/content/Context;
    :cond_2
    return-object v1
.end method

.method private semLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1375
    return-void
.end method

.method private setCurrentView(I)V
    .locals 9
    .param p1, "viewIndex"    # I

    .prologue
    const/16 v8, 0x3e8

    const/4 v7, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 2072
    packed-switch p1, :pswitch_data_0

    .line 2122
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 2123
    .local v1, "msg1":Landroid/os/Message;
    const/16 v2, 0x3e9

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2124
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2071
    return-void

    .line 2074
    .end local v1    # "msg1":Landroid/os/Message;
    :pswitch_0
    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentView:I

    if-eq v2, p1, :cond_0

    .line 2075
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    invoke-virtual {v2}, Lcom/android/internal/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 2077
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateInputState()V

    .line 2078
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v2, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setEditTextMode(Z)V

    .line 2080
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v2, v4}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 2082
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2083
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v2, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setEnabled(Z)V

    .line 2084
    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentView:I

    .line 2087
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2088
    .local v0, "msg":Landroid/os/Message;
    iput v8, v0, Landroid/os/Message;->what:I

    .line 2089
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2094
    .end local v0    # "msg":Landroid/os/Message;
    :pswitch_1
    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentView:I

    if-eq v2, p1, :cond_0

    .line 2095
    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    if-ne v2, v6, :cond_1

    .line 2096
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 2097
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2098
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 2096
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateDate(III)V

    .line 2108
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mAnimator:Landroid/widget/ViewAnimator;

    invoke-virtual {v2, v6}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 2109
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v2, v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setEnabled(Z)V

    .line 2110
    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentView:I

    .line 2113
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2114
    .restart local v0    # "msg":Landroid/os/Message;
    iput v8, v0, Landroid/os/Message;->what:I

    .line 2115
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2099
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    if-ne v2, v5, :cond_2

    .line 2100
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 2101
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2102
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 2100
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateDate(III)V

    goto :goto_1

    .line 2104
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 2105
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2106
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 2104
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateDate(III)V

    goto :goto_1

    .line 2072
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setTotalMonthCountWithLeap()V
    .locals 8

    .prologue
    const/16 v7, 0xc

    .line 2323
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    if-nez v5, :cond_1

    .line 2324
    :cond_0
    return-void

    .line 2327
    :cond_1
    const/4 v0, 0x0

    .line 2328
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "indexOfLeapMonthOfYear":I
    const/4 v2, 0x0

    .line 2329
    .local v2, "lengthOfYear":I
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxYear()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mTotalMonthCountWithLeap:[I

    .line 2330
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxYear()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 2333
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v4

    .local v4, "year":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxYear()I

    move-result v5

    if-gt v4, v5, :cond_a

    .line 2334
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 2335
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinMonth()I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    .line 2336
    .local v3, "month":I
    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemDatePicker;->getIndexOfleapMonthOfYear(I)I

    move-result v1

    .line 2337
    if-gt v1, v7, :cond_4

    .line 2338
    if-ge v1, v3, :cond_3

    .line 2339
    rsub-int/lit8 v5, v3, 0xc

    add-int/lit8 v2, v5, 0x1

    .line 2363
    .end local v3    # "month":I
    :goto_1
    add-int/2addr v0, v2

    .line 2364
    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mTotalMonthCountWithLeap:[I

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v6

    sub-int v6, v4, v6

    aput v0, v5, v6

    .line 2333
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2341
    .restart local v3    # "month":I
    :cond_3
    rsub-int/lit8 v5, v3, 0xd

    add-int/lit8 v2, v5, 0x1

    goto :goto_1

    .line 2344
    :cond_4
    rsub-int/lit8 v5, v3, 0xc

    add-int/lit8 v2, v5, 0x1

    goto :goto_1

    .line 2346
    .end local v3    # "month":I
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxYear()I

    move-result v5

    if-ne v4, v5, :cond_8

    .line 2347
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxMonth()I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    .line 2348
    .restart local v3    # "month":I
    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemDatePicker;->getIndexOfleapMonthOfYear(I)I

    move-result v1

    .line 2349
    if-gt v1, v7, :cond_7

    .line 2350
    if-ge v3, v1, :cond_6

    .line 2351
    move v2, v3

    goto :goto_1

    .line 2353
    :cond_6
    add-int/lit8 v2, v3, 0x1

    goto :goto_1

    .line 2356
    :cond_7
    move v2, v3

    goto :goto_1

    .line 2359
    .end local v3    # "month":I
    :cond_8
    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemDatePicker;->getIndexOfleapMonthOfYear(I)I

    move-result v1

    .line 2360
    if-le v1, v7, :cond_9

    .line 2361
    const/16 v2, 0xc

    goto :goto_1

    :cond_9
    const/16 v2, 0xd

    goto :goto_1

    .line 2322
    :cond_a
    return-void
.end method

.method private updateSimpleMonthView(Z)V
    .locals 11
    .param p1, "animation"    # Z

    .prologue
    const/4 v9, 0x2

    const/4 v10, 0x1

    .line 1447
    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1448
    .local v2, "month":I
    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v8, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 1451
    .local v7, "year":I
    iget-boolean v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarChanged:Z

    if-eqz v8, :cond_0

    .line 1452
    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1453
    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v8, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 1457
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v8

    sub-int v8, v7, v8

    mul-int/lit8 v8, v8, 0xc

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinMonth()I

    move-result v9

    sub-int v9, v2, v9

    add-int v5, v8, v9

    .line 1459
    .local v5, "position":I
    iget-boolean v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v8, :cond_1

    .line 1460
    invoke-direct {p0, v7}, Lcom/samsung/android/widget/SemDatePicker;->getIndexOfleapMonthOfYear(I)I

    move-result v0

    .line 1461
    .local v0, "indexOfLeapMonthOfYear":I
    if-ge v2, v0, :cond_2

    move v1, v2

    .line 1462
    .local v1, "indexOfMonth":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v8

    if-ne v7, v8, :cond_3

    .line 1463
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinMonth()I

    move-result v8

    neg-int v6, v8

    .line 1464
    .local v6, "totalMonthCountWithLeapBefore":I
    :goto_1
    add-int v5, v6, v1

    .line 1465
    iget-boolean v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    if-eqz v8, :cond_1

    .line 1466
    add-int/lit8 v5, v5, 0x1

    .line 1471
    .end local v0    # "indexOfLeapMonthOfYear":I
    .end local v1    # "indexOfMonth":I
    .end local v6    # "totalMonthCountWithLeapBefore":I
    :cond_1
    iput v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    .line 1472
    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v8, v5, p1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(IZ)V

    .line 1474
    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 1475
    .local v3, "msg":Landroid/os/Message;
    const/16 v8, 0x3e8

    iput v8, v3, Landroid/os/Message;->what:I

    .line 1476
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1477
    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1479
    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 1480
    .local v4, "msg1":Landroid/os/Message;
    const/16 v8, 0x3e9

    iput v8, v4, Landroid/os/Message;->what:I

    .line 1481
    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1446
    return-void

    .line 1461
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "msg1":Landroid/os/Message;
    .restart local v0    # "indexOfLeapMonthOfYear":I
    :cond_2
    add-int/lit8 v1, v2, 0x1

    .restart local v1    # "indexOfMonth":I
    goto :goto_0

    .line 1463
    :cond_3
    add-int/lit8 v8, v7, -0x1

    invoke-direct {p0, v8}, Lcom/samsung/android/widget/SemDatePicker;->getTotalMonthCountWithLeap(I)I

    move-result v6

    goto :goto_1
.end method

.method private usingNumericMonths()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1371
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mShortMonths:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1041
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1042
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
    .line 1133
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 1132
    return-void
.end method

.method public getDateMode()I
    .locals 1

    .prologue
    .line 2058
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    return v0
.end method

.method public getDayOfMonth()I
    .locals 2

    .prologue
    .line 865
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getEditText(I)Landroid/widget/EditText;
    .locals 1
    .param p1, "picker"    # I

    .prologue
    .line 2179
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getEditText(I)Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method public getEndDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .prologue
    .line 1122
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mFirstDayOfWeek:I

    if-eqz v0, :cond_0

    .line 1123
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mFirstDayOfWeek:I

    return v0

    .line 1125
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public getHeaderViewShown()Z
    .locals 1

    .prologue
    .line 1033
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    .line 933
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxDateCalendar()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMaxDay()I
    .locals 2

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMaxMonth()I
    .locals 2

    .prologue
    .line 994
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMaxYear()I
    .locals 2

    .prologue
    .line 984
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    .line 879
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDateCalendar()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMinDay()I
    .locals 2

    .prologue
    .line 999
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMinMonth()I
    .locals 2

    .prologue
    .line 989
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMinYear()I
    .locals 2

    .prologue
    .line 979
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .locals 2

    .prologue
    .line 858
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getNumberPicker(I)Lcom/samsung/android/widget/SemNumberPicker;
    .locals 1
    .param p1, "picker"    # I

    .prologue
    .line 2190
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getNumberPicker(I)Lcom/samsung/android/widget/SemNumberPicker;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedDay()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getStartDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 851
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;)V
    .locals 8
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Lcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 731
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v4, p1}, Ljava/util/Calendar;->set(II)V

    .line 732
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v5, p2}, Ljava/util/Calendar;->set(II)V

    .line 733
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, v6, p3}, Ljava/util/Calendar;->set(II)V

    .line 735
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 740
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 743
    :cond_1
    iput-object p4, p0, Lcom/samsung/android/widget/SemDatePicker;->mOnDateChangedListener:Lcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;

    .line 747
    invoke-direct {p0, v4}, Lcom/samsung/android/widget/SemDatePicker;->updateSimpleMonthView(Z)V

    .line 749
    invoke-direct {p0, v7, v4}, Lcom/samsung/android/widget/SemDatePicker;->onDateChanged(ZZ)V

    .line 751
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setMinDate(J)V

    .line 752
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setMaxDate(J)V

    .line 754
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 755
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v0, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setEnabled(Z)V

    .line 757
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 758
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v0, v4, p1}, Ljava/util/Calendar;->set(II)V

    .line 759
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v0, v5, p2}, Ljava/util/Calendar;->set(II)V

    .line 760
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v0, v6, p3}, Ljava/util/Calendar;->set(II)V

    .line 761
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 762
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v0, v4, p1}, Ljava/util/Calendar;->set(II)V

    .line 763
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v0, v5, p2}, Ljava/util/Calendar;->set(II)V

    .line 764
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v0, v6, p3}, Ljava/util/Calendar;->set(II)V

    .line 730
    return-void
.end method

.method public isEditTextMode()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2146
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentView:I

    if-nez v0, :cond_0

    .line 2147
    return v1

    .line 2149
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->isEditTextMode()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1024
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsEnabled:Z

    return v0
.end method

.method public isLeapMonth()Z
    .locals 1

    .prologue
    .line 2319
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    return v0
.end method

.method public isLunar()Z
    .locals 1

    .prologue
    .line 2314
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1871
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1870
    :goto_0
    :pswitch_0
    return-void

    .line 1873
    :pswitch_1
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsRTL:Z

    if-eqz v0, :cond_1

    .line 1874
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mPositionCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1875
    return-void

    .line 1877
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 1880
    :cond_1
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    if-nez v0, :cond_2

    .line 1881
    return-void

    .line 1883
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 1888
    :pswitch_2
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsRTL:Z

    if-eqz v0, :cond_4

    .line 1889
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    if-nez v0, :cond_3

    .line 1890
    return-void

    .line 1892
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 1895
    :cond_4
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mPositionCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_5

    .line 1896
    return-void

    .line 1898
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 1871
    :pswitch_data_0
    .packed-switch 0x10204a6
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x42c80000    # 100.0f

    .line 1047
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1048
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePicker;->isRTL()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsRTL:Z

    .line 1049
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "EEE"

    iget-object v4, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayFormatter:Ljava/text/SimpleDateFormat;

    .line 1051
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1052
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mDatePickerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1054
    iput-boolean v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsFirstMeasure:Z

    .line 1056
    const v2, 0x1050318

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderLayoutHeight:I

    .line 1057
    const v2, 0x1050319

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerHeight:I

    .line 1058
    const v2, 0x1050314

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutHeight:I

    .line 1059
    const v2, 0x105032b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mFirstBlankSpaceHeight:I

    .line 1060
    const v2, 0x105032c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSecondBlankSpaceHeight:I

    .line 1062
    const v2, 0x1050327

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutHeight:I

    .line 1063
    const v2, 0x1050328

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutTopMargin:I

    .line 1064
    const v2, 0x1050329

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutBottomMargin:I

    .line 1066
    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderLayoutHeight:I

    iget v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mFirstBlankSpaceHeight:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutHeight:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mSecondBlankSpaceHeight:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerHeight:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mDatePickerHeight:I

    .line 1068
    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    iget v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mDatePickerHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    div-float/2addr v2, v5

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutHeightRatio:F

    .line 1069
    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutTopMargin:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    iget v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mDatePickerHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    div-float/2addr v2, v5

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutTopMarginRatio:F

    .line 1070
    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutBottomMargin:I

    int-to-float v2, v2

    mul-float/2addr v2, v5

    iget v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mDatePickerHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    div-float/2addr v2, v5

    iput v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutBottomMarginRatio:F

    .line 1072
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutHeight:I

    const/4 v3, -0x1

    invoke-direct {v0, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1073
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutTopMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1074
    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutBottomMargin:I

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1075
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1077
    iget-boolean v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsRTL:Z

    if-eqz v2, :cond_0

    .line 1078
    iput-boolean v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsConfigurationChanged:Z

    .line 1081
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePicker;->checkMaxFontSize()V

    .line 1046
    return-void
.end method

.method public onDayClick(Lcom/samsung/android/widget/SemSimpleMonthView;Ljava/util/Calendar;)V
    .locals 21
    .param p1, "view"    # Lcom/samsung/android/widget/SemSimpleMonthView;
    .param p2, "day"    # Ljava/util/Calendar;

    .prologue
    .line 1395
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onDayClick day : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/widget/SemDatePicker;->semLog(Ljava/lang/String;)V

    .line 1396
    if-eqz p2, :cond_4

    .line 1397
    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v20

    .line 1398
    .local v20, "year":I
    const/4 v4, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v18

    .line 1399
    .local v18, "month":I
    const/4 v4, 0x5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v19

    .line 1401
    .local v19, "selectedDay":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v17

    .line 1402
    .local v17, "currentYear":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v16

    .line 1404
    .local v16, "currentMonth":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 1405
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 1414
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/widget/SemDatePicker;->onDayOfMonthSelected(III)V

    .line 1416
    move/from16 v0, v20

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    move/from16 v0, v18

    move/from16 v1, v16

    if-eq v0, v1, :cond_6

    .line 1417
    :cond_1
    :goto_1
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mOldSelectedDay:I

    .line 1418
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    invoke-virtual {v4}, Lcom/android/internal/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 1422
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinMonth()I

    move-result v4

    move/from16 v0, v18

    if-ne v4, v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v4

    move/from16 v0, v20

    if-ne v4, v0, :cond_7

    .line 1423
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinDay()I

    move-result v9

    .line 1429
    .local v9, "enabledDayRangeStart":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxMonth()I

    move-result v4

    move/from16 v0, v18

    if-ne v4, v0, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxYear()I

    move-result v4

    move/from16 v0, v20

    if-ne v4, v0, :cond_8

    .line 1430
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxDay()I

    move-result v10

    .line 1436
    .local v10, "enabledDayRangeEnd":I
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunarSupported:Z

    if-eqz v4, :cond_3

    .line 1437
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6}, Lcom/samsung/android/widget/SemSimpleMonthView;->setLunar(ZZLdalvik/system/PathClassLoader;)V

    .line 1440
    :cond_3
    const/4 v4, 0x5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v4, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getFirstDayOfWeek()I

    move-result v8

    .line 1441
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    move-object/from16 v4, p1

    .line 1440
    invoke-virtual/range {v4 .. v15}, Lcom/samsung/android/widget/SemSimpleMonthView;->setMonthParams(IIIIIILjava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;I)V

    .line 1442
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->invalidate()V

    .line 1394
    .end local v9    # "enabledDayRangeStart":I
    .end local v10    # "enabledDayRangeEnd":I
    .end local v16    # "currentMonth":I
    .end local v17    # "currentYear":I
    .end local v18    # "month":I
    .end local v19    # "selectedDay":I
    .end local v20    # "year":I
    :cond_4
    return-void

    .line 1408
    .restart local v16    # "currentMonth":I
    .restart local v17    # "currentYear":I
    .restart local v18    # "month":I
    .restart local v19    # "selectedDay":I
    .restart local v20    # "year":I
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 1409
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    goto/16 :goto_0

    .line 1416
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mOldSelectedDay:I

    move/from16 v0, v19

    if-eq v0, v4, :cond_2

    goto/16 :goto_1

    .line 1425
    :cond_7
    const/4 v9, 0x1

    .restart local v9    # "enabledDayRangeStart":I
    goto/16 :goto_2

    .line 1432
    :cond_8
    const/16 v10, 0x1f

    .restart local v10    # "enabledDayRangeEnd":I
    goto :goto_3
.end method

.method public onDayOfMonthSelected(III)V
    .locals 6
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    const/4 v5, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 1193
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4, p1}, Ljava/util/Calendar;->set(II)V

    .line 1194
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 1195
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5, p3}, Ljava/util/Calendar;->set(II)V

    .line 1197
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1198
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x3e8

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1199
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1200
    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    if-ne v2, v4, :cond_1

    .line 1201
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    .line 1202
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4, p1}, Ljava/util/Calendar;->set(II)V

    .line 1203
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 1204
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5, p3}, Ljava/util/Calendar;->set(II)V

    .line 1220
    :goto_0
    const/4 v1, 0x0

    .line 1221
    .local v1, "setBtnEnable":Z
    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    if-eqz v2, :cond_0

    .line 1222
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    if-eqz v2, :cond_3

    .line 1223
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v2

    .line 1222
    if-eqz v2, :cond_3

    .line 1224
    const/4 v1, 0x0

    .line 1228
    :goto_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/widget/SemDatePicker;->onValidationChanged(Z)V

    .line 1230
    :cond_0
    invoke-direct {p0, v4, v4}, Lcom/samsung/android/widget/SemDatePicker;->onDateChanged(ZZ)V

    .line 1192
    return-void

    .line 1205
    .end local v1    # "setBtnEnable":Z
    :cond_1
    iget v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    if-ne v2, v3, :cond_2

    .line 1206
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    .line 1207
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4, p1}, Ljava/util/Calendar;->set(II)V

    .line 1208
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 1209
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5, p3}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 1211
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    .line 1212
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    .line 1213
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4, p1}, Ljava/util/Calendar;->set(II)V

    .line 1214
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 1215
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5, p3}, Ljava/util/Calendar;->set(II)V

    .line 1216
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v2, v4, p1}, Ljava/util/Calendar;->set(II)V

    .line 1217
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v2, v3, p2}, Ljava/util/Calendar;->set(II)V

    .line 1218
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5, p3}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 1226
    .restart local v1    # "setBtnEnable":Z
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1909
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePicker;->removeAllCallbacks()V

    .line 1910
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1907
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 1916
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1928
    :cond_0
    :goto_0
    :pswitch_0
    return v3

    .line 1918
    :pswitch_1
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    if-eqz v0, :cond_0

    .line 1919
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v3, v0, v1}, Lcom/samsung/android/widget/SemDatePicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_0

    .line 1923
    :pswitch_2
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mPositionCount:I

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1924
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/widget/SemDatePicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_0

    .line 1916
    :pswitch_data_0
    .packed-switch 0x10204a6
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 1661
    iget v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerWidth:I

    invoke-direct {p0, p1, v4}, Lcom/samsung/android/widget/SemDatePicker;->makeMeasureSpec(II)I

    move-result v2

    .line 1664
    .local v2, "newWidthMeasureSpec":I
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/widget/SemDatePicker;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 1665
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1666
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1667
    .local v1, "height":I
    iget v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mDatePickerHeight:I

    if-ge v1, v4, :cond_1

    .line 1668
    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemDatePicker;->setCurrentView(I)V

    .line 1669
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1670
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setClickable(Z)V

    .line 1673
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    int-to-float v4, v1

    iget v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutHeightRatio:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v3, v8, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1674
    .local v3, "params":Landroid/widget/FrameLayout$LayoutParams;
    int-to-float v4, v1

    iget v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutTopMarginRatio:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1675
    int-to-float v4, v1

    iget v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayoutBottomMarginRatio:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1676
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1709
    .end local v1    # "height":I
    .end local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsFirstMeasure:Z

    if-nez v4, :cond_2

    iget v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mOldCalendarViewPagerWidth:I

    iget v5, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerWidth:I

    if-ne v4, v5, :cond_2

    .line 1710
    invoke-super {p0, v2, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1711
    return-void

    .line 1691
    .restart local v1    # "height":I
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1692
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    new-instance v5, Lcom/samsung/android/widget/SemDatePicker$10;

    invoke-direct {v5, p0}, Lcom/samsung/android/widget/SemDatePicker$10;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1698
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 1713
    .end local v1    # "height":I
    :cond_2
    iput-boolean v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsFirstMeasure:Z

    .line 1714
    iget v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerWidth:I

    iput v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mOldCalendarViewPagerWidth:I

    .line 1716
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderLayoutHeight:I

    invoke-direct {v5, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1717
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayout:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutWidth:I

    iget v7, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutHeight:I

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1718
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekView:Lcom/samsung/android/widget/SemDatePicker$DayOfTheWeekView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutWidth:I

    iget v7, p0, Lcom/samsung/android/widget/SemDatePicker;->mDayOfTheWeekLayoutHeight:I

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1719
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerWidth:I

    iget v7, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPagerHeight:I

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1720
    iget-boolean v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsRTL:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsConfigurationChanged:Z

    if-eqz v4, :cond_3

    .line 1721
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v4, v9}, Lcom/android/internal/widget/ViewPager;->setConfigurationChanged(Z)V

    .line 1723
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mFirstBlankSpace:Landroid/view/View;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mFirstBlankSpaceHeight:I

    invoke-direct {v5, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1724
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mSecondBlankSpace:Landroid/view/View;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/samsung/android/widget/SemDatePicker;->mSecondBlankSpaceHeight:I

    invoke-direct {v5, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1726
    invoke-super {p0, v2, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1660
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v0, p1

    .line 1158
    check-cast v0, Landroid/view/View$BaseSavedState;

    .line 1159
    .local v0, "bss":Landroid/view/View$BaseSavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    move-object v1, p1

    .line 1161
    check-cast v1, Lcom/samsung/android/widget/SemDatePicker$SavedState;

    .line 1163
    .local v1, "ss":Lcom/samsung/android/widget/SemDatePicker$SavedState;
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemDatePicker$SavedState;->getSelectedYear()I

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemDatePicker$SavedState;->getSelectedMonth()I

    move-result v4

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemDatePicker$SavedState;->getSelectedDay()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Calendar;->set(III)V

    .line 1164
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemDatePicker$SavedState;->getMinDate()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1165
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemDatePicker$SavedState;->getMaxDate()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1157
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 12

    .prologue
    .line 1141
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 1143
    .local v2, "superState":Landroid/os/Parcelable;
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1144
    .local v3, "year":I
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1145
    .local v4, "month":I
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1147
    .local v5, "day":I
    const/4 v10, -0x1

    .line 1149
    .local v10, "listPosition":I
    new-instance v1, Lcom/samsung/android/widget/SemDatePicker$SavedState;

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 1150
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 1149
    const/4 v11, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/samsung/android/widget/SemDatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIJJILcom/samsung/android/widget/SemDatePicker$SavedState;)V

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 654
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 652
    return-void
.end method

.method protected onValidationChanged(Z)V
    .locals 1
    .param p1, "valid"    # Z

    .prologue
    .line 697
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mValidationCallback:Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mValidationCallback:Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;->onValidationChanged(Z)V

    .line 696
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

    .line 1998
    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    .line 2000
    iget v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    if-ne v4, v10, :cond_3

    .line 2001
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 2002
    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v8, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 2003
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v9, v13}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 2001
    invoke-virtual {v4, v7, v8, v9}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateDate(III)V

    .line 2011
    :cond_0
    :goto_0
    iget v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentView:I

    if-ne v4, v10, :cond_1

    .line 2012
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2013
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v4, v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setEnabled(Z)V

    .line 2016
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    iget-object v12, v4, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    .line 2017
    .local v12, "views":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/widget/SemSimpleMonthView;>;"
    iget v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/widget/SemSimpleMonthView;

    .line 2018
    .local v0, "view":Lcom/samsung/android/widget/SemSimpleMonthView;
    if-eqz v0, :cond_2

    .line 2019
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v4, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 2020
    .local v3, "year":I
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v4, v11}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 2021
    .local v2, "month":I
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v4, v13}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 2024
    .local v1, "selectedDay":I
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinMonth()I

    move-result v4

    if-ne v4, v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v4

    if-ne v4, v3, :cond_4

    .line 2025
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinDay()I

    move-result v5

    .line 2031
    .local v5, "enabledDayRangeStart":I
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxMonth()I

    move-result v4

    if-ne v4, v2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxYear()I

    move-result v4

    if-ne v4, v3, :cond_5

    .line 2032
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxDay()I

    move-result v6

    .line 2037
    .local v6, "enabledDayRangeEnd":I
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->getFirstDayOfWeek()I

    move-result v4

    .line 2038
    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    .line 2039
    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    iget v11, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    .line 2037
    invoke-virtual/range {v0 .. v11}, Lcom/samsung/android/widget/SemSimpleMonthView;->setMonthParams(IIIIIILjava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;I)V

    .line 2040
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2043
    .end local v1    # "selectedDay":I
    .end local v2    # "month":I
    .end local v3    # "year":I
    .end local v5    # "enabledDayRangeStart":I
    .end local v6    # "enabledDayRangeEnd":I
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    invoke-virtual {v4}, Lcom/android/internal/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 1997
    return-void

    .line 2004
    .end local v0    # "view":Lcom/samsung/android/widget/SemSimpleMonthView;
    .end local v12    # "views":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/widget/SemSimpleMonthView;>;"
    :cond_3
    iget v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    if-ne v4, v11, :cond_0

    .line 2005
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 2006
    iget-object v8, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v8, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 2007
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v9, v13}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 2005
    invoke-virtual {v4, v7, v8, v9}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateDate(III)V

    goto/16 :goto_0

    .line 2027
    .restart local v0    # "view":Lcom/samsung/android/widget/SemSimpleMonthView;
    .restart local v1    # "selectedDay":I
    .restart local v2    # "month":I
    .restart local v3    # "year":I
    .restart local v12    # "views":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/widget/SemSimpleMonthView;>;"
    :cond_4
    const/4 v5, 0x1

    .restart local v5    # "enabledDayRangeStart":I
    goto :goto_1

    .line 2034
    :cond_5
    const/16 v6, 0x1f

    .restart local v6    # "enabledDayRangeEnd":I
    goto :goto_2
.end method

.method public setEditTextMode(Z)V
    .locals 1
    .param p1, "editTextMode"    # Z

    .prologue
    .line 2133
    iget v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentView:I

    if-nez v0, :cond_0

    .line 2134
    return-void

    .line 2136
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setEditTextMode(Z)V

    .line 2132
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1012
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePicker;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1013
    return-void

    .line 1015
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1016
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsEnabled:Z

    .line 1011
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 2
    .param p1, "firstDayOfWeek"    # I

    .prologue
    .line 1100
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    .line 1101
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "firstDayOfWeek must be between 1 and 7"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1103
    :cond_1
    iput p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mFirstDayOfWeek:I

    .line 1099
    return-void
.end method

.method public setHeaderViewShown(Z)V
    .locals 0
    .param p1, "shown"    # Z

    .prologue
    .line 1027
    return-void
.end method

.method protected setLocale(Ljava/util/Locale;)V
    .locals 6
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 663
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 664
    return-void

    .line 666
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 667
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mShortMonths:[Ljava/lang/String;

    .line 669
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mNumberOfMonths:I

    .line 670
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePicker;->usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 673
    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mNumberOfMonths:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mShortMonths:[Ljava/lang/String;

    .line 674
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mNumberOfMonths:I

    if-ge v0, v1, :cond_1

    .line 675
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mShortMonths:[Ljava/lang/String;

    const-string/jumbo v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 674
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 662
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setLunar(ZZ)V
    .locals 4
    .param p1, "isLunar"    # Z
    .param p2, "isLeapMonth"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2293
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunarSupported:Z

    if-eqz v0, :cond_1

    .line 2294
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    .line 2295
    iput-boolean p2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    .line 2297
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setLunar(ZZLdalvik/system/PathClassLoader;)V

    .line 2299
    if-eqz p1, :cond_0

    .line 2300
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePicker;->setTotalMonthCountWithLeap()V

    .line 2303
    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsFromSetLunar:Z

    .line 2304
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 2305
    iput-boolean v2, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarChanged:Z

    .line 2306
    invoke-direct {p0, v2}, Lcom/samsung/android/widget/SemDatePicker;->updateSimpleMonthView(Z)V

    .line 2307
    iput-boolean v3, p0, Lcom/samsung/android/widget/SemDatePicker;->mLunarChanged:Z

    .line 2308
    invoke-direct {p0, v3, v2}, Lcom/samsung/android/widget/SemDatePicker;->onDateChanged(ZZ)V

    .line 2292
    :cond_1
    return-void
.end method

.method public setLunarSupported(ZLandroid/view/View;)V
    .locals 19
    .param p1, "supported"    # Z
    .param p2, "lunarButton"    # Landroid/view/View;

    .prologue
    .line 2196
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mIsLunarSupported:Z

    .line 2198
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunarSupported:Z

    if-nez v15, :cond_1

    .line 2199
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    .line 2200
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    .line 2201
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    .line 2248
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunarSupported:Z

    if-eqz v15, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    if-nez v15, :cond_b

    .line 2249
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    sput-object v15, Lcom/samsung/android/widget/SemDatePicker;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2250
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/samsung/android/widget/SemDatePicker$LunarUtils;->getPathClassLoader(Landroid/content/Context;)Ldalvik/system/PathClassLoader;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    .line 2251
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    if-nez v15, :cond_8

    .line 2252
    return-void

    .line 2203
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    if-eqz v15, :cond_2

    .line 2204
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2206
    :cond_2
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    .line 2207
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    if-eqz v15, :cond_0

    .line 2208
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    .line 2209
    .local v12, "parentView":Landroid/view/ViewParent;
    instance-of v15, v12, Landroid/view/ViewGroup;

    if-eqz v15, :cond_3

    .line 2210
    nop

    nop

    .end local v12    # "parentView":Landroid/view/ViewParent;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    invoke-virtual {v12, v15}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2212
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    const v16, 0x102002b

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setId(I)V

    .line 2214
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeader:Landroid/widget/RelativeLayout;

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2215
    .local v4, "calendarHeaderParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v15, 0xd

    invoke-virtual {v4, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2216
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getId()I

    move-result v15

    const/16 v16, 0x10

    move/from16 v0, v16

    invoke-virtual {v4, v0, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2217
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2218
    .local v13, "prevButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v15, 0x0

    iput v15, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2219
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v15, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2220
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2221
    .local v11, "nextButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v15, 0x0

    iput v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 2222
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v15, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2223
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x105032a

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    .line 2224
    .local v9, "margin":I
    iput v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2226
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeader:Landroid/widget/RelativeLayout;

    invoke-virtual {v15, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2228
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 2229
    .local v8, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, 0x0

    .line 2230
    .local v2, "buttonParams":Landroid/widget/RelativeLayout$LayoutParams;
    instance-of v15, v8, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v15, :cond_5

    move-object v2, v8

    .line 2231
    nop

    nop

    .line 2239
    .end local v8    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .local v2, "buttonParams":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_1
    if-eqz v2, :cond_4

    .line 2240
    const/16 v15, 0xf

    invoke-virtual {v2, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2241
    const/16 v15, 0x15

    invoke-virtual {v2, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2242
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    invoke-virtual {v15, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2244
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarHeaderLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/widget/SemDatePicker;->mCustomButtonView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 2232
    .local v2, "buttonParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v8    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    instance-of v15, v8, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v15, :cond_6

    .line 2233
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v2    # "buttonParams":Landroid/widget/RelativeLayout$LayoutParams;
    nop

    nop

    .end local v8    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .local v2, "buttonParams":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_1

    .line 2234
    .local v2, "buttonParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v8    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    if-eqz v8, :cond_7

    .line 2235
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v2    # "buttonParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .local v2, "buttonParams":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_1

    .line 2237
    .local v2, "buttonParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v2    # "buttonParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v15, -0x2

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-direct {v2, v15, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .local v2, "buttonParams":Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_1

    .line 2255
    .end local v2    # "buttonParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4    # "calendarHeaderParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v8    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v9    # "margin":I
    .end local v11    # "nextButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v13    # "prevButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_8
    const/4 v3, 0x0

    .line 2257
    .local v3, "calendarFeatureClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string/jumbo v7, "com.android.calendar.Feature"

    .line 2258
    .local v7, "featureClassName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v7, v0, v15}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2263
    .local v3, "calendarFeatureClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v3, :cond_9

    .line 2264
    sget-object v15, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "setLunarSupported, Calendar Feature class is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    return-void

    .line 2259
    .end local v7    # "featureClassName":Ljava/lang/String;
    .local v3, "calendarFeatureClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v6

    .line 2260
    .local v6, "e":Ljava/lang/ClassNotFoundException;
    sget-object v15, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "setLunarSupported, Calendar Feature class not found"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    return-void

    .line 2268
    .end local v6    # "e":Ljava/lang/ClassNotFoundException;
    .local v3, "calendarFeatureClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "featureClassName":Ljava/lang/String;
    :cond_9
    const-string/jumbo v15, "getSolarLunarTables"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v3, v15, v1}, Lcom/samsung/android/widget/SemDatePicker;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 2269
    .local v10, "method":Ljava/lang/reflect/Method;
    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v10, v15}, Lcom/samsung/android/widget/SemDatePicker;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mSolarLunarTables:Ljava/lang/Object;

    .line 2271
    const/4 v14, 0x0

    .line 2273
    .local v14, "solarLunarTablesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string/jumbo v5, "com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarTables"

    .line 2274
    .local v5, "converterClassName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v5, v0, v15}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v14

    .line 2279
    .local v14, "solarLunarTablesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v14, :cond_a

    .line 2280
    sget-object v15, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "setLunarSupported, Calendar Tables class is null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2281
    return-void

    .line 2275
    .end local v5    # "converterClassName":Ljava/lang/String;
    .local v14, "solarLunarTablesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v6

    .line 2276
    .restart local v6    # "e":Ljava/lang/ClassNotFoundException;
    sget-object v15, Lcom/samsung/android/widget/SemDatePicker;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "setLunarSupported, Calendar Tables class not found"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    return-void

    .line 2284
    .end local v6    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v5    # "converterClassName":Ljava/lang/String;
    .local v14, "solarLunarTablesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_a
    const-string/jumbo v15, "getLunar"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v18, 0x0

    aput-object v17, v16, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/samsung/android/widget/SemDatePicker;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mGetLunarMethod:Ljava/lang/reflect/Method;

    .line 2285
    const-string/jumbo v15, "START_OF_LUNAR_YEAR"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/widget/SemDatePicker;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartOfLunarYearField:Ljava/lang/reflect/Field;

    .line 2286
    const-string/jumbo v15, "WIDTH_PER_YEAR"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/widget/SemDatePicker;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mWidthPerYearField:Ljava/lang/reflect/Field;

    .line 2287
    const-string/jumbo v15, "INDEX_OF_LEAP_MONTH"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/samsung/android/widget/SemDatePicker;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/widget/SemDatePicker;->mIndexOfLeapMonthField:Ljava/lang/reflect/Field;

    .line 2195
    .end local v3    # "calendarFeatureClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "converterClassName":Ljava/lang/String;
    .end local v7    # "featureClassName":Ljava/lang/String;
    .end local v10    # "method":Ljava/lang/reflect/Method;
    .end local v14    # "solarLunarTablesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_b
    return-void
.end method

.method public setMaxDate(J)V
    .locals 5
    .param p1, "maxDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 949
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 950
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 951
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 952
    return-void

    .line 955
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_1

    .line 956
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePicker;->setTotalMonthCountWithLeap()V

    .line 960
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 961
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 962
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/widget/SemDatePicker;->onDateChanged(ZZ)V

    .line 964
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 966
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setMaxDate(J)V

    .line 968
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 969
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/widget/SemDatePicker$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemDatePicker$9;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    .line 973
    const-wide/16 v2, 0xa

    .line 969
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 948
    return-void
.end method

.method public setMinDate(J)V
    .locals 5
    .param p1, "minDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 895
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 896
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 897
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 898
    return-void

    .line 901
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    if-eqz v0, :cond_1

    .line 902
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePicker;->setTotalMonthCountWithLeap()V

    .line 906
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mTempMinMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 907
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 908
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/widget/SemDatePicker;->onDateChanged(ZZ)V

    .line 910
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 912
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setMinDate(J)V

    .line 914
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 915
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/widget/SemDatePicker$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemDatePicker$8;-><init>(Lcom/samsung/android/widget/SemDatePicker;)V

    .line 919
    const-wide/16 v2, 0xa

    .line 915
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 894
    return-void
.end method

.method public setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemDatePicker$OnEditTextModeChangedListener;)V
    .locals 1
    .param p1, "onEditModeChangedListener"    # Lcom/samsung/android/widget/SemDatePicker$OnEditTextModeChangedListener;

    .prologue
    .line 2168
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemDatePicker;Lcom/samsung/android/widget/SemDatePicker$OnEditTextModeChangedListener;)V

    .line 2167
    return-void
.end method

.method public setValidationCallback(Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;

    .prologue
    .line 687
    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePicker;->mValidationCallback:Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;

    .line 686
    return-void
.end method

.method public tryVibrate()V
    .locals 1

    .prologue
    .line 1265
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1264
    return-void
.end method

.method public updateDate(III)V
    .locals 16
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 775
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v5, 0x1

    move/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 776
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v5, 0x2

    move/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 777
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mTempDate:Ljava/util/Calendar;

    const/4 v5, 0x5

    move/from16 v0, p3

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 779
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mTempDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 781
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 782
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    .line 783
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    const/4 v5, 0x1

    move/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 784
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    const/4 v5, 0x2

    move/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 785
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    const/4 v5, 0x5

    move/from16 v0, p3

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 802
    :goto_0
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/widget/SemDatePicker;->updateSimpleMonthView(Z)V

    .line 804
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/samsung/android/widget/SemDatePicker;->onDateChanged(ZZ)V

    .line 806
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mCalendarPagerAdapter:Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;

    iget-object v15, v4, Lcom/samsung/android/widget/SemDatePicker$CalendarPagerAdapter;->views:Landroid/util/SparseArray;

    .line 807
    .local v15, "views":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/widget/SemSimpleMonthView;>;"
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mCurrentPosition:I

    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/widget/SemSimpleMonthView;

    .line 808
    .local v3, "view":Lcom/samsung/android/widget/SemSimpleMonthView;
    if-eqz v3, :cond_1

    .line 810
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinMonth()I

    move-result v4

    move/from16 v0, p2

    if-ne v4, v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinYear()I

    move-result v4

    move/from16 v0, p1

    if-ne v4, v0, :cond_4

    .line 811
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMinDay()I

    move-result v8

    .line 817
    .local v8, "enabledDayRangeStart":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxMonth()I

    move-result v4

    move/from16 v0, p2

    if-ne v4, v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxYear()I

    move-result v4

    move/from16 v0, p1

    if-ne v4, v0, :cond_5

    .line 818
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getMaxDay()I

    move-result v9

    .line 824
    .local v9, "enabledDayRangeEnd":I
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunarSupported:Z

    if-eqz v4, :cond_0

    .line 825
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLunar:Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/samsung/android/widget/SemDatePicker;->mIsLeapMonth:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/widget/SemDatePicker;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/widget/SemSimpleMonthView;->setLunar(ZZLdalvik/system/PathClassLoader;)V

    .line 828
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/widget/SemDatePicker;->getFirstDayOfWeek()I

    move-result v7

    .line 829
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/widget/SemDatePicker;->mMinDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/widget/SemDatePicker;->mMaxDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    move/from16 v4, p3

    move/from16 v5, p2

    move/from16 v6, p1

    .line 828
    invoke-virtual/range {v3 .. v14}, Lcom/samsung/android/widget/SemSimpleMonthView;->setMonthParams(IIIIIILjava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;I)V

    .line 830
    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 832
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    if-eqz v4, :cond_1

    .line 833
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mSpinnerLayout:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateDate(III)V

    .line 774
    .end local v8    # "enabledDayRangeStart":I
    .end local v9    # "enabledDayRangeEnd":I
    :cond_1
    return-void

    .line 786
    .end local v3    # "view":Lcom/samsung/android/widget/SemSimpleMonthView;
    .end local v15    # "views":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/widget/SemSimpleMonthView;>;"
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 787
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    .line 788
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    const/4 v5, 0x1

    move/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 789
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    const/4 v5, 0x2

    move/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 790
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    const/4 v5, 0x5

    move/from16 v0, p3

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    .line 792
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    .line 793
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    const/4 v5, 0x1

    move/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 794
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    const/4 v5, 0x2

    move/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 795
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mStartDate:Ljava/util/Calendar;

    const/4 v5, 0x5

    move/from16 v0, p3

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 796
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    .line 797
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    const/4 v5, 0x1

    move/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 798
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    const/4 v5, 0x2

    move/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 799
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/widget/SemDatePicker;->mEndDate:Ljava/util/Calendar;

    const/4 v5, 0x5

    move/from16 v0, p3

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    .line 813
    .restart local v3    # "view":Lcom/samsung/android/widget/SemSimpleMonthView;
    .restart local v15    # "views":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/widget/SemSimpleMonthView;>;"
    :cond_4
    const/4 v8, 0x1

    .restart local v8    # "enabledDayRangeStart":I
    goto/16 :goto_1

    .line 820
    :cond_5
    const/16 v9, 0x1f

    .restart local v9    # "enabledDayRangeEnd":I
    goto/16 :goto_2
.end method
