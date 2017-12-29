.class public Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;
.super Lcom/samsung/android/app/SemDatePickerDialog;
.source "DatePickerAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$1;,
        Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$2;,
        Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$3;,
        Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$OnDateSetListener;
    }
.end annotation


# instance fields
.field private final mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

.field private final mDateSetListener:Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$OnDateSetListener;

.field mEndTime:J

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field mStartTime:J

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mToast:Landroid/widget/Toast;

.field private final mValidationCallback:Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;

.field final themeContext:Landroid/content/Context;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;)Lcom/samsung/android/widget/SemDatePicker;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;)Landroid/widget/TabHost;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$OnDateSetListener;IIII)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$OnDateSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I
    .param p6, "flag"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v8, -0x2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    .line 98
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/SemDatePickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemDatePickerDialog$OnDateSetListener;III)V

    .line 43
    iput-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mToast:Landroid/widget/Toast;

    .line 45
    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$1;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;)V

    .line 44
    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 61
    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$2;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 267
    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$3;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mValidationCallback:Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;

    .line 99
    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->initialize()V

    .line 100
    iput-object p2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mDateSetListener:Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$OnDateSetListener;

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->themeContext:Landroid/content/Context;

    .line 102
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->themeContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 104
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f0400b6

    invoke-virtual {v6, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 105
    .local v7, "view":Landroid/view/View;
    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->setView(Landroid/view/View;)V

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v8, v8}, Landroid/view/Window;->setLayout(II)V

    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->themeContext:Landroid/content/Context;

    const v1, 0x7f0b050a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->themeContext:Landroid/content/Context;

    const v1, 0x7f0b0509

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v8, v0, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 112
    const v0, 0x7f110279

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/widget/SemDatePicker;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    .line 113
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v0, p3, p4, p5, p0}, Lcom/samsung/android/widget/SemDatePicker;->init(IIILcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;)V

    .line 114
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mValidationCallback:Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemDatePicker;->setValidationCallback(Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;)V

    .line 115
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->themeContext:Landroid/content/Context;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 116
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->initTab(Landroid/view/View;)V

    .line 97
    return-void
.end method

.method private initTab(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v6, 0x1020011

    .line 139
    const v4, 0x7f110277

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabHost;

    iput-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    .line 140
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->setup()V

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b12c4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "start":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 144
    .local v3, "startTab":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v3, v6}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 145
    invoke-virtual {v3, v2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 146
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b12c5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "end":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, v0}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 150
    .local v1, "endTab":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v1, v6}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 151
    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 152
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 153
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 138
    return-void
.end method

.method private initialize()V
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v7, 0x0

    .line 120
    const-string/jumbo v3, "DatePickerAlertDialog"

    const-string/jumbo v6, "initialize()"

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 122
    .local v4, "mCurrentTime":J
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 123
    .local v1, "date":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 124
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 125
    const/16 v3, 0xb

    invoke-virtual {v0, v3, v7}, Ljava/util/Calendar;->set(II)V

    .line 126
    const/16 v3, 0xc

    invoke-virtual {v0, v3, v7}, Ljava/util/Calendar;->set(II)V

    .line 127
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v7}, Ljava/util/Calendar;->set(II)V

    .line 128
    const/16 v3, 0xe

    invoke-virtual {v0, v3, v7}, Ljava/util/Calendar;->set(II)V

    .line 129
    const-string/jumbo v3, "DatePickerAlertDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "initialize(), the current time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mStartTime:J

    .line 131
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 132
    .local v2, "day":I
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v10, v3}, Ljava/util/Calendar;->set(II)V

    .line 133
    const-string/jumbo v3, "DatePickerAlertDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "init end month:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string/jumbo v3, "DatePickerAlertDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "init end day:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mEndTime:J

    .line 119
    return-void
.end method


# virtual methods
.method public getDatePicker()Lcom/samsung/android/widget/SemDatePicker;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    .line 166
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 169
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 164
    :cond_1
    :goto_0
    return-void

    .line 171
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mDateSetListener:Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$OnDateSetListener;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemDatePicker;->clearFocus()V

    .line 175
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mDateSetListener:Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    iget-wide v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mStartTime:J

    iget-wide v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mEndTime:J

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$OnDateSetListener;->onDateSet(Lcom/samsung/android/widget/SemDatePicker;JJ)V

    goto :goto_0

    .line 179
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->cancel()V

    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/samsung/android/app/SemDatePickerDialog;->onCreate(Landroid/os/Bundle;)V

    .line 159
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 160
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 157
    return-void
