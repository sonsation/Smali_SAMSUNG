.class public Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;
.super Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;
.source "SeslDatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private final mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mDatePicker:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

.field private final mDateSetListener:Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog$OnDateSetListener;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mValidationCallback:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$ValidationCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog$OnDateSetListener;III)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "themeResId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param
    .param p3, "listener"    # Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog$OnDateSetListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I

    .prologue
    const/4 v5, -0x2

    .line 102
    invoke-static {p2}, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->resolveDialogTheme(I)I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 59
    new-instance v3, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog$1;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;)V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 223
    new-instance v3, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog$2;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;)V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->mValidationCallback:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$ValidationCallback;

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 105
    .local v1, "themeContext":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 106
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/samsung/android/support/sesl/R$layout;->sesl_date_picker_dialog:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 107
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->setView(Landroid/view/View;)V

    .line 109
    const/4 v3, -0x1

    sget v4, Lcom/samsung/android/support/sesl/R$string;->sesl_picker_done:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 110
    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v5, v3, p0}, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x50

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Landroid/view/Window;->setLayout(II)V

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x3e99999a    # 0.3f

    invoke-virtual {v3, v4}, Landroid/view/Window;->setDimAmount(F)V

    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 120
    sget v3, Lcom/samsung/android/support/sesl/R$id;->sesl_datePicker:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->mDatePicker:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    .line 121
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->mDatePicker:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-virtual {v3, p4, p5, p6, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->init(IIILcom/samsung/android/support/sesl/component/widget/SeslDatePicker$OnDateChangedListener;)V

    .line 122
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->mDatePicker:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->mValidationCallback:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$ValidationCallback;

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->setValidationCallback(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker$ValidationCallback;)V

    .line 123
    iput-object p3, p0, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->mDateSetListener:Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog$OnDateSetListener;

    .line 125
    const-string v3, "input_method"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog$OnDateSetListener;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog$OnDateSetListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "year"    # I
    .param p4, "month"    # I
    .param p5, "dayOfMonth"    # I

    .prologue
    .line 83
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;-><init>(Landroid/content/Context;ILcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog$OnDateSetListener;III)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;)Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->mDatePicker:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    return-object v0
.end method

.method static resolveDialogTheme(I)I
    .locals 0
    .param p0, "themeResId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/StyleRes;
    .end annotation

    .prologue
    .line 129
    if-nez p0, :cond_0

    .line 130
    sget p0, Lcom/samsung/android/support/sesl/R$style;->Theme_SeslCompat_Light_PickerDialog_DatePicker:I

    .line 132
    .end local p0    # "themeResId":I
    :cond_0
    return p0
.end method


# virtual methods
.method public getDatePicker()Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->mDatePicker:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "which"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 160
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 175
    :cond_1
    :goto_0
    return-void

    .line 162
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->mDateSetListener:Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->mDatePicker:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->clearFocus()V

    .line 166
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->mDateSetListener:Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->mDatePicker:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->mDatePicker:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->mDatePicker:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    .line 167
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->mDatePicker:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getDayOfMonth()I

    move-result v4

    .line 166
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog$OnDateSetListener;->onDateSet(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;III)V

    goto :goto_0

    .line 171
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->cancel()V

    goto :goto_0

    .line 160
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
    .line 139
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 140
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 141
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 142
    return-void
.end method

.method public onDateChanged(Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;III)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 149
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 216
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 217
    const-string/jumbo v3, "year"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 218
    .local v2, "year":I
    const-string v3, "month"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 219
    .local v1, "month":I
    const-string v3, "day"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 220
    .local v0, "day":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->mDatePicker:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-virtual {v3, v2, v1, v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->init(IIILcom/samsung/android/support/sesl/component/widget/SeslDatePicker$OnDateChangedListener;)V

    .line 221
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 204
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 205
    .local v0, "state":Landroid/os/Bundle;
    const-string/jumbo v1, "year"

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->mDatePicker:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 206
    const-string v1, "month"

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->mDatePicker:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    const-string v1, "day"

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->mDatePicker:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    return-object v0
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslDatePickerDialog;->mDatePicker:Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/widget/SeslDatePicker;->updateDate(III)V

    .line 197
    return-void
.end method
