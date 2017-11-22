.class Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;
.super Landroid/widget/LinearLayout;
.source "SemDatePickerSpinnerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$1;,
        Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;,
        Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;,
        Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$OnSpinnerDateChangedListener;,
        Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwKeyListener;,
        Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final TAG:Ljava/lang/String; = "SemDatePickerSpinnerLayout"

.field private static final sem_DEBUG:Z


# instance fields
.field private final FORMAT_DDMMYYYY:I

.field private final FORMAT_MMDDYYYY:I

.field private final FORMAT_YYYYDDMM:I

.field private final FORMAT_YYYYMMDD:I

.field private final PICKER_DAY:I

.field private final PICKER_MONTH:I

.field private final PICKER_YEAR:I

.field private isMonthJan:Z

.field private mCurrentDate:Ljava/util/Calendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDateFormat:Ljava/text/DateFormat;

.field private mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

.field private final mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

.field private final mDaySpinnerInput:Landroid/widget/EditText;

.field private mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mGetDayLengthOfMethod:Ljava/lang/reflect/Method;

.field private mIsEditTextMode:Z

.field private mIsLeapMonth:Z

.field private mIsLeapMonthMethod:Ljava/lang/reflect/Method;

.field private mIsLunar:Z

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private mModeChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

.field private final mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

.field private final mMonthSpinnerInput:Landroid/widget/EditText;

.field private mNumberOfMonths:I

.field private mNumberTextSize:I

.field private mOnDateChangedListener:Lcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;

.field private mOnEditTextModeChangedListener:Lcom/samsung/android/widget/SemDatePicker$OnEditTextModeChangedListener;

.field private mOnSpinnerDateChangedListener:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$OnSpinnerDateChangedListener;

.field mPathClassLoader:Ldalvik/system/PathClassLoader;

