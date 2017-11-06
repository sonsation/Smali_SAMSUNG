.class Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;
.super Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$AbstractTimePickerDelegate;
.source "SeslTimePickerSpinnerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;,
        Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslKeyListener;,
        Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SavedState;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final DIGIT_CHARACTERS:[C

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final TAG:Ljava/lang/String; = "SeslTimePickerSpinnerDelegate"


# instance fields
.field private SESL_DEBUG:Z

.field private final mAmPmMarginInside:Landroid/view/View;

.field private final mAmPmMarginOutside:Landroid/view/View;

.field private final mAmPmSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

.field private final mAmPmSpinnerInput:Landroid/widget/EditText;

.field private final mAmPmStrings:[Ljava/lang/String;

.field private final mDefaultHeight:I

.field private final mDefaultWidth:I

.field private final mDivider:Landroid/widget/TextView;

.field private mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private final mEmpty1:Landroid/view/View;

.field private final mEmpty2:Landroid/view/View;

.field private mHourFormat:C

.field private final mHourSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

.field private final mHourSpinnerInput:Landroid/widget/EditText;

.field private mHourWithTwoDigit:Z

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsAmPmAutoFlipped:Z

.field private mIsEditTextMode:Z

.field private mIsEnabled:Z

.field private final mMinuteSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

.field private final mMinuteSpinnerInput:Landroid/widget/EditText;

.field private mModeChangeListener:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnEditTextModeChangedListener;

.field private mPickerTexts:[Landroid/widget/EditText;

.field private mTempCalendar:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 869
    const/16 v0, 0x3c

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->DIGIT_CHARACTERS:[C

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

.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "delegator"    # Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$AbstractTimePickerDelegate;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;Landroid/content/Context;)V

    .line 66
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->SESL_DEBUG:Z

    .line 91
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mIsEnabled:Z

    .line 96
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mIsAmPmAutoFlipped:Z

    .line 108
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/widget/EditText;

    iput-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    .line 263
    new-instance v5, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$4;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)V

    iput-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mModeChangeListener:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnEditTextModeChangedListener;

    .line 725
    new-instance v5, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$5;

    invoke-direct {v5, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$5;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)V

    iput-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 114
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 115
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v5, Lcom/samsung/android/support/sesl/R$layout;->sesl_time_picker_spinner:I

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    const/4 v7, 0x1

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 118
    sget v5, Lcom/samsung/android/support/sesl/R$id;->hour:I

    invoke-virtual {p1, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    iput-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    .line 119
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/support/sesl/R$string;->sesl_time_picker_hour:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    .line 120
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mModeChangeListener:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnEditTextModeChangedListener;

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setOnEditTextModeChangedListener(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnEditTextModeChangedListener;)V

    .line 121
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    new-instance v6, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)V

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setOnValueChangedListener(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnValueChangeListener;)V

    .line 148
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    sget v6, Lcom/samsung/android/support/sesl/R$id;->numberpicker_input:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    .line 149
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setYearDateTimeInputMode()V

    .line 150
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    const v6, 0x2000005

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 151
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setMaxInputLength(I)V

    .line 152
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 155
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    sget v6, Lcom/samsung/android/support/sesl/R$id;->divider:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    .line 156
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->setDividerText()V

    .line 159
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 160
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v4, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 161
    .local v4, "smallestScreenWidthDp":I
    const/16 v5, 0x258

    if-lt v4, v5, :cond_4

    .line 162
    sget v5, Lcom/samsung/android/support/sesl/R$dimen;->sesl_time_picker_dialog_min_width:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mDefaultWidth:I

    .line 167
    :goto_0
    sget v5, Lcom/samsung/android/support/sesl/R$dimen;->sesl_time_picker_spinner_height:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mDefaultHeight:I

    .line 170
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    sget v6, Lcom/samsung/android/support/sesl/R$id;->minute:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    iput-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    .line 172
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setYearDateTimeInputMode()V

    .line 173
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setMinValue(I)V

    .line 174
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setMaxValue(I)V

    .line 175
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 176
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setSkipValuesOnLongPressEnabled(Z)V

    .line 177
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-static {}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getTwoDigitFormatter()Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$Formatter;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setFormatter(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$Formatter;)V

    .line 178
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/support/sesl/R$string;->sesl_time_picker_minute:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    .line 179
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mModeChangeListener:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnEditTextModeChangedListener;

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setOnEditTextModeChangedListener(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnEditTextModeChangedListener;)V

    .line 180
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    new-instance v6, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$2;

    invoke-direct {v6, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$2;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)V

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setOnValueChangedListener(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnValueChangeListener;)V

    .line 185
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    sget v6, Lcom/samsung/android/support/sesl/R$id;->numberpicker_input:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    .line 186
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const v6, 0x2000006

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 187
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setMaxInputLength(I)V

    .line 188
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 191
    invoke-static {p2}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    .line 194
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    sget v6, Lcom/samsung/android/support/sesl/R$id;->amPm:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 195
    .local v1, "amPmView":Landroid/view/View;
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    sget v6, Lcom/samsung/android/support/sesl/R$id;->sesl_timepicker_empty_1:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mEmpty1:Landroid/view/View;

    .line 196
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    sget v6, Lcom/samsung/android/support/sesl/R$id;->sesl_timepicker_empty_2:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mEmpty2:Landroid/view/View;

    .line 198
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    sget v6, Lcom/samsung/android/support/sesl/R$id;->sesl_timepicker_ampm_picker_margin_left:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmMarginInside:Landroid/view/View;

    .line 199
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    sget v6, Lcom/samsung/android/support/sesl/R$id;->sesl_timepicker_ampm_picker_margin_right:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmMarginOutside:Landroid/view/View;

    .line 200
    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    .end local v1    # "amPmView":Landroid/view/View;
    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    .line 201
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setAmPm(Z)V

    .line 202
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setMinValue(I)V

    .line 203
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setMaxValue(I)V

    .line 204
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 205
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mModeChangeListener:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnEditTextModeChangedListener;

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setOnEditTextModeChangedListener(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnEditTextModeChangedListener;)V

    .line 206
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    new-instance v6, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$3;

    invoke-direct {v6, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$3;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)V

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setOnValueChangedListener(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnValueChangeListener;)V

    .line 223
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    sget v6, Lcom/samsung/android/support/sesl/R$id;->numberpicker_input:I

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 224
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 225
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 226
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 227
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 229
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->isAmPmAtStart()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 231
    sget v5, Lcom/samsung/android/support/sesl/R$id;->sesl_timepicker_layout:I

    invoke-virtual {p1, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 232
    .local v0, "amPmParent":Landroid/view/ViewGroup;
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmMarginInside:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 233
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 234
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmMarginOutside:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 236
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmMarginInside:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 237
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 238
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmMarginOutside:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 241
    .end local v0    # "amPmParent":Landroid/view/ViewGroup;
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->getHourFormatData()V

    .line 244
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->updateHourControl()V

    .line 245
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->updateAmPmControl()V

    .line 248
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->setHour(I)V

    .line 249
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->setMinute(I)V

    .line 251
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 252
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->setEnabled(Z)V

    .line 256
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->getImportantForAccessibility()I

    move-result v5

    if-nez v5, :cond_3

    .line 257
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->setImportantForAccessibility(I)V

    .line 260
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->setTextWatcher()V

    .line 261
    return-void

    .line 164
    :cond_4
    const/4 v5, 0x1

    int-to-float v6, v4

    .line 165
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 164
    invoke-static {v5, v6, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mDefaultWidth:I

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)C
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    .prologue
    .line 64
    iget-char v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourFormat:C

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->updateInputState()V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->SESL_DEBUG:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)[Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1400()[C
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mIsAm:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mIsAm:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mIsAmPmAutoFlipped:Z

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mIsAmPmAutoFlipped:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->updateAmPmControl()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->validCheck()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->updateModeState(Z)V

    return-void
.end method

.method public static getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 691
    const/4 v7, 0x2

    new-array v6, v7, [Ljava/lang/String;

    .line 692
    .local v6, "result":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v7}, Lcom/samsung/android/support/sesl/core/icu/SeslLocaleDataReflector;->get(Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object v3

    .line 693
    .local v3, "localeData":Ljava/lang/Object;
    if-eqz v3, :cond_3

    .line 694
    invoke-static {v3}, Lcom/samsung/android/support/sesl/core/icu/SeslLocaleDataReflector;->getField_amPm(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    .line 695
    .local v0, "amPm":[Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/support/sesl/core/icu/SeslLocaleDataReflector;->getField_narrowAm(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 696
    .local v4, "narrowAm":Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/support/sesl/core/icu/SeslLocaleDataReflector;->getField_narrowPm(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 698
    .local v5, "narrowPm":Ljava/lang/String;
    aget-object v1, v0, v8

    .line 699
    .local v1, "amPm0":Ljava/lang/String;
    aget-object v2, v0, v9

    .line 701
    .local v2, "amPm1":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->isMeaLanguage()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 702
    aput-object v1, v6, v8

    .line 703
    aput-object v2, v6, v9

    .line 714
    .end local v0    # "amPm":[Ljava/lang/String;
    .end local v1    # "amPm0":Ljava/lang/String;
    .end local v2    # "amPm1":Ljava/lang/String;
    .end local v4    # "narrowAm":Ljava/lang/String;
    .end local v5    # "narrowPm":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 705
    .restart local v0    # "amPm":[Ljava/lang/String;
    .restart local v1    # "amPm0":Ljava/lang/String;
    .restart local v2    # "amPm1":Ljava/lang/String;
    .restart local v4    # "narrowAm":Ljava/lang/String;
    .restart local v5    # "narrowPm":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v10, :cond_1

    .end local v4    # "narrowAm":Ljava/lang/String;
    :goto_1
    aput-object v4, v6, v8

    .line 706
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v10, :cond_2

    .end local v5    # "narrowPm":Ljava/lang/String;
    :goto_2
    aput-object v5, v6, v9

    goto :goto_0

    .restart local v4    # "narrowAm":Ljava/lang/String;
    .restart local v5    # "narrowPm":Ljava/lang/String;
    :cond_1
    move-object v4, v1

    .line 705
    goto :goto_1

    .end local v4    # "narrowAm":Ljava/lang/String;
    :cond_2
    move-object v5, v2

    .line 706
    goto :goto_2

    .line 710
    .end local v0    # "amPm":[Ljava/lang/String;
    .end local v1    # "amPm0":Ljava/lang/String;
    .end local v2    # "amPm1":Ljava/lang/String;
    .end local v5    # "narrowPm":Ljava/lang/String;
    :cond_3
    const-string v7, "SeslTimePickerSpinnerDelegate"

    const-string v8, "LocaleData failed. Use DateFormatSymbols for ampm"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    new-instance v7, Ljava/text/DateFormatSymbols;

    invoke-direct {v7}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v7}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private static getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 4
    .param p0, "ft"    # Ljava/lang/String;

    .prologue
    .line 359
    const/4 v2, 0x0

    .line 360
    .local v2, "fontType":Landroid/graphics/Typeface;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 361
    .local v1, "fontFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 363
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 368
    :cond_0
    :goto_0
    return-object v2

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getHourFormatData()V
    .locals 6

    .prologue
    .line 289
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v4, :cond_2

    const-string v4, "Hm"

    :goto_0
    invoke-static {v5, v4}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 292
    .local v3, "lengthPattern":I
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    .line 295
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 296
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 297
    .local v1, "c":C
    const/16 v4, 0x48

    if-eq v1, v4, :cond_0

    const/16 v4, 0x68

    if-eq v1, v4, :cond_0

    const/16 v4, 0x4b

    if-eq v1, v4, :cond_0

    const/16 v4, 0x6b

    if-ne v1, v4, :cond_3

    .line 298
    :cond_0
    iput-char v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourFormat:C

    .line 299
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v3, :cond_1

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v1, v4, :cond_1

    .line 300
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    .line 305
    .end local v1    # "c":C
    :cond_1
    return-void

    .line 289
    .end local v0    # "bestDateTimePattern":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "lengthPattern":I
    :cond_2
    const-string v4, "hm"

    goto :goto_0

    .line 295
    .restart local v0    # "bestDateTimePattern":Ljava/lang/String;
    .restart local v1    # "c":C
    .restart local v2    # "i":I
    .restart local v3    # "lengthPattern":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private isAmPmAtStart()Z
    .locals 3

    .prologue
    .line 308
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    const-string v2, "hm"

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static isMeaLanguage()Z
    .locals 2

    .prologue
    .line 718
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 719
    .local v0, "language":Ljava/lang/String;
    const-string v1, "lo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ur"

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

.method private onTimeChanged()V
    .locals 4

    .prologue
    .line 614
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->sendAccessibilityEvent(I)V

    .line 615
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mOnTimeChangedListener:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mOnTimeChangedListener:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$OnTimeChangedListener;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->getHour()I

    move-result v2

    .line 617
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->getMinute()I

    move-result v3

    .line 616
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$OnTimeChangedListener;->onTimeChanged(Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;II)V

    .line 619
    :cond_0
    return-void
.end method

.method private setCurrentHour(IZ)V
    .locals 2
    .param p1, "currentHour"    # I
    .param p2, "notifyTimeChanged"    # Z

    .prologue
    const/16 v1, 0xc

    .line 378
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->getHour()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->is24Hour()Z

    move-result v0

    if-nez v0, :cond_3

    .line 383
    if-lt p1, v1, :cond_4

    .line 384
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mIsAm:Z

    .line 385
    if-le p1, v1, :cond_2

    .line 386
    add-int/lit8 p1, p1, -0xc

    .line 394
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->updateAmPmControl()V

    .line 396
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setValue(I)V

    .line 397
    if-eqz p2, :cond_0

    .line 398
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->onTimeChanged()V

    goto :goto_0

    .line 389
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mIsAm:Z

    .line 390
    if-nez p1, :cond_2

    .line 391
    const/16 p1, 0xc

    goto :goto_1
.end method

.method private setDividerText()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    .line 323
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v9, :cond_3

    const-string v7, "Hm"

    .line 324
    .local v7, "skeleton":Ljava/lang/String;
    :goto_0
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {v9, v7}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    const/16 v9, 0x48

    invoke-virtual {v0, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 328
    .local v2, "hourIndex":I
    if-ne v2, v11, :cond_0

    .line 329
    const/16 v9, 0x68

    invoke-virtual {v0, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 331
    :cond_0
    if-ne v2, v11, :cond_4

    .line 333
    const-string v6, ":"

    .line 342
    .local v6, "separatorText":Ljava/lang/String;
    :goto_1
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    invoke-static {v12}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 344
    .local v1, "defaultTypeface":Landroid/graphics/Typeface;
    const-string/jumbo v9, "sec-roboto-condensed-light"

    invoke-static {v9, v12}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    .line 345
    .local v5, "pickerTypeface":Landroid/graphics/Typeface;
    invoke-virtual {v1, v5}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 346
    const-string/jumbo v9, "sans-serif-thin"

    invoke-static {v9, v12}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    .line 349
    :cond_1
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "theme_font_clock"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 350
    .local v8, "themeTypeFace":Ljava/lang/String;
    if-eqz v8, :cond_2

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 351
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    invoke-static {v8}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->getFontTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 354
    :cond_2
    const/4 v9, 0x1

    invoke-static {v5, v9}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    .line 355
    .local v4, "pickerBoldTypeface":Landroid/graphics/Typeface;
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 356
    return-void

    .line 323
    .end local v0    # "bestDateTimePattern":Ljava/lang/String;
    .end local v1    # "defaultTypeface":Landroid/graphics/Typeface;
    .end local v2    # "hourIndex":I
    .end local v4    # "pickerBoldTypeface":Landroid/graphics/Typeface;
    .end local v5    # "pickerTypeface":Landroid/graphics/Typeface;
    .end local v6    # "separatorText":Ljava/lang/String;
    .end local v7    # "skeleton":Ljava/lang/String;
    .end local v8    # "themeTypeFace":Ljava/lang/String;
    :cond_3
    const-string v7, "hm"

    goto :goto_0

    .line 335
    .restart local v0    # "bestDateTimePattern":Ljava/lang/String;
    .restart local v2    # "hourIndex":I
    .restart local v7    # "skeleton":Ljava/lang/String;
    :cond_4
    const/16 v9, 0x6d

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 336
    .local v3, "minuteIndex":I
    if-ne v3, v11, :cond_5

    .line 337
    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "separatorText":Ljava/lang/String;
    goto :goto_1

    .line 339
    .end local v6    # "separatorText":Ljava/lang/String;
    :cond_5
    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v0, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "separatorText":Ljava/lang/String;
    goto :goto_1
.end method

.method private setTextWatcher()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 831
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v2

    .line 832
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    aput-object v1, v0, v3

    .line 834
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;

    invoke-direct {v1, p0, v4, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 835
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;

    invoke-direct {v1, p0, v4, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslTextWatcher;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;II)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 837
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v2

    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslKeyListener;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslKeyListener;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 838
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v0, v0, v3

    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslKeyListener;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SeslKeyListener;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 839
    return-void
.end method

.method private updateAmPmControl()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 557
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->is24Hour()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 558
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setVisibility(I)V

    .line 559
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmMarginInside:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 560
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmMarginOutside:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 561
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mEmpty1:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 562
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mEmpty2:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 572
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->sendAccessibilityEvent(I)V

    .line 573
    return-void

    .line 564
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mIsAm:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 565
    .local v0, "index":I
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setValue(I)V

    .line 566
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setVisibility(I)V

    .line 567
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmMarginInside:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 568
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmMarginOutside:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 569
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mEmpty1:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 570
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mEmpty2:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 564
    .end local v0    # "index":I
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private updateHourControl()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 622
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->is24Hour()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 624
    iget-char v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourFormat:C

    const/16 v1, 0x6b

    if-ne v0, v1, :cond_0

    .line 625
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setMinValue(I)V

    .line 626
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setMaxValue(I)V

    .line 641
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getTwoDigitFormatter()Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$Formatter;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setFormatter(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$Formatter;)V

    .line 642
    return-void

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setMinValue(I)V

    .line 629
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 633
    :cond_1
    iget-char v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourFormat:C

    const/16 v1, 0x4b

    if-ne v0, v1, :cond_2

    .line 634
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setMinValue(I)V

    .line 635
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 637
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setMinValue(I)V

    .line 638
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 641
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateInputState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 534
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    .line 535
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 536
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 537
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 538
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 539
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 540
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 543
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 544
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 545
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    .line 547
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 548
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 549
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 550
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0
.end method

.method private updateModeState(Z)V
    .locals 2
    .param p1, "mode"    # Z

    .prologue
    const/4 v1, 0x0

    .line 272
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    if-ne v0, p1, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    if-nez p1, :cond_0

    .line 276
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->isEditTextMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setEditTextMode(Z)V

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->isEditTextMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 280
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setEditTextMode(Z)V

    .line 282
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->isEditTextMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setEditTextMode(Z)V

    goto :goto_0
.end method

.method private validCheck()V
    .locals 3

    .prologue
    const/16 v2, 0xc

    .line 576
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz v1, :cond_0

    .line 577
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 578
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 581
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 582
    .local v0, "text":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->is24Hour()Z

    move-result v1

    if-nez v1, :cond_2

    .line 583
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mIsAm:Z

    if-nez v1, :cond_4

    if-eq v0, v2, :cond_4

    .line 584
    add-int/lit8 v0, v0, 0xc

    .line 589
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->setHour(I)V

    .line 590
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    .line 592
    .end local v0    # "text":I
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 593
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 596
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->setMinute(I)V

    .line 597
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0

    .line 585
    .restart local v0    # "text":I
    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mIsAm:Z

    if-eqz v1, :cond_2

    if-ne v0, v2, :cond_2

    .line 586
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 499
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 500
    const/4 v0, 0x1

    return v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getDefaultHeight()I
    .locals 1

    .prologue
    .line 827
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mDefaultHeight:I

    return v0
.end method

.method public getDefaultWidth()I
    .locals 1

    .prologue
    .line 822
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mDefaultWidth:I

    return v0
.end method

.method public getEditText(I)Landroid/widget/EditText;
    .locals 1
    .param p1, "picker"    # I

    .prologue
    .line 796
    packed-switch p1, :pswitch_data_0

    .line 803
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    :goto_0
    return-object v0

    .line 798
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    goto :goto_0

    .line 800
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    goto :goto_0

    .line 796
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getHour()I
    .locals 2

    .prologue
    .line 404
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getValue()I

    move-result v0

    .line 405
    .local v0, "currentHour":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->is24Hour()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    .end local v0    # "currentHour":I
    :goto_0
    return v0

    .line 407
    .restart local v0    # "currentHour":I
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mIsAm:Z

    if-eqz v1, :cond_1

    .line 408
    rem-int/lit8 v0, v0, 0xc

    goto :goto_0

    .line 410
    :cond_1
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v0, v1, 0xc

    goto :goto_0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getValue()I

    move-result v0

    return v0
.end method

.method public getNumberPicker(I)Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;
    .locals 1
    .param p1, "picker"    # I

    .prologue
    .line 809
    packed-switch p1, :pswitch_data_0

    .line 816
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    :goto_0
    return-object v0

    .line 811
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    goto :goto_0

    .line 813
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    goto :goto_0

    .line 809
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public is24Hour()Z
    .locals 1

    .prologue
    .line 450
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mIs24HourView:Z

    return v0
.end method

.method public isEditTextMode()Z
    .locals 1

    .prologue
    .line 778
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 472
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mIsEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 482
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 483
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 520
    const-class v0, Landroid/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 521
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 525
    const-class v0, Landroid/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 526
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 505
    const/4 v0, 0x1

    .line 506
    .local v0, "flags":I
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v2, :cond_0

    .line 507
    or-int/lit16 v0, v0, 0x80

    .line 511
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->getHour()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 512
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->getMinute()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 513
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    .line 514
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 513
    invoke-static {v2, v4, v5, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    return-void

    .line 509
    .end local v1    # "selectedDateUtterance":Ljava/lang/String;
    :cond_0
    or-int/lit8 v0, v0, 0x40

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 492
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SavedState;

    .line 493
    .local v0, "ss":Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SavedState;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SavedState;->getHour()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->setHour(I)V

    .line 494
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SavedState;->getMinute()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->setMinute(I)V

    .line 495
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 4
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 487
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SavedState;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->getHour()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->getMinute()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IILcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate$1;)V

    return-object v0
.end method

.method public setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 609
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$AbstractTimePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 610
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    .line 611
    return-void
.end method

.method public setEditTextMode(Z)V
    .locals 4
    .param p1, "editTextMode"    # Z

    .prologue
    const/4 v3, 0x0

    .line 753
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    if-ne v1, p1, :cond_1

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 757
    :cond_1
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    .line 758
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 760
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setEditTextMode(Z)V

    .line 761
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setEditTextMode(Z)V

    .line 762
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setEditTextMode(Z)V

    .line 764
    if-eqz v0, :cond_2

    .line 765
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    if-nez v1, :cond_3

    .line 766
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 771
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mOnEditTextModeChangedListener:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$OnEditTextModeChangedListener;

    if-eqz v1, :cond_0

    .line 772
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mOnEditTextModeChangedListener:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$OnEditTextModeChangedListener;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mDelegator:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$OnEditTextModeChangedListener;->onEditTextModeChanged(Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;Z)V

    goto :goto_0

    .line 768
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 460
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setEnabled(Z)V

    .line 461
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setEnabled(Z)V

    .line 465
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setEnabled(Z)V

    .line 466
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mIsEnabled:Z

    .line 468
    return-void
.end method

.method public setHour(I)V
    .locals 1
    .param p1, "hour"    # I

    .prologue
    .line 373
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    .line 374
    return-void
.end method

.method public setIs24Hour(Z)V
    .locals 2
    .param p1, "is24HourView"    # Z

    .prologue
    .line 433
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mIs24HourView:Z

    if-ne v1, p1, :cond_0

    .line 446
    :goto_0
    return-void

    .line 437
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->getHour()I

    move-result v0

    .line 439
    .local v0, "currentHour":I
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mIs24HourView:Z

    .line 440
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->getHourFormatData()V

    .line 441
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->updateHourControl()V

    .line 443
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    .line 444
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->updateAmPmControl()V

    goto :goto_0
.end method

.method public setMinute(I)V
    .locals 1
    .param p1, "minute"    # I

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->getMinute()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 417
    invoke-static {}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->isMeaLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setValue(I)V

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setValue(I)V

    .line 423
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->onTimeChanged()V

    goto :goto_0
.end method

.method public setOnEditTextModeChangedListener(Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$OnEditTextModeChangedListener;)V
    .locals 0
    .param p1, "onEditTextModeChangedListener"    # Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$OnEditTextModeChangedListener;

    .prologue
    .line 742
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mOnEditTextModeChangedListener:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$OnEditTextModeChangedListener;

    .line 743
    return-void
.end method

.method public setOnTimeChangedListener(Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$OnTimeChangedListener;)V
    .locals 0
    .param p1, "onTimeChangedListener"    # Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$OnTimeChangedListener;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mOnTimeChangedListener:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$OnTimeChangedListener;

    .line 456
    return-void
.end method

.method public startAnimation(ILcom/samsung/android/support/sesl/component/widget/SeslAnimationListener;)V
    .locals 3
    .param p1, "delayTime"    # I
    .param p2, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslAnimationListener;

    .prologue
    const/4 v2, 0x0

    .line 783
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->isAmPmAtStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0, p1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->startAnimation(ILcom/samsung/android/support/sesl/component/widget/SeslAnimationListener;)V

    .line 785
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    add-int/lit8 v1, p1, 0x37

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->startAnimation(ILcom/samsung/android/support/sesl/component/widget/SeslAnimationListener;)V

    .line 786
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    add-int/lit8 v1, p1, 0x6e

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->startAnimation(ILcom/samsung/android/support/sesl/component/widget/SeslAnimationListener;)V

    .line 792
    :goto_0
    return-void

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mHourSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0, p1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->startAnimation(ILcom/samsung/android/support/sesl/component/widget/SeslAnimationListener;)V

    .line 789
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mMinuteSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    add-int/lit8 v1, p1, 0x37

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->startAnimation(ILcom/samsung/android/support/sesl/component/widget/SeslAnimationListener;)V

    .line 790
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslTimePickerSpinnerDelegate;->mAmPmSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    add-int/lit8 v1, p1, 0x6e

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->startAnimation(ILcom/samsung/android/support/sesl/component/widget/SeslAnimationListener;)V

    goto :goto_0
.end method