.end method

.method public onDateChanged(Lcom/samsung/android/widget/SemDatePicker;III)V
    .locals 11
    .param p1, "view"    # Lcom/samsung/android/widget/SemDatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x5

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 186
    const-string/jumbo v4, "DatePickerAlertDialog"

    const-string/jumbo v5, "onDateChanged()"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string/jumbo v4, "DatePickerAlertDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "year:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " month:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " day:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 189
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0, v10, p2}, Ljava/util/Calendar;->set(II)V

    .line 190
    const/4 v4, 0x2

    invoke-virtual {v0, v4, p3}, Ljava/util/Calendar;->set(II)V

    .line 191
    invoke-virtual {v0, v7, p4}, Ljava/util/Calendar;->set(II)V

    .line 192
    const/16 v4, 0xb

    invoke-virtual {v0, v4, v8}, Ljava/util/Calendar;->set(II)V

    .line 193
    const/16 v4, 0xc

    invoke-virtual {v0, v4, v8}, Ljava/util/Calendar;->set(II)V

    .line 194
    const/16 v4, 0xd

    invoke-virtual {v0, v4, v8}, Ljava/util/Calendar;->set(II)V

    .line 195
    const/16 v4, 0xe

    invoke-virtual {v0, v4, v8}, Ljava/util/Calendar;->set(II)V

    .line 196
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b12c4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, "start":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b12c4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "currentTab":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    if-eqz v4, :cond_0

    .line 199
    const-string/jumbo v4, "DatePickerAlertDialog"

    const-string/jumbo v5, "mTabHost is not null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 202
    :cond_0
    const-string/jumbo v4, "DatePickerAlertDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "currentTab is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 204
    const-string/jumbo v4, "DatePickerAlertDialog"

    const-string/jumbo v5, "current time is start time"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mStartTime:J

    .line 212
    :goto_0
    iget-wide v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mStartTime:J

    iget-wide v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mEndTime:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_5

    .line 213
    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 214
    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 216
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b12c7

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "pop_string":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->themeContext:Landroid/content/Context;

    if-eqz v4, :cond_2

    .line 218
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mToast:Landroid/widget/Toast;

    if-nez v4, :cond_4

    .line 219
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->themeContext:Landroid/content/Context;

    invoke-static {v4, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mToast:Landroid/widget/Toast;

    .line 223
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 230
    .end local v2    # "pop_string":Ljava/lang/String;
    :cond_2
    :goto_2
    const-string/jumbo v4, "DatePickerAlertDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mStartTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mStartTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mEndTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mEndTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void

    .line 207
    :cond_3
    add-int/lit8 v4, p4, 0x1

    invoke-virtual {v0, v7, v4}, Ljava/util/Calendar;->set(II)V

    .line 208
    const-string/jumbo v4, "DatePickerAlertDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "current time is end time,  month:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string/jumbo v4, "DatePickerAlertDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "current time is end time, day:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mEndTime:J

    goto/16 :goto_0

    .line 221
    .restart local v2    # "pop_string":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 226
    .end local v2    # "pop_string":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 227
    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 260
    invoke-super {p0, p1}, Lcom/samsung/android/app/SemDatePickerDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 261
    const-string/jumbo v3, "year"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 262
    .local v2, "year":I
    const-string/jumbo v3, "month"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 263
    .local v1, "month":I
    const-string/jumbo v3, "day"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 264
    .local v0, "day":I
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v3, v2, v1, v0, p0}, Lcom/samsung/android/widget/SemDatePicker;->init(IIILcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;)V

    .line 259
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 248
    invoke-super {p0}, Lcom/samsung/android/app/SemDatePickerDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 249
    .local v0, "state":Landroid/os/Bundle;
    const-string/jumbo v1, "year"

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemDatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 250
    const-string/jumbo v1, "month"

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemDatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 251
    const-string/jumbo v1, "day"

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemDatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 252
    return-object v0
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 240
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/widget/SemDatePicker;->updateDate(III)V

    .line 239
    return-void
.end method