.field private mPickerTexts:[Landroid/widget/EditText;

.field private final mPrimaryEmptyView:Landroid/view/View;

.field private final mSecondaryEmptyView:Landroid/view/View;

.field private mShortMonths:[Ljava/lang/String;

.field private mSolarLunarTables:Ljava/lang/Object;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mSubNumberTextSize:I

.field private mSubTextSize:I

.field private mTempDate:Ljava/util/Calendar;

.field private mTextSize:I

.field private mToastText:Ljava/lang/String;

.field private mYearEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private final mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

.field private final mYearSpinnerInput:Landroid/widget/EditText;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSolarLunarTables:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic -get14(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mToastText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemDatePicker;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLeapMonth:Z

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLeapMonthMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLunar:Z

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Lcom/samsung/android/widget/SemNumberPicker;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mNumberOfMonths:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->isMonthJan:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLeapMonth:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)I
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "isLeapMonth"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getLunarMaxDayOfMonth(IIZ)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "callerInstance"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->notifyDateChanged()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;III)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setDate(III)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->twLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;Lcom/samsung/android/widget/SemNumberPicker;Z)V
    .locals 0
    .param p1, "picker"    # Lcom/samsung/android/widget/SemNumberPicker;
    .param p2, "mode"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateModeState(Lcom/samsung/android/widget/SemNumberPicker;Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;ZZZZ)V
    .locals 0
    .param p1, "set"    # Z
    .param p2, "yearChanged"    # Z
    .param p3, "monthChanged"    # Z
    .param p4, "dayChanged"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 156
    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const v7, 0x1020454

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 167
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 81
    new-instance v4, Ljava/text/SimpleDateFormat;

    .line 82
    const-string/jumbo v5, "MM/dd/yyyy"

    .line 81
    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDateFormat:Ljava/text/DateFormat;

    .line 115
    new-instance v4, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$1;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mModeChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

    .line 124
    iput-boolean v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLunar:Z

    .line 125
    iput-boolean v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLeapMonth:Z

    .line 126
    iput-object v10, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    .line 763
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/widget/EditText;

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    .line 765
    iput-boolean v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->isMonthJan:Z

    .line 766
    iput v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->PICKER_DAY:I

    .line 767
    iput v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->PICKER_MONTH:I

    .line 768
    iput v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->PICKER_YEAR:I

    .line 770
    iput v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->FORMAT_MMDDYYYY:I

    .line 771
    iput v8, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->FORMAT_DDMMYYYY:I

    .line 772
    iput v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->FORMAT_YYYYMMDD:I

    .line 773
    const/4 v4, 0x3

    iput v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->FORMAT_YYYYDDMM:I

    .line 777
    new-instance v4, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$2;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 791
    new-instance v4, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$3;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 169
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 170
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x10900ff

    invoke-virtual {v0, v4, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 172
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentLocale:Ljava/util/Locale;

    .line 173
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p0, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setCurrentLocale(Ljava/util/Locale;)V

    .line 175
    new-instance v2, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$4;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V

    .line 244
    .local v2, "onChangeListener":Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;
    const v4, 0x10204b1

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    .line 246
    const v4, 0x10204b3

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPrimaryEmptyView:Landroid/view/View;

    .line 247
    const v4, 0x10204b5

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSecondaryEmptyView:Landroid/view/View;

    .line 250
    const v4, 0x10204b2

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/widget/SemNumberPicker;

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    .line 251
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinnerInput:Landroid/widget/EditText;

    .line 253
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v10}, Lcom/samsung/android/widget/SemNumberPicker;->setFormatter(Lcom/samsung/android/widget/SemNumberPicker$Formatter;)V

    .line 254
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v2}, Lcom/samsung/android/widget/SemNumberPicker;->setOnValueChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;)V

    .line 255
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mModeChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;)V

    .line 256
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v9}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxInputLength(I)V

    .line 257
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/widget/SemNumberPicker;->setYearDateTimeInputMode()V

    .line 260
    const v4, 0x10204b4

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/widget/SemNumberPicker;

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    .line 261
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    .line 263
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 264
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v8}, Lcom/samsung/android/widget/SemNumberPicker;->setMinValue(I)V

    .line 265
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxValue(I)V

    .line 266
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/widget/SemNumberPicker;->setYearDateTimeInputMode()V

    .line 267
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v9}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxInputLength(I)V

    .line 275
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v10}, Lcom/samsung/android/widget/SemNumberPicker;->setFormatter(Lcom/samsung/android/widget/SemNumberPicker$Formatter;)V

    .line 276
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v2}, Lcom/samsung/android/widget/SemNumberPicker;->setOnValueChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;)V

    .line 277
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mModeChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;)V

    .line 280
    const v4, 0x10204b6

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/widget/SemNumberPicker;

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    .line 281
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinnerInput:Landroid/widget/EditText;

    .line 283
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v2}, Lcom/samsung/android/widget/SemNumberPicker;->setOnValueChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnValueChangeListener;)V

    .line 284
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mModeChangeListener:Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemNumberPicker$OnEditTextModeChangedListener;)V

    .line 286
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxInputLength(I)V

    .line 287
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/widget/SemNumberPicker;->setYearDateTimeInputMode()V

    .line 289
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const-string/jumbo v5, "sec-roboto-condensed-light"

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setTextTypeface(Landroid/graphics/Typeface;)V

    .line 290
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const-string/jumbo v5, "sec-roboto-condensed-light"

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setTextTypeface(Landroid/graphics/Typeface;)V

    .line 291
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const-string/jumbo v5, "sec-roboto-condensed-light"

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setTextTypeface(Landroid/graphics/Typeface;)V

    .line 293
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 294
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x1050322

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mNumberTextSize:I

    .line 295
    const v4, 0x1050323

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSubNumberTextSize:I

    .line 296
    iget v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mNumberTextSize:I

    add-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mTextSize:I

    .line 297
    iget v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSubNumberTextSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSubTextSize:I

    .line 298
    const v4, 0x10408e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mToastText:Ljava/lang/String;

    .line 300
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "language":Ljava/lang/String;
    const-string/jumbo v4, "my"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "ml"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "bn"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "ar"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "fa"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 302
    :cond_0
    const v4, 0x1050324

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mTextSize:I

    .line 303
    const v4, 0x1050325

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSubTextSize:I

    .line 309
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mNumberTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setTextSize(F)V

    .line 310
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mNumberTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setTextSize(F)V

    .line 311
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSubNumberTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setSubTextSize(F)V

    .line 312
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSubNumberTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setSubTextSize(F)V

    .line 314
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 315
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mNumberTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setTextSize(F)V

    .line 316
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSubNumberTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setSubTextSize(F)V

    .line 322
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10408dc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    .line 323
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10408dd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    .line 324
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10408de

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    .line 327
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 328
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    .line 329
    const/4 v7, 0x5

    .line 328
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {p0, v4, v5, v6, v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->init(IIILcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;)V

    .line 332
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->reorderSpinners()V

    .line 165
    return-void

    .line 269
    .end local v1    # "language":Ljava/lang/String;
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4, v6}, Lcom/samsung/android/widget/SemNumberPicker;->setMinValue(I)V

    .line 270
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mNumberOfMonths:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxValue(I)V

    .line 271
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 272
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setInputType(I)V

    .line 273
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/widget/SemNumberPicker;->setMonthInputMode()V

    goto/16 :goto_0

    .line 304
    .restart local v1    # "language":Ljava/lang/String;
    .restart local v3    # "res":Landroid/content/res/Resources;
    :cond_3
    const-string/jumbo v4, "ga"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 305
    const v4, 0x1050324

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mTextSize:I

    .line 306
    const v4, 0x1050325

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSubTextSize:I

    goto/16 :goto_1

    .line 318
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setTextSize(F)V

    .line 319
    iget-object v4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget v5, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSubTextSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/widget/SemNumberPicker;->setSubTextSize(F)V

    goto/16 :goto_2
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 4
    .param p1, "oldCalendar"    # Ljava/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 479
    if-nez p1, :cond_0

    .line 480
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    return-object v3

    .line 482
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 483
    .local v0, "currentTimeMillis":J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 484
    .local v2, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 485
    return-object v2
