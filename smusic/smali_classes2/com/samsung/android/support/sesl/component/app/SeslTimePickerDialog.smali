.class public Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;
.super Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;
.source "SeslTimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog$OnTimeSetListener;
    }
.end annotation


# static fields
.field private static final HOUR:Ljava/lang/String; = "hour"

.field private static final IS_24_HOUR:Ljava/lang/String; = "is24hour"

.field private static final MINUTE:Ljava/lang/String; = "minute"


# instance fields
.field private final mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mInitialHourOfDay:I

.field private final mInitialMinute:I

.field private final mIs24HourView:Z

.field private mIsStartAnimation:Z

.field private final mTimePicker:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

.field private final mTimeSetListener:Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog$OnTimeSetListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I
    .param p3, "listener"    # Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog$OnTimeSetListener;
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "is24HourView"    # Z

    .prologue
    const/4 v5, -0x2

    .line 125
    invoke-static {p1, p2}, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 51
    new-instance v3, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog$1;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;)V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 127
    iput-object p3, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->mTimeSetListener:Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog$OnTimeSetListener;

    .line 128
    iput p4, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->mInitialHourOfDay:I

    .line 129
    iput p5, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->mInitialMinute:I

    .line 130
    iput-boolean p6, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->mIs24HourView:Z

    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 133
    .local v1, "themeContext":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 134
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/samsung/android/support/sesl/R$layout;->sesl_time_picker_spinner_dialog:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 135
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->setView(Landroid/view/View;)V

    .line 136
    const/4 v3, -0x1

    sget v4, Lcom/samsung/android/support/sesl/R$string;->sesl_picker_done:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 137
    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v5, v3, p0}, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x50

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setLayout(II)V

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x3e99999a    # 0.3f

    invoke-virtual {v3, v4}, Landroid/view/Window;->setDimAmount(F)V

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 144
    sget v3, Lcom/samsung/android/support/sesl/R$id;->timePicker:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->mTimePicker:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    .line 145
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->mTimePicker:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->mIs24HourView:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 146
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->mTimePicker:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->mInitialHourOfDay:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->setHour(I)V

    .line 147
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->mTimePicker:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    iget v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->mInitialMinute:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->setMinute(I)V

    .line 148
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->mTimePicker:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    invoke-virtual {v3, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->setOnTimeChangedListener(Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker$OnTimeChangedListener;)V

    .line 150
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->updateTitle()V

    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog$OnTimeSetListener;
    .param p3, "hourOfDay"    # I
    .param p4, "minute"    # I
    .param p5, "is24HourView"    # Z

    .prologue
    .line 96
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;-><init>(Landroid/content/Context;ILcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog$OnTimeSetListener;IIZ)V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;)Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->mTimePicker:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->mIsStartAnimation:Z

    return p1
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 100
    if-nez p1, :cond_0

    .line 101
    sget p1, Lcom/samsung/android/support/sesl/R$style;->Theme_SeslCompat_Light_PickerDialog_TimePicker:I

    .line 103
    .end local p1    # "resId":I
    :cond_0
    return p1
.end method

.method private updateTitle()V
    .locals 1

    .prologue
    .line 173
    sget v0, Lcom/samsung/android/support/sesl/R$string;->sesl_time_picker_set_title:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->setTitle(I)V

    .line 174
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    .line 198
    packed-switch p2, :pswitch_data_0

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 200
    :pswitch_0
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->mIsStartAnimation:Z

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->mTimeSetListener:Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->mTimePicker:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->clearFocus()V

    .line 205
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->mTimeSetListener:Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog$OnTimeSetListener;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->mTimePicker:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->mTimePicker:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->getHour()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->mTimePicker:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    .line 206
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->getMinute()I

    move-result v3

    .line 205
    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog$OnTimeSetListener;->onTimeSet(Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;II)V

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 210
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 209
    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 212
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->dismiss()V

    goto :goto_0

    .line 215
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_3

    .line 216
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 216
    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 219
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->cancel()V

    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 161
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 162
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->mIsStartAnimation:Z

    .line 164
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->mTimePicker:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    const/16 v1, 0x11b

    new-instance v2, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog$2;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->startAnimation(ILcom/samsung/android/support/sesl/component/widget/SeslAnimationListener;)V

    .line 170
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 257
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 258
    const-string v2, "hour"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 259
    .local v0, "hour":I
    const-string v2, "minute"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 260
    .local v1, "minute":I
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->mTimePicker:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    const-string v3, "is24hour"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 261
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->mTimePicker:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->setHour(I)V

    .line 262
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->mTimePicker:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->setMinute(I)V

    .line 264
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->updateTitle()V

    .line 265
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 242
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 243
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "hour"

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->mTimePicker:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->getHour()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 244
    const-string v1, "minute"

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->mTimePicker:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->getMinute()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 245
    const-string v1, "is24hour"

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->mTimePicker:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->is24HourView()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 246
    return-object v0
.end method

.method public onTimeChanged(Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;II)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 186
    return-void
.end method

.method public updateTime(II)V
    .locals 1
    .param p1, "hourOfDay"    # I
    .param p2, "minuteOfHour"    # I

    .prologue
    .line 231
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->mTimePicker:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->setHour(I)V

    .line 232
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslTimePickerDialog;->mTimePicker:Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslTimePicker;->setMinute(I)V

    .line 233
    return-void
.end method
