.class Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;
.super Landroid/widget/LinearLayout;
.source "SeslDatePickerSpinnerLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;,
        Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;,
        Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$OnSpinnerDateChangedListener;
    }
.end annotation


# static fields
.field private static final SESL_DEBUG:Z


# instance fields
.field private final FORMAT_DDMMYYYY:I

.field private final FORMAT_MMDDYYYY:I

.field private final FORMAT_YYYYDDMM:I

.field private final FORMAT_YYYYMMDD:I

.field private final PICKER_DAY:I

.field private final PICKER_MONTH:I

.field private final PICKER_YEAR:I

.field private mContext:Landroid/content/Context;

.field private mCurrentDate:Ljava/util/Calendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private mDatePicker:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

.field private final mDaySpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

.field private final mDaySpinnerInput:Landroid/widget/EditText;

.field private mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mIsEditTextMode:Z

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private final mMonthSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

.field private final mMonthSpinnerInput:Landroid/widget/EditText;

.field private mNumberOfMonths:I

.field private mOnEditTextModeChangedListener:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$OnEditTextModeChangedListener;

.field private mOnSpinnerDateChangedListener:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$OnSpinnerDateChangedListener;

.field private mPickerTexts:[Landroid/widget/EditText;

.field private final mPrimaryEmptyView:Landroid/view/View;

.field private final mSecondaryEmptyView:Landroid/view/View;

.field private mShortMonths:[Ljava/lang/String;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Ljava/util/Calendar;

.field private mToastText:Ljava/lang/String;

.field private final mYearSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

.field private final mYearSpinnerInput:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 137
    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 149
    invoke-direct/range {p0 .. p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    const/4 v9, 0x0

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->PICKER_DAY:I

    .line 62
    const/4 v9, 0x1

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->PICKER_MONTH:I

    .line 63
    const/4 v9, 0x2

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->PICKER_YEAR:I

    .line 65
    const/4 v9, 0x0

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->FORMAT_MMDDYYYY:I

    .line 66
    const/4 v9, 0x1

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->FORMAT_DDMMYYYY:I

    .line 67
    const/4 v9, 0x2

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->FORMAT_YYYYMMDD:I

    .line 68
    const/4 v9, 0x3

    iput v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->FORMAT_YYYYDDMM:I

    .line 109
    const/4 v9, 0x3

    new-array v9, v9, [Landroid/widget/EditText;

    iput-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    .line 692
    new-instance v9, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$3;

    invoke-direct {v9, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$3;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)V

    iput-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 150
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

    .line 152
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 153
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v9, Lcom/samsung/android/support/sesl/R$layout;->sesl_date_picker_spinner:I

    const/4 v10, 0x1

    invoke-virtual {v0, v9, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 155
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mCurrentLocale:Ljava/util/Locale;

    .line 156
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->setCurrentLocale(Ljava/util/Locale;)V

    .line 158
    new-instance v4, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)V

    .line 199
    .local v4, "onChangeListener":Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnValueChangeListener;
    sget v9, Lcom/samsung/android/support/sesl/R$id;->sesl_date_picker_pickers:I

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    .line 201
    sget v9, Lcom/samsung/android/support/sesl/R$id;->sesl_date_picker_primary_empty:I

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mPrimaryEmptyView:Landroid/view/View;

    .line 202
    sget v9, Lcom/samsung/android/support/sesl/R$id;->sesl_date_picker_secondary_empty:I

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mSecondaryEmptyView:Landroid/view/View;

    .line 204
    new-instance v2, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$2;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)V

    .line 214
    .local v2, "modeChangeListener":Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnEditTextModeChangedListener;
    sget v9, Lcom/samsung/android/support/sesl/R$id;->sesl_date_picker_spinner_day:I

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    iput-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    .line 215
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    sget v10, Lcom/samsung/android/support/sesl/R$id;->numberpicker_input:I

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mDaySpinnerInput:Landroid/widget/EditText;

    .line 216
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-static {}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getTwoDigitFormatter()Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$Formatter;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setFormatter(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$Formatter;)V

    .line 217
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v9, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setOnValueChangedListener(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnValueChangeListener;)V

    .line 218
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v9, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setOnEditTextModeChangedListener(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnEditTextModeChangedListener;)V

    .line 219
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setMaxInputLength(I)V

    .line 220
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setYearDateTimeInputMode()V

    .line 223
    sget v9, Lcom/samsung/android/support/sesl/R$id;->sesl_date_picker_spinner_month:I

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    iput-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    .line 224
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    sget v10, Lcom/samsung/android/support/sesl/R$id;->numberpicker_input:I

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    .line 225
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 226
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setMinValue(I)V

    .line 227
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    const/16 v10, 0xc

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setMaxValue(I)V

    .line 228
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setYearDateTimeInputMode()V

    .line 229
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setMaxInputLength(I)V

    .line 238
    :goto_0
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v9, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setOnValueChangedListener(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnValueChangeListener;)V

    .line 239
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v9, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setOnEditTextModeChangedListener(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnEditTextModeChangedListener;)V

    .line 242
    sget v9, Lcom/samsung/android/support/sesl/R$id;->sesl_date_picker_spinner_year:I

    invoke-virtual {p0, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    iput-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    .line 243
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    sget v10, Lcom/samsung/android/support/sesl/R$id;->numberpicker_input:I

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mYearSpinnerInput:Landroid/widget/EditText;

    .line 244
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v9, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setOnValueChangedListener(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnValueChangeListener;)V

    .line 245
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v9, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setOnEditTextModeChangedListener(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$OnEditTextModeChangedListener;)V

    .line 247
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setMaxInputLength(I)V

    .line 248
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setYearDateTimeInputMode()V

    .line 250
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 251
    .local v5, "res":Landroid/content/res/Resources;
    sget v9, Lcom/samsung/android/support/sesl/R$integer;->sesl_date_picker_spinner_number_text_size:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 252
    .local v3, "numberTextSize":I
    sget v9, Lcom/samsung/android/support/sesl/R$integer;->sesl_date_picker_spinner_sub_number_text_size:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 254
    .local v6, "subNumberTextSize":I
    add-int/lit8 v8, v3, -0x2

    .line 255
    .local v8, "textSize":I
    add-int/lit8 v7, v6, -0x1

    .line 256
    .local v7, "subTextSize":I
    sget v9, Lcom/samsung/android/support/sesl/R$string;->sesl_number_picker_invalid_value_entered:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mToastText:Ljava/lang/String;

    .line 258
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "language":Ljava/lang/String;
    const-string v9, "my"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "ml"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "bn"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "ar"

    .line 260
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "fa"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 261
    :cond_0
    sget v9, Lcom/samsung/android/support/sesl/R$integer;->sesl_date_picker_spinner_long_month_text_size:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 262
    sget v9, Lcom/samsung/android/support/sesl/R$integer;->sesl_date_picker_spinner_long_month_sub_text_size:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 270
    :cond_1
    :goto_1
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    int-to-float v10, v3

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setTextSize(F)V

    .line 271
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    int-to-float v10, v3

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setTextSize(F)V

    .line 272
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    int-to-float v10, v6

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setSubTextSize(F)V

    .line 273
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    int-to-float v10, v6

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setSubTextSize(F)V

    .line 275
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 276
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    int-to-float v10, v3

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setTextSize(F)V

    .line 277
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    int-to-float v10, v6

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setSubTextSize(F)V

    .line 283
    :goto_2
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    .line 284
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/samsung/android/support/sesl/R$string;->sesl_date_picker_day:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 283
    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    .line 285
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    .line 286
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/samsung/android/support/sesl/R$string;->sesl_date_picker_month:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 285
    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    .line 287
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    .line 288
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/samsung/android/support/sesl/R$string;->sesl_date_picker_year:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 287
    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setPickerContentDescription(Ljava/lang/String;)V

    .line 291
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 292
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    iget-object v11, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v12, 0x5

    .line 293
    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 292
    invoke-virtual {p0, v9, v10, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->init(III)V

    .line 296
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->reorderSpinners()V

    .line 297
    return-void

    .line 231
    .end local v1    # "language":Ljava/lang/String;
    .end local v3    # "numberTextSize":I
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "subNumberTextSize":I
    .end local v7    # "subTextSize":I
    .end local v8    # "textSize":I
    :cond_2
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setMinValue(I)V

    .line 232
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    iget v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mNumberOfMonths:I

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setMaxValue(I)V

    .line 233
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setFormatter(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker$Formatter;)V

    .line 234
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 235
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setInputType(I)V

    .line 236
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setMonthInputMode()V

    goto/16 :goto_0

    .line 264
    .restart local v1    # "language":Ljava/lang/String;
    .restart local v3    # "numberTextSize":I
    .restart local v5    # "res":Landroid/content/res/Resources;
    .restart local v6    # "subNumberTextSize":I
    .restart local v7    # "subTextSize":I
    .restart local v8    # "textSize":I
    :cond_3
    const-string v9, "ga"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 265
    sget v9, Lcom/samsung/android/support/sesl/R$integer;->sesl_date_picker_spinner_long_month_text_size:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    add-int/lit8 v8, v9, -0x1

    .line 266
    sget v9, Lcom/samsung/android/support/sesl/R$integer;->sesl_date_picker_spinner_long_month_sub_text_size:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    goto/16 :goto_1

    .line 279
    :cond_4
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    int-to-float v10, v8

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setTextSize(F)V

    .line 280
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    int-to-float v10, v7

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setSubTextSize(F)V

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)[Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mToastText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Ljava/util/Locale;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mCurrentLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    .prologue
    .line 58
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mNumberOfMonths:I

    return v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;III)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->setDate(III)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;ZZZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->notifyDateChanged()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->updateModeState(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->seslLog(Ljava/lang/String;)V

    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3
    .param p1, "oldCalendar"    # Ljava/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 434
    if-nez p1, :cond_0

    .line 435
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 440
    :goto_0
    return-object v2

    .line 437
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 438
    .local v0, "currentTimeMillis":J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 439
    .local v2, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private isNewDate(III)Z
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/4 v0, 0x1

    .line 506
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    .line 507
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    .line 508
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v1, p3, :cond_1

    .line 506
    :cond_0
    :goto_0
    return v0

    .line 508
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyDateChanged()V
    .locals 4

    .prologue
    .line 640
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->sendAccessibilityEvent(I)V

    .line 642
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mOnSpinnerDateChangedListener:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$OnSpinnerDateChangedListener;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mOnSpinnerDateChangedListener:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$OnSpinnerDateChangedListener;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->getYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->getMonth()I

    move-result v2

    .line 644
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->getDayOfMonth()I

    move-result v3

    .line 643
    invoke-interface {v0, p0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$OnSpinnerDateChangedListener;->onDateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;III)V

    .line 646
    :cond_0
    return-void
.end method

.method private reorderSpinners()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 450
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 453
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v3

    .line 455
    .local v3, "order":[C
    array-length v4, v3

    .line 456
    .local v4, "spinnerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 457
    aget-char v5, v3, v2

    sparse-switch v5, :sswitch_data_0

    .line 471
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-static {v3}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 459
    :sswitch_0
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 460
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-direct {p0, v5, v4, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->setImeOptions(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;II)V

    .line 474
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 456
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 463
    :sswitch_1
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 464
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-direct {p0, v5, v4, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->setImeOptions(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;II)V

    goto :goto_1

    .line 467
    :sswitch_2
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 468
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-direct {p0, v5, v4, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->setImeOptions(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;II)V

    goto :goto_1

    .line 476
    :pswitch_0
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mPrimaryEmptyView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 479
    :pswitch_1
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mSecondaryEmptyView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 486
    :cond_0
    aget-char v0, v3, v7

    .line 487
    .local v0, "c":C
    aget-char v1, v3, v8

    .line 488
    .local v1, "c2":C
    sparse-switch v0, :sswitch_data_1

    .line 503
    :goto_3
    return-void

    .line 490
    :sswitch_3
    invoke-direct {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->setTextWatcher(I)V

    goto :goto_3

    .line 493
    :sswitch_4
    invoke-direct {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->setTextWatcher(I)V

    goto :goto_3

    .line 496
    :sswitch_5
    const/16 v5, 0x64

    if-ne v1, v5, :cond_1

    .line 497
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->setTextWatcher(I)V

    goto :goto_3

    .line 499
    :cond_1
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->setTextWatcher(I)V

    goto :goto_3

    .line 457
    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_1
        0x64 -> :sswitch_0
        0x79 -> :sswitch_2
    .end sparse-switch

    .line 474
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 488
    :sswitch_data_1
    .sparse-switch
        0x4d -> :sswitch_3
        0x64 -> :sswitch_4
        0x79 -> :sswitch_5
    .end sparse-switch
.end method

.method private seslLog(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 777
    return-void
.end method

.method private setDate(III)V
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 512
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 513
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private setImeOptions(Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;II)V
    .locals 3
    .param p1, "spinner"    # Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;
    .param p2, "spinnerCount"    # I
    .param p3, "spinnerIndex"    # I

    .prologue
    .line 657
    add-int/lit8 v2, p2, -0x1

    if-ge p3, v2, :cond_0

    .line 658
    const v0, 0x2000005

    .line 662
    .local v0, "imeOptions":I
    :goto_0
    sget v2, Lcom/samsung/android/support/sesl/R$id;->numberpicker_input:I

    invoke-virtual {p1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 663
    .local v1, "input":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 664
    return-void

    .line 660
    .end local v0    # "imeOptions":I
    .end local v1    # "input":Landroid/widget/TextView;
    :cond_0
    const v0, 0x2000006

    .restart local v0    # "imeOptions":I
    goto :goto_0
.end method

.method private setTextWatcher(I)V
    .locals 10
    .param p1, "format"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 703
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTextWatcher() usingNumericMonths  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "format  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->seslLog(Ljava/lang/String;)V

    .line 705
    const/4 v2, -0x1

    .line 706
    .local v2, "yIdx":I
    const/4 v1, -0x1

    .line 707
    .local v1, "mIdx":I
    const/4 v0, -0x1

    .line 708
    .local v0, "dIdx":I
    packed-switch p1, :pswitch_data_0

    .line 731
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    aput-object v4, v3, v2

    .line 732
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    aput-object v4, v3, v1

    .line 733
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    aput-object v4, v3, v0

    .line 735
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v3, v3, v2

    new-instance v4, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;

    const/4 v5, 0x4

    invoke-direct {v4, p0, v5, v2, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 736
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 737
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v3, v3, v1

    new-instance v4, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;

    invoke-direct {v4, p0, v8, v1, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 741
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v3, v3, v0

    new-instance v4, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;

    invoke-direct {v4, p0, v8, v0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 743
    if-ne p1, v9, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 744
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 747
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v3, v3, v2

    new-instance v4, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;

    invoke-direct {v4, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 748
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v3, v3, v1

    new-instance v4, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;

    invoke-direct {v4, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 749
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v3, v3, v0

    new-instance v4, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;

    invoke-direct {v4, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 750
    return-void

    .line 710
    :pswitch_0
    const/4 v1, 0x0

    .line 711
    const/4 v0, 0x1

    .line 712
    const/4 v2, 0x2

    .line 713
    goto/16 :goto_0

    .line 715
    :pswitch_1
    const/4 v0, 0x0

    .line 716
    const/4 v1, 0x1

    .line 717
    const/4 v2, 0x2

    .line 718
    goto/16 :goto_0

    .line 720
    :pswitch_2
    const/4 v2, 0x0

    .line 721
    const/4 v1, 0x1

    .line 722
    const/4 v0, 0x2

    .line 723
    goto/16 :goto_0

    .line 725
    :pswitch_3
    const/4 v2, 0x0

    .line 726
    const/4 v0, 0x1

    .line 727
    const/4 v1, 0x2

    .line 728
    goto/16 :goto_0

    .line 739
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mPickerTexts:[Landroid/widget/EditText;

    aget-object v3, v3, v1

    new-instance v4, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;

    invoke-direct {v4, p0, v9, v1, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$SeslTextWatcher;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;IIZ)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1

    .line 708
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateModeState(Z)V
    .locals 2
    .param p1, "mode"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1010
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mIsEditTextMode:Z

    if-ne v0, p1, :cond_1

    .line 1024
    :cond_0
    :goto_0
    return-void

    .line 1013
    :cond_1
    if-nez p1, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->isEditTextMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1015
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setEditTextMode(Z)V

    .line 1017
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->isEditTextMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1018
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setEditTextMode(Z)V

    .line 1020
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->isEditTextMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setEditTextMode(Z)V

    goto :goto_0
.end method

.method private updateSpinners(ZZZZ)V
    .locals 15
    .param p1, "set"    # Z
    .param p2, "yearChanged"    # Z
    .param p3, "monthChanged"    # Z
    .param p4, "dayChanged"    # Z

    .prologue
    .line 532
    if-eqz p2, :cond_0

    .line 533
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    iget-object v13, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setMinValue(I)V

    .line 534
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    iget-object v13, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setMaxValue(I)V

    .line 535
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setWrapSelectorWheel(Z)V

    .line 538
    :cond_0
    if-eqz p3, :cond_2

    .line 539
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 540
    .local v9, "minYear":I
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 541
    .local v6, "maxYear":I
    sub-int v2, v6, v9

    .line 543
    .local v2, "diffYear":I
    if-nez v2, :cond_5

    .line 544
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 545
    .local v8, "minMonth":I
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 560
    .local v5, "maxMonth":I
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 561
    add-int/lit8 v8, v8, 0x1

    .line 562
    add-int/lit8 v5, v5, 0x1

    .line 565
    :cond_1
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 566
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v12, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setMinValue(I)V

    .line 567
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v12, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setMaxValue(I)V

    .line 569
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v12

    if-nez v12, :cond_2

    .line 570
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    iget-object v13, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    .line 571
    invoke-virtual {v13}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getMinValue()I

    move-result v13

    iget-object v14, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v14}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getMaxValue()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    .line 570
    invoke-static {v12, v13, v14}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 572
    .local v3, "displayedValues":[Ljava/lang/String;
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v12, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 576
    .end local v2    # "diffYear":I
    .end local v3    # "displayedValues":[Ljava/lang/String;
    .end local v5    # "maxMonth":I
    .end local v6    # "maxYear":I
    .end local v8    # "minMonth":I
    .end local v9    # "minYear":I
    :cond_2
    if-eqz p4, :cond_3

    .line 577
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 578
    .restart local v9    # "minYear":I
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 579
    .restart local v6    # "maxYear":I
    sub-int v2, v6, v9

    .line 580
    .restart local v2    # "diffYear":I
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 581
    .restart local v8    # "minMonth":I
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 582
    .restart local v5    # "maxMonth":I
    sub-int v1, v5, v8

    .line 584
    .local v1, "diffMonth":I
    if-nez v2, :cond_8

    if-nez v1, :cond_8

    .line 585
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 586
    .local v7, "minDay":I
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 604
    .local v4, "maxDay":I
    :goto_1
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v12, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setMinValue(I)V

    .line 605
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v12, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setMaxValue(I)V

    .line 608
    .end local v1    # "diffMonth":I
    .end local v2    # "diffYear":I
    .end local v4    # "maxDay":I
    .end local v5    # "maxMonth":I
    .end local v6    # "maxYear":I
    .end local v7    # "minDay":I
    .end local v8    # "minMonth":I
    .end local v9    # "minYear":I
    :cond_3
    if-nez p1, :cond_b

    .line 634
    :cond_4
    :goto_2
    return-void

    .line 547
    .restart local v2    # "diffYear":I
    .restart local v6    # "maxYear":I
    .restart local v9    # "minYear":I
    :cond_5
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 548
    .local v11, "year":I
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    if-ne v11, v12, :cond_6

    .line 549
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 550
    .restart local v8    # "minMonth":I
    const/16 v5, 0xb

    .restart local v5    # "maxMonth":I
    goto/16 :goto_0

    .line 551
    .end local v5    # "maxMonth":I
    .end local v8    # "minMonth":I
    :cond_6
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    if-ne v11, v12, :cond_7

    .line 552
    const/4 v8, 0x0

    .line 553
    .restart local v8    # "minMonth":I
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .restart local v5    # "maxMonth":I
    goto/16 :goto_0

    .line 555
    .end local v5    # "maxMonth":I
    .end local v8    # "minMonth":I
    :cond_7
    const/4 v8, 0x0

    .line 556
    .restart local v8    # "minMonth":I
    const/16 v5, 0xb

    .restart local v5    # "maxMonth":I
    goto/16 :goto_0

    .line 588
    .end local v11    # "year":I
    .restart local v1    # "diffMonth":I
    :cond_8
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 589
    .restart local v11    # "year":I
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 590
    .local v10, "month":I
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    if-ne v11, v12, :cond_9

    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v13, 0x2

    .line 591
    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    if-ne v10, v12, :cond_9

    .line 592
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 593
    .restart local v7    # "minDay":I
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    .restart local v4    # "maxDay":I
    goto :goto_1

    .line 594
    .end local v4    # "maxDay":I
    .end local v7    # "minDay":I
    :cond_9
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    if-ne v11, v12, :cond_a

    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v13, 0x2

    .line 595
    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    if-ne v10, v12, :cond_a

    .line 596
    const/4 v7, 0x1

    .line 597
    .restart local v7    # "minDay":I
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .restart local v4    # "maxDay":I
    goto/16 :goto_1

    .line 599
    .end local v4    # "maxDay":I
    .end local v7    # "minDay":I
    :cond_a
    const/4 v7, 0x1

    .line 600
    .restart local v7    # "minDay":I
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    .restart local v4    # "maxDay":I
    goto/16 :goto_1

    .line 613
    .end local v1    # "diffMonth":I
    .end local v2    # "diffYear":I
    .end local v4    # "maxDay":I
    .end local v5    # "maxMonth":I
    .end local v6    # "maxYear":I
    .end local v7    # "minDay":I
    .end local v8    # "minMonth":I
    .end local v9    # "minYear":I
    .end local v10    # "month":I
    .end local v11    # "year":I
    :cond_b
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    iget-object v13, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setValue(I)V

    .line 614
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->hasFocus()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 617
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mYearSpinnerInput:Landroid/widget/EditText;

    .line 618
    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->length()I

    move-result v13

    .line 617
    invoke-static {v12, v13}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 621
    :cond_c
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 622
    .restart local v10    # "month":I
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 623
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    add-int/lit8 v13, v10, 0x1

    invoke-virtual {v12, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setValue(I)V

    .line 628
    :goto_3
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 629
    .local v0, "dayOfMonth":I
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v12, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setValue(I)V

    .line 631
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 632
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setRawInputType(I)V

    goto/16 :goto_2

    .line 625
    .end local v0    # "dayOfMonth":I
    :cond_d
    iget-object v12, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v12, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setValue(I)V

    goto :goto_3
.end method

.method private usingNumericMonths()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 423
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

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
    .line 376
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 377
    const/4 v0, 0x1

    return v0
.end method

.method public getDayOfMonth()I
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getEditText(I)Landroid/widget/EditText;
    .locals 1
    .param p1, "picker"    # I

    .prologue
    .line 1077
    packed-switch p1, :pswitch_data_0

    .line 1085
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1079
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    goto :goto_0

    .line 1081
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    goto :goto_0

    .line 1083
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    goto :goto_0

    .line 1077
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getMaxDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMinDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getMonth()I
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getNumberPicker(I)Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;
    .locals 1
    .param p1, "picker"    # I

    .prologue
    .line 1090
    packed-switch p1, :pswitch_data_0

    .line 1098
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    :goto_0
    return-object v0

    .line 1092
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    goto :goto_0

    .line 1094
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    goto :goto_0

    .line 1096
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    goto :goto_0

    .line 1090
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/4 v0, 0x1

    .line 301
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->setDate(III)V

    .line 302
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    .line 303
    return-void
.end method

.method public isEditTextMode()Z
    .locals 1

    .prologue
    .line 1058
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mIsEditTextMode:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 369
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 370
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->setCurrentLocale(Ljava/util/Locale;)V

    .line 371
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 383
    const/16 v0, 0x14

    .line 384
    .local v0, "flags":I
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    .line 385
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/16 v3, 0x14

    .line 384
    invoke-static {v2, v4, v5, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    return-void
.end method

.method protected setCurrentLocale(Ljava/util/Locale;)V
    .locals 6
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 396
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    .line 397
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    .line 398
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    .line 399
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    .line 401
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mTempDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mNumberOfMonths:I

    .line 402
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    .line 404
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 408
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->usingNumericMonths()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 411
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mNumberOfMonths:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    .line 412
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mNumberOfMonths:I

    if-ge v0, v1, :cond_1

    .line 413
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mShortMonths:[Ljava/lang/String;

    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 416
    :cond_1
    return-void
.end method

.method public setEditTextMode(Z)V
    .locals 4
    .param p1, "editTextMode"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1033
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mIsEditTextMode:Z

    if-ne v1, p1, :cond_1

    .line 1054
    :cond_0
    :goto_0
    return-void

    .line 1037
    :cond_1
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mIsEditTextMode:Z

    .line 1038
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1041
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setEditTextMode(Z)V

    .line 1042
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setEditTextMode(Z)V

    .line 1043
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setEditTextMode(Z)V

    .line 1044
    if-eqz v0, :cond_2

    .line 1045
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mIsEditTextMode:Z

    if-nez v1, :cond_3

    .line 1046
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1051
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mOnEditTextModeChangedListener:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$OnEditTextModeChangedListener;

    if-eqz v1, :cond_0

    .line 1052
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mOnEditTextModeChangedListener:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$OnEditTextModeChangedListener;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mDatePicker:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$OnEditTextModeChangedListener;->onEditTextModeChanged(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;Z)V

    goto :goto_0

    .line 1048
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 360
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mDaySpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setEnabled(Z)V

    .line 361
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setEnabled(Z)V

    .line 362
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mYearSpinner:Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslNumberPicker;->setEnabled(Z)V

    .line 364
    return-void
.end method

.method public setMaxDate(J)V
    .locals 5
    .param p1, "maxDate"    # J

    .prologue
    const/4 v4, 0x1

    .line 346
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 347
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 350
    :cond_0
    invoke-direct {p0, v4, v4, v4, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    .line 351
    return-void
.end method

.method public setMinDate(J)V
    .locals 5
    .param p1, "minDate"    # J

    .prologue
    const/4 v4, 0x1

    .line 332
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 333
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 336
    :cond_0
    invoke-direct {p0, v4, v4, v4, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    .line 337
    return-void
.end method

.method public setOnEditTextModeChangedListener(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$OnEditTextModeChangedListener;)V
    .locals 1
    .param p1, "picker"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;
    .param p2, "onEditTextModeChangedListener"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$OnEditTextModeChangedListener;

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mDatePicker:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    if-nez v0, :cond_0

    .line 1070
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mDatePicker:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    .line 1072
    :cond_0
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mOnEditTextModeChangedListener:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$OnEditTextModeChangedListener;

    .line 1073
    return-void
.end method

.method public setOnSpinnerDateChangedListener(Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$OnSpinnerDateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$OnSpinnerDateChangedListener;

    .prologue
    .line 1006
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mOnSpinnerDateChangedListener:Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout$OnSpinnerDateChangedListener;

    .line 1007
    return-void
.end method

.method public updateDate(III)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/4 v1, 0x1

    .line 307
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->setDate(III)V

    .line 311
    invoke-direct {p0, v1, v1, v1, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->updateSpinners(ZZZZ)V

    .line 312
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->notifyDateChanged()V

    goto :goto_0
.end method

.method public updateInputState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 673
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 675
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 676
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 677
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 678
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 687
    :cond_0
    :goto_0
    return-void

    .line 679
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 680
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 681
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0

    .line 682
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 683
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 684
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDatePickerSpinnerLayout;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    goto :goto_0
.end method