.end method

.method private getLunarMaxDayOfMonth(IIZ)I
    .locals 7
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "isLeapMonth"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1330
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSolarLunarTables:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 1331
    return v6

    .line 1334
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSolarLunarTables:Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mGetDayLengthOfMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1335
    .local v0, "max":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1336
    .local v1, "maxDay":I
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 1337
    nop

    nop

    .end local v0    # "max":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1340
    :cond_1
    return v1
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
    .line 1344
    .local p1, "className":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 1347
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1352
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    .line 1348
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 1349
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v2, "SemDatePickerSpinnerLayout"

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

.method private varargs invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "callerInstance"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 1358
    if-nez p2, :cond_0

    .line 1359
    const-string/jumbo v4, "SemDatePickerSpinnerLayout"

    const-string/jumbo v5, "method is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    return-object v7

    .line 1364
    :cond_0
    :try_start_0
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1365
    .local v3, "result":Ljava/lang/Object;
    return-object v3

    .line 1370
    .end local v3    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 1371
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v4, "SemDatePickerSpinnerLayout"

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

    .line 1374
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_0
    return-object v7

    .line 1368
    :catch_1
    move-exception v1

    .line 1369
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "SemDatePickerSpinnerLayout"

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

    .line 1366
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1367
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v4, "SemDatePickerSpinnerLayout"

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

.method private isNewDate(III)Z
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/4 v0, 0x1

    .line 563
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 564
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v1, p2, :cond_1

    .line 563
    :cond_0
    :goto_0
    return v0

    .line 565
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyDateChanged()V
    .locals 4

    .prologue
    .line 702
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 703
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mOnDateChangedListener:Lcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mOnSpinnerDateChangedListener:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$OnSpinnerDateChangedListener;

    if-eqz v0, :cond_1

    .line 709
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mOnSpinnerDateChangedListener:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$OnSpinnerDateChangedListener;

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getDayOfMonth()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$OnSpinnerDateChangedListener;->onDateChanged(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;III)V

    .line 701
    :cond_1
    return-void
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 2
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "outDate"    # Ljava/util/Calendar;

    .prologue
    .line 555
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    const/4 v1, 0x1

    return v1

    .line 557
    :catch_0
    move-exception v0

    .line 558
    .local v0, "e":Ljava/text/ParseException;
    const/4 v1, 0x0

    return v1
.end method

