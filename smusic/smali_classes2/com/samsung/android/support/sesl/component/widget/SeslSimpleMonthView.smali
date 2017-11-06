.class Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;
.super Landroid/view/View;
.source "SeslSimpleMonthView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$OnDayClickListener;,
        Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;
    }
.end annotation


# static fields
.field private static final DEFAULT_NUM_DAYS:I = 0x7

.field private static final DEFAULT_WEEK_DAY_STRING_FEATURE:Ljava/lang/String; = "XXXXXXX"

.field private static final DEFAULT_WEEK_START:I = 0x1

.field private static final DEVISOR_FOR_CIRCLE_POSITION_Y:F = 2.7f

.field private static final MIN_HEIGHT:I = 0xa

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final TAG_CSCFEATURE_CALENDAR_SETCOLOROFDAYS:Ljava/lang/String; = "CscFeature_Calendar_SetColorOfDays"


# instance fields
.field private final mAbnormalStartEndDateBackgroundAlpha:I

.field private final mCalendar:Ljava/util/Calendar;

.field private mCalendarWidth:I

.field private mContext:Landroid/content/Context;

.field private final mDateBackgroundBetweenStartEndAlpha:I

.field private mDayColorSet:[I

.field private final mDayNumberDisabledAlpha:I

.field private mDayNumberEndPaint:Landroid/graphics/Paint;

.field private mDayNumberPaint:Landroid/graphics/Paint;

.field private mDayNumberSelectedPaint:Landroid/graphics/Paint;

.field private mDayOfWeekStart:I

.field private mDaySelectedCircleSize:I

.field private mDaySelectedCircleStroke:I

.field private mDaySelectedStartEndAdjust:I

.field private mDayStartEndPaint:Landroid/graphics/Paint;

.field private mEnabledDayEnd:I

.field private mEnabledDayStart:I

.field private mEndCalendar:Ljava/util/Calendar;

.field private mEndDayColor:I

.field private mIsRTL:Z

.field private mLockAccessibilityDelegate:Z

.field private mMiniDayNumberTextSize:I

.field private mMode:I

.field private mMonth:I

.field private mNormalTextColor:I

.field private mNumCells:I

.field private mNumDays:I

.field private mOnDayClickListener:Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$OnDayClickListener;

.field private mPadding:I

.field private mSelectedDay:I

.field private mSelectedDayColor:I

.field private mStartCalendar:Ljava/util/Calendar;

.field private final mTouchHelper:Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;

.field private mWeekHeight:I

.field private mWeekStart:I

.field private mYear:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 137
    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 141
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mPadding:I

    .line 92
    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mSelectedDay:I

    .line 95
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mWeekStart:I

    .line 98
    iput v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mNumDays:I

    .line 101
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mNumDays:I

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mNumCells:I

    .line 103
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayOfWeekStart:I

    .line 106
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mEnabledDayStart:I

    .line 109
    const/16 v3, 0x1f

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mEnabledDayEnd:I

    .line 111
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    .line 113
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mStartCalendar:Ljava/util/Calendar;

    .line 114
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mEndCalendar:Ljava/util/Calendar;

    .line 115
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mMode:I

    .line 128
    new-array v3, v6, [I

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayColorSet:[I

    .line 142
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mContext:Landroid/content/Context;

    .line 143
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->isRTL()Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mIsRTL:Z

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 147
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 148
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010434

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 149
    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_0

    .line 150
    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mSelectedDayColor:I

    .line 156
    :goto_0
    sget v3, Lcom/samsung/android/support/sesl/R$color;->sesl_picker_dialog_background_color_light:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/samsung/android/support/sesl/core/content/res/SeslResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mEndDayColor:I

    .line 158
    sget v3, Lcom/samsung/android/support/sesl/R$dimen;->sesl_date_picker_start_end_selected_date_adjust:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDaySelectedStartEndAdjust:I

    .line 161
    sget v3, Lcom/samsung/android/support/sesl/R$dimen;->sesl_date_picker_calendar_week_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mWeekHeight:I

    .line 162
    sget v3, Lcom/samsung/android/support/sesl/R$dimen;->sesl_date_picker_selected_day_circle_radius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    .line 164
    sget v3, Lcom/samsung/android/support/sesl/R$dimen;->sesl_date_picker_selected_day_circle_stroke:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDaySelectedCircleStroke:I

    .line 166
    sget v3, Lcom/samsung/android/support/sesl/R$dimen;->sesl_date_picker_day_number_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mMiniDayNumberTextSize:I

    .line 168
    sget v3, Lcom/samsung/android/support/sesl/R$dimen;->sesl_date_picker_calendar_view_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mCalendarWidth:I

    .line 169
    sget v3, Lcom/samsung/android/support/sesl/R$dimen;->sesl_date_picker_calendar_view_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mPadding:I

    .line 172
    new-instance v3, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-direct {v3, p0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;Landroid/view/View;)V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mTouchHelper:Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    .line 173
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mTouchHelper:Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 174
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->setImportantForAccessibility(I)V

    .line 175
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mLockAccessibilityDelegate:Z

    .line 177
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "current_sec_active_themepackage"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "packageName":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 180
    sget v3, Lcom/samsung/android/support/sesl/R$integer;->sesl_day_number_disabled_alpha:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayNumberDisabledAlpha:I

    .line 185
    :goto_1
    sget v3, Lcom/samsung/android/support/sesl/R$integer;->sesl_date_picker_date_background_between_start_end_alpha:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDateBackgroundBetweenStartEndAlpha:I

    .line 187
    sget v3, Lcom/samsung/android/support/sesl/R$integer;->sesl_date_picker_abnormal_start_end_date_background_alpha:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mAbnormalStartEndDateBackgroundAlpha:I

    .line 191
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->initView()V

    .line 192
    return-void

    .line 152
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    iget v3, v0, Landroid/util/TypedValue;->data:I

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mSelectedDayColor:I

    goto :goto_0

    .line 182
    .restart local v1    # "packageName":Ljava/lang/String;
    :cond_1
    sget v3, Lcom/samsung/android/support/sesl/R$integer;->sesl_day_number_theme_disabled_alpha:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayNumberDisabledAlpha:I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;FF)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->getDayFromLocation(FF)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;

    .prologue
    .line 52
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mNumCells:I

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;

    .prologue
    .line 52
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mYear:I

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;

    .prologue
    .line 52
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mMonth:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;

    .prologue
    .line 52
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mSelectedDay:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->onDayClick(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;

    .prologue
    .line 52
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mPadding:I

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;

    .prologue
    .line 52
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mWeekHeight:I

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;

    .prologue
    .line 52
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mCalendarWidth:I

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;

    .prologue
    .line 52
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mNumDays:I

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->findDayOffset()I

    move-result v0

    return v0
.end method

.method private drawDays(Landroid/graphics/Canvas;)V
    .locals 30
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 474
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mWeekHeight:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v25, v2, 0x3

    .line 475
    .local v25, "y":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mCalendarWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mNumDays:I

    mul-int/lit8 v5, v5, 0x2

    div-int v12, v2, v5

    .line 476
    .local v12, "dayWidthHalf":I
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->findDayOffset()I

    move-result v17

    .line 477
    .local v17, "j":I
    const/4 v10, 0x1

    .local v10, "day":I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mNumCells:I

    if-gt v10, v2, :cond_1b

    .line 478
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mIsRTL:Z

    if-eqz v2, :cond_d

    .line 479
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mNumDays:I

    add-int/lit8 v19, v2, -0x1

    .line 480
    .local v19, "rtlIndex":I
    sub-int v2, v19, v17

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v2, v12

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mPadding:I

    add-int v24, v2, v5

    .line 485
    .end local v19    # "rtlIndex":I
    .local v24, "x":I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mWeekStart:I

    add-int v2, v2, v17

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mNumDays:I

    rem-int v8, v2, v5

    .line 486
    .local v8, "calendarDay":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayColorSet:[I

    aget v5, v5, v8

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 488
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mEnabledDayStart:I

    if-lt v10, v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mEnabledDayEnd:I

    if-le v10, v2, :cond_1

    .line 489
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayNumberDisabledAlpha:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 495
    :cond_1
    const/16 v20, -0x1

    .line 496
    .local v20, "start":I
    const/4 v13, -0x1

    .line 498
    .local v13, "end":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mStartCalendar:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v23

    .line 499
    .local v23, "startYear":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mStartCalendar:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v22

    .line 500
    .local v22, "startMonth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mStartCalendar:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v21

    .line 501
    .local v21, "startDay":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mEndCalendar:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v16

    .line 502
    .local v16, "endYear":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mEndCalendar:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 503
    .local v15, "endMonth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mEndCalendar:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 505
    .local v14, "endDay":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mStartCalendar:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mEndCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 506
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    .line 508
    .local v11, "dayNumberSelectedPaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mYear:I

    move/from16 v0, v23

    if-ne v0, v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mMonth:I

    move/from16 v0, v22

    if-ne v0, v2, :cond_2

    move/from16 v0, v21

    if-ne v0, v10, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mMode:I

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mYear:I

    move/from16 v0, v16

    if-ne v0, v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mMonth:I

    if-ne v15, v2, :cond_4

    if-ne v14, v10, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mMode:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_4

    .line 512
    :cond_3
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 513
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mSelectedDayColor:I

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 514
    move/from16 v0, v24

    int-to-float v2, v0

    move/from16 v0, v25

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v6, v6

    const v26, 0x402ccccd    # 2.7f

    div-float v6, v6, v26

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5, v6, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 519
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mYear:I

    move/from16 v0, v16

    if-ne v0, v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mMonth:I

    if-ne v15, v2, :cond_5

    if-ne v14, v10, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mMode:I

    const/4 v5, 0x2

    if-eq v2, v5, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mYear:I

    move/from16 v0, v23

    if-ne v0, v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mMonth:I

    move/from16 v0, v22

    if-ne v0, v2, :cond_7

    move/from16 v0, v21

    if-ne v0, v10, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mMode:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_7

    .line 523
    :cond_6
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 524
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mNormalTextColor:I

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 525
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mAbnormalStartEndDateBackgroundAlpha:I

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 526
    move/from16 v0, v24

    int-to-float v2, v0

    move/from16 v0, v25

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v6, v6

    const v26, 0x402ccccd    # 2.7f

    div-float v6, v6, v26

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5, v6, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 609
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    .line 610
    .local v18, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mMode:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_8

    move/from16 v0, v20

    if-eq v10, v0, :cond_a

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mMode:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_9

    if-eq v10, v13, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mMode:I

    if-nez v2, :cond_b

    if-ne v10, v13, :cond_b

    .line 613
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mEndDayColor:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 615
    :cond_b
    const-string v2, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, v24

    int-to-float v5, v0

    move/from16 v0, v25

    int-to-float v6, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v5, v6, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 616
    add-int/lit8 v17, v17, 0x1

    .line 617
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mNumDays:I

    move/from16 v0, v17

    if-ne v0, v2, :cond_c

    .line 618
    const/16 v17, 0x0

    .line 619
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mWeekHeight:I

    add-int v25, v25, v2

    .line 477
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 482
    .end local v8    # "calendarDay":I
    .end local v11    # "dayNumberSelectedPaint":Landroid/graphics/Paint;
    .end local v13    # "end":I
    .end local v14    # "endDay":I
    .end local v15    # "endMonth":I
    .end local v16    # "endYear":I
    .end local v18    # "paint":Landroid/graphics/Paint;
    .end local v20    # "start":I
    .end local v21    # "startDay":I
    .end local v22    # "startMonth":I
    .end local v23    # "startYear":I
    .end local v24    # "x":I
    :cond_d
    mul-int/lit8 v2, v17, 0x2

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v2, v12

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mPadding:I

    add-int v24, v2, v5

    .restart local v24    # "x":I
    goto/16 :goto_1

    .line 531
    .restart local v8    # "calendarDay":I
    .restart local v13    # "end":I
    .restart local v14    # "endDay":I
    .restart local v15    # "endMonth":I
    .restart local v16    # "endYear":I
    .restart local v20    # "start":I
    .restart local v21    # "startDay":I
    .restart local v22    # "startMonth":I
    .restart local v23    # "startYear":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayStartEndPaint:Landroid/graphics/Paint;

    .line 532
    .local v7, "dayStartEndPaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDateBackgroundBetweenStartEndAlpha:I

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 534
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    .line 535
    .restart local v11    # "dayNumberSelectedPaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mSelectedDayColor:I

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 537
    move/from16 v0, v23

    move/from16 v1, v16

    if-ne v0, v1, :cond_11

    move/from16 v0, v22

    if-ne v0, v15, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mYear:I

    move/from16 v0, v23

    if-ne v2, v0, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mMonth:I

    move/from16 v0, v22

    if-ne v2, v0, :cond_11

    .line 539
    move/from16 v20, v21

    .line 540
    move v13, v14

    .line 556
    :cond_f
    :goto_3
    move/from16 v0, v20

    if-ge v0, v10, :cond_10

    if-ge v10, v13, :cond_10

    .line 557
    sub-int v2, v24, v12

    int-to-float v3, v2

    .line 558
    .local v3, "startX":F
    move/from16 v0, v25

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v5, v5

    const v6, 0x402ccccd    # 2.7f

    div-float/2addr v5, v6

    sub-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v5, v5

    sub-float/2addr v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDaySelectedStartEndAdjust:I

    int-to-float v5, v5

    sub-float v4, v2, v5

    .line 560
    .local v4, "startY":F
    mul-int/lit8 v2, v12, 0x2

    int-to-float v2, v2

    add-float v5, v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDaySelectedStartEndAdjust:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 565
    .end local v3    # "startX":F
    .end local v4    # "startY":F
    :cond_10
    const/4 v2, -0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_15

    move/from16 v0, v20

    if-ne v0, v13, :cond_15

    move/from16 v0, v20

    if-ne v10, v0, :cond_15

    .line 566
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 567
    move/from16 v0, v24

    int-to-float v2, v0

    move/from16 v0, v25

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v6, v6

    const v26, 0x402ccccd    # 2.7f

    div-float v6, v6, v26

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5, v6, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 543
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mStartCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    cmp-long v2, v26, v28

    if-gez v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    .line 544
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mEndCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    cmp-long v2, v26, v28

    if-gez v2, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mYear:I

    move/from16 v0, v16

    if-ne v2, v0, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mMonth:I

    if-eq v2, v15, :cond_13

    .line 546
    :cond_12
    const/16 v20, 0x0

    .line 547
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mNumCells:I

    add-int/lit8 v13, v2, 0x1

    goto/16 :goto_3

    .line 548
    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mYear:I

    move/from16 v0, v23

    if-ne v2, v0, :cond_14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mMonth:I

    move/from16 v0, v22

    if-ne v2, v0, :cond_14

    .line 549
    move/from16 v20, v21

    .line 550
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mNumCells:I

    add-int/lit8 v13, v2, 0x1

    goto/16 :goto_3

    .line 551
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mYear:I

    move/from16 v0, v16

    if-ne v2, v0, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mMonth:I

    if-ne v2, v15, :cond_f

    .line 552
    const/16 v20, 0x0

    .line 553
    move v13, v14

    goto/16 :goto_3

    .line 571
    :cond_15
    if-ne v13, v10, :cond_18

    .line 572
    move/from16 v0, v25

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v5, v5

    const v6, 0x402ccccd    # 2.7f

    div-float/2addr v5, v6

    sub-float v9, v2, v5

    .line 574
    .local v9, "circleStartY":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mIsRTL:Z

    if-eqz v2, :cond_16

    move/from16 v0, v24

    int-to-float v3, v0

    .line 575
    .restart local v3    # "startX":F
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v2, v2

    sub-float v2, v9, v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDaySelectedStartEndAdjust:I

    int-to-float v5, v5

    sub-float v4, v2, v5

    .line 576
    .restart local v4    # "startY":F
    int-to-float v2, v12

    add-float v5, v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDaySelectedStartEndAdjust:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 580
    move/from16 v0, v24

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v9, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 582
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mMode:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_17

    .line 583
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 587
    :goto_5
    move/from16 v0, v24

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v9, v5, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 574
    .end local v3    # "startX":F
    .end local v4    # "startY":F
    :cond_16
    sub-int v2, v24, v12

    int-to-float v3, v2

    goto :goto_4

    .line 585
    .restart local v3    # "startX":F
    .restart local v4    # "startY":F
    :cond_17
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_5

    .line 589
    .end local v3    # "startX":F
    .end local v4    # "startY":F
    .end local v9    # "circleStartY":F
    :cond_18
    move/from16 v0, v20

    if-ne v0, v10, :cond_7

    .line 590
    move/from16 v0, v25

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v5, v5

    const v6, 0x402ccccd    # 2.7f

    div-float/2addr v5, v6

    sub-float v9, v2, v5

    .line 592
    .restart local v9    # "circleStartY":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mIsRTL:Z

    if-eqz v2, :cond_19

    sub-int v2, v24, v12

    int-to-float v3, v2

    .line 593
    .restart local v3    # "startX":F
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v2, v2

    sub-float v2, v9, v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDaySelectedStartEndAdjust:I

    int-to-float v5, v5

    sub-float v4, v2, v5

    .line 594
    .restart local v4    # "startY":F
    int-to-float v2, v12

    add-float v5, v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDaySelectedStartEndAdjust:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 598
    move/from16 v0, v24

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v9, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 600
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mMode:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1a

    .line 601
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 605
    :goto_7
    move/from16 v0, v24

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v9, v5, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 592
    .end local v3    # "startX":F
    .end local v4    # "startY":F
    :cond_19
    move/from16 v0, v24

    int-to-float v3, v0

    goto :goto_6

    .line 603
    .restart local v3    # "startX":F
    .restart local v4    # "startY":F
    :cond_1a
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_7

    .line 622
    .end local v3    # "startX":F
    .end local v4    # "startY":F
    .end local v7    # "dayStartEndPaint":Landroid/graphics/Paint;
    .end local v8    # "calendarDay":I
    .end local v9    # "circleStartY":F
    .end local v11    # "dayNumberSelectedPaint":Landroid/graphics/Paint;
    .end local v13    # "end":I
    .end local v14    # "endDay":I
    .end local v15    # "endMonth":I
    .end local v16    # "endYear":I
    .end local v20    # "start":I
    .end local v21    # "startDay":I
    .end local v22    # "startMonth":I
    .end local v23    # "startYear":I
    .end local v24    # "x":I
    :cond_1b
    return-void
.end method

.method private findDayOffset()I
    .locals 2

    .prologue
    .line 625
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayOfWeekStart:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mWeekStart:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayOfWeekStart:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mNumDays:I

    add-int/2addr v0, v1

    :goto_0
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mWeekStart:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayOfWeekStart:I

    goto :goto_0
.end method

.method private getDayFromLocation(FF)I
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v4, -0x1

    .line 637
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mPadding:I

    .line 638
    .local v2, "dayStart":I
    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mIsRTL:Z

    if-eqz v5, :cond_0

    .line 639
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mCalendarWidth:I

    int-to-float v5, v5

    sub-float p1, v5, p1

    .line 641
    :cond_0
    int-to-float v5, v2

    cmpg-float v5, p1, v5

    if-ltz v5, :cond_1

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mCalendarWidth:I

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mPadding:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, p1, v5

    if-lez v5, :cond_3

    :cond_1
    move v1, v4

    .line 653
    :cond_2
    :goto_0
    return v1

    .line 645
    :cond_3
    float-to-int v5, p2

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mWeekHeight:I

    div-int v3, v5, v6

    .line 646
    .local v3, "row":I
    int-to-float v5, v2

    sub-float v5, p1, v5

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mNumDays:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mCalendarWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v0, v5

    .line 648
    .local v0, "column":I
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->findDayOffset()I

    move-result v5

    sub-int v5, v0, v5

    add-int/lit8 v1, v5, 0x1

    .line 649
    .local v1, "day":I
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mNumDays:I

    mul-int/2addr v5, v3

    add-int/2addr v1, v5

    .line 650
    const/4 v5, 0x1

    if-lt v1, v5, :cond_4

    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mNumCells:I

    if-le v1, v5, :cond_2

    :cond_4
    move v1, v4

    .line 651
    goto :goto_0
.end method

.method private static getDaysInMonth(II)I
    .locals 3
    .param p0, "month"    # I
    .param p1, "year"    # I

    .prologue
    const/16 v0, 0x1d

    const/16 v1, 0x1c

    .line 393
    packed-switch p0, :pswitch_data_0

    .line 419
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Month"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :pswitch_0
    const/16 v0, 0x1f

    .line 417
    :cond_0
    :goto_0
    return v0

    .line 406
    :pswitch_1
    const/16 v0, 0x1e

    goto :goto_0

    .line 408
    :pswitch_2
    rem-int/lit8 v2, p1, 0x4

    if-nez v2, :cond_1

    .line 409
    rem-int/lit8 v2, p1, 0x64

    if-nez v2, :cond_0

    .line 410
    rem-int/lit16 v2, p1, 0x190

    if-eqz v2, :cond_0

    move v0, v1

    .line 413
    goto :goto_0

    :cond_1
    move v0, v1

    .line 417
    goto :goto_0

    .line 393
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

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 277
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    .line 278
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 279
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mSelectedDayColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 280
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 281
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 282
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDaySelectedCircleStroke:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 283
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 285
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    .line 286
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 287
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 288
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    const-string/jumbo v1, "sec-roboto-light"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 289
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 290
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 291
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 293
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayNumberSelectedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 295
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayStartEndPaint:Landroid/graphics/Paint;

    .line 296
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayStartEndPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mSelectedDayColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 297
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayStartEndPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 299
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    .line 300
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 301
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mMiniDayNumberTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 302
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    const-string/jumbo v1, "sec-roboto-light"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 303
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 304
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 305
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 306
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayNumberEndPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mEndDayColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 307
    return-void
.end method

.method private isRTL()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 809
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 811
    .local v1, "defLocale":Ljava/util/Locale;
    const-string/jumbo v4, "ur"

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 816
    :cond_0
    :goto_0
    return v2

    .line 815
    :cond_1
    invoke-virtual {v1, v1}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 814
    invoke-static {v4}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    .line 816
    .local v0, "defDirectionality":B
    if-eq v0, v3, :cond_2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method private static isValidDayOfWeek(I)Z
    .locals 2
    .param p0, "day"    # I

    .prologue
    const/4 v0, 0x1

    .line 315
    if-lt p0, v0, :cond_0

    const/4 v1, 0x7

    if-gt p0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidMonth(I)Z
    .locals 1
    .param p0, "month"    # I

    .prologue
    .line 319
    if-ltz p0, :cond_0

    const/16 v0, 0xb

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeMeasureSpec(II)I
    .locals 5
    .param p1, "measureSpec"    # I
    .param p2, "maxSize"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 443
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 457
    .end local p1    # "measureSpec":I
    :goto_0
    return p1

    .line 446
    .restart local p1    # "measureSpec":I
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 447
    .local v1, "size":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 449
    .local v0, "mode":I
    sparse-switch v0, :sswitch_data_0

    .line 459
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

    .line 451
    :sswitch_0
    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mCalendarWidth:I

    goto :goto_0

    .line 454
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mCalendarWidth:I

    .line 455
    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mCalendarWidth:I

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 457
    :sswitch_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 449
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private onDayClick(I)V
    .locals 3
    .param p1, "day"    # I

    .prologue
    .line 663
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mOnDayClickListener:Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$OnDayClickListener;

    if-eqz v1, :cond_0

    .line 664
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 665
    .local v0, "date":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 666
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mYear:I

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mMonth:I

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/Calendar;->set(III)V

    .line 667
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->playSoundEffect(I)V

    .line 668
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mOnDayClickListener:Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$OnDayClickListener;

    invoke-interface {v1, p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$OnDayClickListener;->onDayClick(Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;Ljava/util/Calendar;)V

    .line 672
    .end local v0    # "date":Ljava/util/Calendar;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mTouchHelper:Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;->sendEventForVirtualView(II)Z

    .line 673
    return-void
.end method


# virtual methods
.method public clearAccessibilityFocus()V
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mTouchHelper:Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;->clearFocusedVirtualView()V

    .line 681
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mTouchHelper:Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

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

.method public getNumDays()I
    .locals 1

    .prologue
    .line 805
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mNumDays:I

    return v0
.end method

.method public getWeekStart()I
    .locals 1

    .prologue
    .line 801
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mWeekStart:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 196
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 197
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->isRTL()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mIsRTL:Z

    .line 199
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mTouchHelper:Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    .line 201
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 202
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/samsung/android/support/sesl/R$dimen;->sesl_date_picker_calendar_week_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mWeekHeight:I

    .line 203
    sget v1, Lcom/samsung/android/support/sesl/R$dimen;->sesl_date_picker_selected_day_circle_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDaySelectedCircleSize:I

    .line 205
    sget v1, Lcom/samsung/android/support/sesl/R$dimen;->sesl_date_picker_day_number_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mMiniDayNumberTextSize:I

    .line 207
    sget v1, Lcom/samsung/android/support/sesl/R$dimen;->sesl_date_picker_calendar_view_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mCalendarWidth:I

    .line 209
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->initView()V

    .line 210
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->drawDays(Landroid/graphics/Canvas;)V

    .line 312
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 429
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mCalendarWidth:I

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->makeMeasureSpec(II)I

    move-result v0

    .line 430
    .local v0, "newWidthMeasureSpec":I
    invoke-super {p0, v0, p2}, Landroid/view/View;->onMeasure(II)V

    .line 432
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mTouchHelper:Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    .line 433
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 466
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mTouchHelper:Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    .line 467
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 258
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 270
    :cond_0
    :goto_0
    return v3

    .line 260
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->getDayFromLocation(FF)I

    move-result v0

    .line 261
    .local v0, "day":I
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mEnabledDayStart:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mEnabledDayEnd:I

    if-gt v0, v1, :cond_0

    .line 264
    if-ltz v0, :cond_0

    .line 265
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->onDayClick(I)V

    goto :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public reuse()V
    .locals 0

    .prologue
    .line 424
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->requestLayout()V

    .line 425
    return-void
.end method

.method public setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    .locals 1
    .param p1, "delegate"    # Landroid/view/View$AccessibilityDelegate;

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mLockAccessibilityDelegate:Z

    if-nez v0, :cond_0

    .line 243
    invoke-super {p0, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 245
    :cond_0
    return-void
.end method

.method setMonthParams(IIIIIILjava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;I)V
    .locals 3
    .param p1, "selectedDay"    # I
    .param p2, "month"    # I
    .param p3, "year"    # I
    .param p4, "weekStart"    # I
    .param p5, "enabledDayStart"    # I
    .param p6, "enabledDayEnd"    # I
    .param p7, "minDate"    # Ljava/util/Calendar;
    .param p8, "maxDate"    # Ljava/util/Calendar;
    .param p9, "startDate"    # Ljava/util/Calendar;
    .param p10, "endDate"    # Ljava/util/Calendar;
    .param p11, "mode"    # I

    .prologue
    .line 339
    iput p11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mMode:I

    .line 340
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mWeekHeight:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 341
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mWeekHeight:I

    .line 344
    :cond_0
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mSelectedDay:I

    .line 346
    invoke-static {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->isValidMonth(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mMonth:I

    .line 349
    :cond_1
    iput p3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mYear:I

    .line 351
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 352
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mMonth:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 353
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mYear:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 354
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 355
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayOfWeekStart:I

    .line 356
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mMonth:I

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mYear:I

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->getDaysInMonth(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mNumCells:I

    .line 358
    invoke-static {p4}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->isValidDayOfWeek(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 359
    iput p4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mWeekStart:I

    .line 364
    :goto_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mMonth:I

    const/4 v1, 0x2

    invoke-virtual {p7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mYear:I

    const/4 v1, 0x1

    invoke-virtual {p7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 365
    const/4 v0, 0x5

    invoke-virtual {p7, v0}, Ljava/util/Calendar;->get(I)I

    move-result p5

    .line 368
    :cond_2
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mMonth:I

    const/4 v1, 0x2

    invoke-virtual {p8, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mYear:I

    const/4 v1, 0x1

    invoke-virtual {p8, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 369
    const/4 v0, 0x5

    invoke-virtual {p8, v0}, Ljava/util/Calendar;->get(I)I

    move-result p6

    .line 372
    :cond_3
    if-lez p5, :cond_4

    const/16 v0, 0x20

    if-ge p6, v0, :cond_4

    .line 373
    iput p5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mEnabledDayStart:I

    .line 375
    :cond_4
    if-lez p6, :cond_5

    const/16 v0, 0x20

    if-ge p6, v0, :cond_5

    if-lt p6, p5, :cond_5

    .line 376
    iput p6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mEnabledDayEnd:I

    .line 380
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mTouchHelper:Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    .line 382
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mStartCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 383
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mStartCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {p9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 384
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mStartCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {p9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 385
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mStartCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-virtual {p9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 386
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mEndCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 387
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mEndCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-virtual {p10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 388
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mEndCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {p10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 389
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mEndCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-virtual {p10, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 390
    return-void

    .line 361
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mWeekStart:I

    goto/16 :goto_0
.end method

.method public setOnDayClickListener(Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$OnDayClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$OnDayClickListener;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mOnDayClickListener:Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView$OnDayClickListener;

    .line 249
    return-void
.end method

.method setTextColor()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 215
    .local v3, "res":Landroid/content/res/Resources;
    sget v7, Lcom/samsung/android/support/sesl/R$color;->sesl_date_picker_weekday_number_text_color_light:I

    invoke-static {v3, v7, v8}, Lcom/samsung/android/support/sesl/core/content/res/SeslResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mNormalTextColor:I

    .line 217
    sget v7, Lcom/samsung/android/support/sesl/R$color;->sesl_date_picker_sunday_number_text_color_light:I

    invoke-static {v3, v7, v8}, Lcom/samsung/android/support/sesl/core/content/res/SeslResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v5

    .line 219
    .local v5, "sundayTextColor":I
    sget v7, Lcom/samsung/android/support/sesl/R$color;->sesl_date_picker_saturday_text_color_light:I

    invoke-static {v3, v7, v8}, Lcom/samsung/android/support/sesl/core/content/res/SeslResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v4

    .line 222
    .local v4, "saturdayTextColor":I
    const-string v7, "CscFeature_Calendar_SetColorOfDays"

    const-string v8, "XXXXXXX"

    invoke-static {v7, v8}, Lcom/samsung/android/support/sesl/core/feature/SeslCscFeatureReflector;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 225
    .local v6, "weekdayFeatureString":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mNumDays:I

    if-ge v0, v7, :cond_2

    .line 226
    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 227
    .local v2, "parsedColor":C
    add-int/lit8 v7, v0, 0x2

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mNumDays:I

    rem-int v1, v7, v8

    .line 228
    .local v1, "index":I
    const/16 v7, 0x52

    if-ne v2, v7, :cond_0

    .line 229
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayColorSet:[I

    aput v5, v7, v1

    .line 225
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    :cond_0
    const/16 v7, 0x42

    if-ne v2, v7, :cond_1

    .line 231
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayColorSet:[I

    aput v4, v7, v1

    goto :goto_1

    .line 233
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mDayColorSet:[I

    iget v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslSimpleMonthView;->mNormalTextColor:I

    aput v8, v7, v1

    goto :goto_1

    .line 236
    .end local v1    # "index":I
    .end local v2    # "parsedColor":C
    :cond_2
    return-void
.end method