.method private reorderSpinners()V
    .locals 12

    .prologue
    const/16 v11, 0x79

    const/16 v10, 0x64

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 495
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 499
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const-string/jumbo v7, "yyyyMMMdd"

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 500
    .local v4, "pattern":Ljava/lang/String;
    invoke-static {v4}, Llibcore/icu/ICU;->getDateFormatOrder(Ljava/lang/String;)[C

    move-result-object v3

    .line 501
    .local v3, "order":[C
    array-length v5, v3

    .line 502
    .local v5, "spinnerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 503
    aget-char v6, v3, v2

    sparse-switch v6, :sswitch_data_0

    .line 517
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-static {v3}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 505
    :sswitch_0
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 506
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-direct {p0, v6, v5, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setImeOptions(Lcom/samsung/android/widget/SemNumberPicker;II)V

    .line 520
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 502
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 509
    :sswitch_1
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 510
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-direct {p0, v6, v5, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setImeOptions(Lcom/samsung/android/widget/SemNumberPicker;II)V

    goto :goto_1

    .line 513
    :sswitch_2
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 514
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-direct {p0, v6, v5, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setImeOptions(Lcom/samsung/android/widget/SemNumberPicker;II)V

    goto :goto_1

    .line 522
    :pswitch_0
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPrimaryEmptyView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 525
    :pswitch_1
    iget-object v6, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSecondaryEmptyView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 534
    :cond_0
    aget-char v0, v3, v8

    .line 535
    .local v0, "c":C
    aget-char v1, v3, v9

    .line 536
    .local v1, "c2":C
    const/16 v6, 0x4d

    if-ne v0, v6, :cond_2

    .line 537
    invoke-direct {p0, v8}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setTextWatcher(I)V

    .line 494
    :cond_1
    :goto_3
    return-void

    .line 538
    :cond_2
    if-ne v0, v10, :cond_3

    .line 539
    invoke-direct {p0, v9}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setTextWatcher(I)V

    goto :goto_3

    .line 540
    :cond_3
    if-ne v0, v11, :cond_4

    if-ne v1, v10, :cond_4

    .line 541
    const/4 v6, 0x3

    invoke-direct {p0, v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setTextWatcher(I)V

    goto :goto_3

    .line 542
    :cond_4
    if-ne v0, v11, :cond_1

    .line 543
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setTextWatcher(I)V

    goto :goto_3

    .line 503
    nop

    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_1
        0x64 -> :sswitch_0
        0x79 -> :sswitch_2
    .end sparse-switch

    .line 520
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setDate(III)V
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 569
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 570
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 572
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private setImeOptions(Lcom/samsung/android/widget/SemNumberPicker;II)V
    .locals 3
    .param p1, "spinner"    # Lcom/samsung/android/widget/SemNumberPicker;
    .param p2, "spinnerCount"    # I
    .param p3, "spinnerIndex"    # I

    .prologue
    .line 722
    add-int/lit8 v2, p2, -0x1

    if-ge p3, v2, :cond_0

    .line 723
    const v0, 0x2000005

    .line 727
    .local v0, "imeOptions":I
    :goto_0
    const v2, 0x1020454

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 728
    .local v1, "input":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 720
    return-void

    .line 725
    .end local v0    # "imeOptions":I
    .end local v1    # "input":Landroid/widget/TextView;
    :cond_0
    const v0, 0x2000006

    .restart local v0    # "imeOptions":I
    goto :goto_0
.end method

.method private setTextWatcher(I)V
    .locals 7
    .param p1, "format"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTextWatcher() usingNumericMonths  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 808
    const-string/jumbo v1, "format  : "

    .line 807
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->twLog(Ljava/lang/String;)V

    .line 809
    packed-switch p1, :pswitch_data_0

    .line 889
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwKeyListener;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwKeyListener;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 890
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwKeyListener;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwKeyListener;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 891
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwKeyListener;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwKeyListener;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 806
    return-void

    .line 811
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v4

    .line 812
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 813
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 814
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v3, v4, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 817
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    .line 818
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 817
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 823
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v3, v2, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 825
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v6, v3, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 827
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    .line 828
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 827
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto :goto_0

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v5, v4, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1

    .line 831
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v4

    .line 832
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 833
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 834
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v3, v4, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 836
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 837
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v3, v2, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 839
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    .line 840
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 839
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 845
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v6, v3, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 847
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    .line 848
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 847
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto/16 :goto_0

    .line 842
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v5, v2, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_2

    .line 851
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v4

    .line 852
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 853
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 854
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v6, v4, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 856
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 857
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v3, v2, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 859
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    .line 860
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 859
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 865
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v3, v3, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 867
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    .line 868
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 867
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto/16 :goto_0

    .line 862
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v5, v2, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_3

    .line 871
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v4

    .line 872
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 873
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 874
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v4

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v6, v4, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 876
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v3, v2, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 878
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 879
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v3, v3, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 881
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    .line 882
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 881
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto/16 :goto_0

    .line 884
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;

    invoke-direct {v1, p0, v5, v3, v2}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$TwTextWatcher;-><init>(Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_0

    .line 809
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "contDescResId"    # I

    .prologue
    .line 732
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 733
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 734
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 731
    :cond_0
    return-void
.end method

.method private twLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 933
    return-void
.end method

.method private updateModeState(Lcom/samsung/android/widget/SemNumberPicker;Z)V
    .locals 2
    .param p1, "picker"    # Lcom/samsung/android/widget/SemNumberPicker;
    .param p2, "mode"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1189
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsEditTextMode:Z

    if-ne v0, p2, :cond_0

    .line 1190
    return-void

    .line 1192
    :cond_0
    if-nez p2, :cond_3

    .line 1193
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->isEditTextMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1194
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->setEditTextMode(Z)V

    .line 1195
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->isEditTextMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1196
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->setEditTextMode(Z)V

    .line 1197
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->isEditTextMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1198
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemNumberPicker;->setEditTextMode(Z)V

    .line 1188
    :cond_3
    return-void
.end method

.method private updateSpinners(ZZZZ)V
    .locals 12
    .param p1, "set"    # Z
    .param p2, "yearChanged"    # Z
    .param p3, "monthChanged"    # Z
    .param p4, "dayChanged"    # Z

    .prologue
    .line 588
    if-eqz p2, :cond_0

    .line 589
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/widget/SemNumberPicker;->setMinValue(I)V

    .line 590
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxValue(I)V

    .line 591
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/samsung/android/widget/SemNumberPicker;->setWrapSelectorWheel(Z)V

    .line 594
    :cond_0
    if-eqz p3, :cond_2

    .line 595
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 596
    .local v8, "minYear":I
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 597
    .local v5, "maxYear":I
    sub-int v1, v5, v8

    .line 599
    .local v1, "diffYear":I
    if-nez v1, :cond_5

    .line 600
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 601
    .local v7, "minMonth":I
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 615
    .local v4, "maxMonth":I
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 616
    add-int/lit8 v7, v7, 0x1

    .line 617
    add-int/lit8 v4, v4, 0x1

    .line 620
    :cond_1
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/samsung/android/widget/SemNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 621
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v9, v7}, Lcom/samsung/android/widget/SemNumberPicker;->setMinValue(I)V

    .line 622
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v9, v4}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxValue(I)V

    .line 624
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v9

    if-nez v9, :cond_2

    .line 625
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    .line 626
    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v10}, Lcom/samsung/android/widget/SemNumberPicker;->getMinValue()I

    move-result v10

    iget-object v11, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v11}, Lcom/samsung/android/widget/SemNumberPicker;->getMaxValue()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    .line 625
    invoke-static {v9, v10, v11}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 627
    .local v2, "displayedValues":[Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v9, v2}, Lcom/samsung/android/widget/SemNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 631
    .end local v1    # "diffYear":I
    .end local v2    # "displayedValues":[Ljava/lang/String;
    .end local v4    # "maxMonth":I
    .end local v5    # "maxYear":I
    .end local v7    # "minMonth":I
    .end local v8    # "minYear":I
    :cond_2
    if-eqz p4, :cond_4

    .line 632
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 633
    .restart local v8    # "minYear":I
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 634
    .restart local v5    # "maxYear":I
    sub-int v1, v5, v8

    .line 635
    .restart local v1    # "diffYear":I
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 636
    .restart local v7    # "minMonth":I
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 637
    .restart local v4    # "maxMonth":I
    sub-int v0, v4, v7

    .line 639
    .local v0, "diffMonth":I
    if-nez v1, :cond_8

    if-nez v0, :cond_8

    .line 640
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 641
    .local v6, "minDay":I
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 669
    .local v3, "maxDay":I
    :cond_3
    :goto_1
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v9, v6}, Lcom/samsung/android/widget/SemNumberPicker;->setMinValue(I)V

    .line 670
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v9, v3}, Lcom/samsung/android/widget/SemNumberPicker;->setMaxValue(I)V

    .line 673
    .end local v0    # "diffMonth":I
    .end local v1    # "diffYear":I
    .end local v3    # "maxDay":I
    .end local v4    # "maxMonth":I
    .end local v5    # "maxYear":I
    .end local v6    # "minDay":I
    .end local v7    # "minMonth":I
    .end local v8    # "minYear":I
    :cond_4
    if-nez p1, :cond_b

    .line 674
    return-void

    .line 603
    .restart local v1    # "diffYear":I
    .restart local v5    # "maxYear":I
    .restart local v8    # "minYear":I
    :cond_5
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-ne v9, v10, :cond_6

    .line 604
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 605
    .restart local v7    # "minMonth":I
    const/16 v4, 0xb

    .restart local v4    # "maxMonth":I
    goto/16 :goto_0

    .line 606
    .end local v4    # "maxMonth":I
    .end local v7    # "minMonth":I
    :cond_6
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-ne v9, v10, :cond_7

    .line 607
    const/4 v7, 0x0

    .line 608
    .restart local v7    # "minMonth":I
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .restart local v4    # "maxMonth":I
    goto/16 :goto_0

    .line 610
    .end local v4    # "maxMonth":I
    .end local v7    # "minMonth":I
    :cond_7
    const/4 v7, 0x0

    .line 611
    .restart local v7    # "minMonth":I
    const/16 v4, 0xb

    .restart local v4    # "maxMonth":I
    goto/16 :goto_0

    .line 643
    .restart local v0    # "diffMonth":I
    :cond_8
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-ne v9, v10, :cond_9

    .line 644
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-ne v9, v10, :cond_9

    .line 645
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 646
    .restart local v6    # "minDay":I
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    .line 648
    .restart local v3    # "maxDay":I
    iget-boolean v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v9, :cond_3

    .line 649
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 650
    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iget-boolean v11, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLeapMonth:Z

    .line 649
    invoke-direct {p0, v9, v10, v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getLunarMaxDayOfMonth(IIZ)I

    move-result v3

    goto/16 :goto_1

    .line 653
    .end local v3    # "maxDay":I
    .end local v6    # "minDay":I
    :cond_9
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-ne v9, v10, :cond_a

    .line 654
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-ne v9, v10, :cond_a

    .line 655
    const/4 v6, 0x1

    .line 656
    .restart local v6    # "minDay":I
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .restart local v3    # "maxDay":I
    goto/16 :goto_1

    .line 658
    .end local v3    # "maxDay":I
    .end local v6    # "minDay":I
    :cond_a
    const/4 v6, 0x1

    .line 659
    .restart local v6    # "minDay":I
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    .line 661
    .restart local v3    # "maxDay":I
    iget-boolean v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v9, :cond_3

    .line 662
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 663
    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iget-boolean v11, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLeapMonth:Z

    .line 662
    invoke-direct {p0, v9, v10, v11}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getLunarMaxDayOfMonth(IIZ)I

    move-result v3

    goto/16 :goto_1

    .line 678
    .end local v0    # "diffMonth":I
    .end local v1    # "diffYear":I
    .end local v3    # "maxDay":I
    .end local v4    # "maxMonth":I
    .end local v5    # "maxYear":I
    .end local v6    # "minDay":I
    .end local v7    # "minMonth":I
    .end local v8    # "minYear":I
    :cond_b
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/widget/SemNumberPicker;->setValue(I)V

    .line 679
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/view/View;->hasFocus()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 681
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    .line 682
    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->length()I

    move-result v10

    .line 681
    invoke-static {v9, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 685
    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 686
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Lcom/samsung/android/widget/SemNumberPicker;->setValue(I)V

    .line 691
    :goto_2
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/widget/SemNumberPicker;->setValue(I)V

    .line 693
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 694
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 577
    :cond_d
    return-void

    .line 688
    :cond_e
    iget-object v9, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    iget-object v10, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/widget/SemNumberPicker;->setValue(I)V

    goto :goto_2
.end method

.method private usingNumericMonths()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 466
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

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
    .line 414
    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 415
    const/4 v0, 0x1

    return v0
.end method

.method public getDayOfMonth()I
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getEditText(I)Landroid/widget/EditText;
    .locals 1
    .param p1, "picker"    # I

    .prologue
    .line 1257
    if-nez p1, :cond_0

    .line 1258
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    return-object v0

    .line 1259
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1260
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    return-object v0

    .line 1261
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 1262
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    return-object v0

    .line 1264
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method public getMaxDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMinDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMonth()I
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getNumberPicker(I)Lcom/samsung/android/widget/SemNumberPicker;
    .locals 1
    .param p1, "picker"    # I

    .prologue
    .line 1269
    if-nez p1, :cond_0

    .line 1270
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    return-object v0

    .line 1271
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1272
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    return-object v0

    .line 1273
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 1274
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    return-object v0

    .line 1276
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    return-object v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Lcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;

    .prologue
    const/4 v0, 0x1

    .line 338
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setDate(III)V

    .line 339
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    .line 340
    iput-object p4, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mOnDateChangedListener:Lcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;

    .line 337
    return-void
.end method

.method public isEditTextMode()Z
    .locals 1

    .prologue
    .line 1239
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsEditTextMode:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 407
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 408
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setCurrentLocale(Ljava/util/Locale;)V

    .line 406
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 421
    const/16 v0, 0x14

    .line 423
    .local v0, "flags":I
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 424
    iget-object v3, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/16 v3, 0x14

    .line 423
    invoke-static {v2, v4, v5, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 425
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    return-void
.end method

.method protected setCurrentLocale(Ljava/util/Locale;)V
    .locals 6
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 437
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    .line 438
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    .line 439
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    .line 440
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    .line 442
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mNumberOfMonths:I

    .line 443
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    .line 445
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 446
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 445
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 449
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 454
    iget v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mNumberOfMonths:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    .line 455
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mNumberOfMonths:I

    if-ge v0, v1, :cond_1

    .line 456
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

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

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 435
    :cond_1
    return-void
.end method

.method public setEditTextMode(Z)V
    .locals 4
    .param p1, "editTextMode"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1209
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsEditTextMode:Z

    if-ne v1, p1, :cond_0

    .line 1210
    return-void

    .line 1219
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsEditTextMode:Z

    .line 1220
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1222
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setEditTextMode(Z)V

    .line 1223
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setEditTextMode(Z)V

    .line 1224
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v1, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setEditTextMode(Z)V

    .line 1225
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsEditTextMode:Z

    if-nez v1, :cond_3

    .line 1226
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1227
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1232
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mOnEditTextModeChangedListener:Lcom/samsung/android/widget/SemDatePicker$OnEditTextModeChangedListener;

    if-eqz v1, :cond_2

    .line 1233
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mOnEditTextModeChangedListener:Lcom/samsung/android/widget/SemDatePicker$OnEditTextModeChangedListener;

    iget-object v2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/widget/SemDatePicker$OnEditTextModeChangedListener;->onEditTextModeChanged(Lcom/samsung/android/widget/SemDatePicker;Z)V

    .line 1208
    :cond_2
    return-void

    .line 1229
    :cond_3
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1230
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 398
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setEnabled(Z)V

    .line 399
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setEnabled(Z)V

    .line 400
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/widget/SemNumberPicker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemNumberPicker;->setEnabled(Z)V

    .line 397
    return-void
.end method

.method public setIsLeapMonth(Z)V
    .locals 0
    .param p1, "isLeapMonth"    # Z

    .prologue
    .line 1326
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLeapMonth:Z

    .line 1325
    return-void
.end method

.method public setLunar(ZZLdalvik/system/PathClassLoader;)V
    .locals 11
    .param p1, "isLunar"    # Z
    .param p2, "isLeapMonth"    # Z
    .param p3, "pathClassLoader"    # Ldalvik/system/PathClassLoader;

    .prologue
    .line 1281
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLunar:Z

    .line 1282
    iput-boolean p2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLeapMonth:Z

    .line 1284
    iget-boolean v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLunar:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    if-nez v7, :cond_2

    .line 1285
    invoke-static {}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1286
    .local v1, "calendarPkgName":Ljava/lang/String;
    iput-object p3, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    .line 1288
    const/4 v0, 0x0

    .line 1290
    .local v0, "calendarFeatureClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    const-string/jumbo v4, "com.android.calendar.Feature"

    .line 1291
    .local v4, "featureClassName":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    const/4 v8, 0x1

    invoke-static {v4, v8, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1296
    .local v0, "calendarFeatureClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 1297
    const-string/jumbo v7, "SemDatePickerSpinnerLayout"

    const-string/jumbo v8, "setLunar, Calendar Feature class is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    return-void

    .line 1292
    .end local v4    # "featureClassName":Ljava/lang/String;
    .local v0, "calendarFeatureClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v3

    .line 1293
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v7, "SemDatePickerSpinnerLayout"

    const-string/jumbo v8, "setLunar, Calendar Feature class not found"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    return-void

    .line 1301
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .local v0, "calendarFeatureClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "featureClassName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v7, "getSolarLunarTables"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-direct {p0, v0, v7, v8}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1302
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-direct {p0, v8, v5, v7}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mSolarLunarTables:Ljava/lang/Object;

    .line 1304
    const/4 v6, 0x0

    .line 1306
    .local v6, "solarLunarTablesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string/jumbo v2, "com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarTables"

    .line 1307
    .local v2, "converterClassName":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mPathClassLoader:Ldalvik/system/PathClassLoader;

    const/4 v8, 0x1

    invoke-static {v2, v8, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 1312
    .local v6, "solarLunarTablesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v6, :cond_1

    .line 1313
    const-string/jumbo v7, "SemDatePickerSpinnerLayout"

    const-string/jumbo v8, "setLunar, Calendar Tables class is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    return-void

    .line 1308
    .end local v2    # "converterClassName":Ljava/lang/String;
    .local v6, "solarLunarTablesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v3

    .line 1309
    .restart local v3    # "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v7, "SemDatePickerSpinnerLayout"

    const-string/jumbo v8, "setLunar, Calendar Tables class not found"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    return-void

    .line 1317
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "converterClassName":Ljava/lang/String;
    .local v6, "solarLunarTablesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const-string/jumbo v7, "isLeapMonth"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    invoke-direct {p0, v6, v7, v8}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mIsLeapMonthMethod:Ljava/lang/reflect/Method;

    .line 1318
    const-string/jumbo v7, "getDayLengthOf"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Class;

    .line 1319
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    aput-object v9, v8, v10

    .line 1318
    invoke-direct {p0, v6, v7, v8}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mGetDayLengthOfMethod:Ljava/lang/reflect/Method;

    .line 1322
    .end local v0    # "calendarFeatureClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "calendarPkgName":Ljava/lang/String;
    .end local v2    # "converterClassName":Ljava/lang/String;
    .end local v4    # "featureClassName":Ljava/lang/String;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "solarLunarTablesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    .line 1280
    return-void
.end method

.method public setMaxDate(J)V
    .locals 5
    .param p1, "maxDate"    # J

    .prologue
    const/4 v4, 0x1

    .line 384
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 385
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 388
    :cond_0
    invoke-direct {p0, v4, v4, v4, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    .line 383
    return-void
.end method

.method public setMinDate(J)V
    .locals 5
    .param p1, "minDate"    # J

    .prologue
    const/4 v4, 0x1

    .line 370
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 371
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 374
    :cond_0
    invoke-direct {p0, v4, v4, v4, v4}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    .line 369
    return-void
.end method

.method public setOnEditTextModeChangedListener(Lcom/samsung/android/widget/SemDatePicker;Lcom/samsung/android/widget/SemDatePicker$OnEditTextModeChangedListener;)V
    .locals 1
    .param p1, "picker"    # Lcom/samsung/android/widget/SemDatePicker;
    .param p2, "onEditModeChangedListener"    # Lcom/samsung/android/widget/SemDatePicker$OnEditTextModeChangedListener;

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    if-nez v0, :cond_0

    .line 1250
    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    .line 1252
    :cond_0
    iput-object p2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mOnEditTextModeChangedListener:Lcom/samsung/android/widget/SemDatePicker$OnEditTextModeChangedListener;

    .line 1248
    return-void
.end method

.method public setOnSpinnerDateChangedListener(Lcom/samsung/android/widget/SemDatePicker;Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$OnSpinnerDateChangedListener;)V
    .locals 1
    .param p1, "picker"    # Lcom/samsung/android/widget/SemDatePicker;
    .param p2, "listener"    # Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$OnSpinnerDateChangedListener;

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    if-nez v0, :cond_0

    .line 1183
    iput-object p1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    .line 1185
    :cond_0
    iput-object p2, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mOnSpinnerDateChangedListener:Lcom/samsung/android/widget/SemDatePickerSpinnerLayout$OnSpinnerDateChangedListener;

    .line 1181
    return-void
.end method

.method public updateDate(III)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/4 v1, 0x1

    .line 345
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    return-void

    .line 348
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->setDate(III)V

    .line 349
    invoke-direct {p0, v1, v1, v1, v1}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    .line 350
    invoke-direct {p0}, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->notifyDateChanged()V

    .line 344
    return-void
.end method

.method public updateInputState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 745
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 746
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 747
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 748
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 749
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 751
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 752
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    goto :goto_0

    .line 753
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 754
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 755
    iget-object v1, p0, Lcom/samsung/android/widget/SemDatePickerSpinnerLayout;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    goto :goto_0
.end method
