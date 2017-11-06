.class public Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;
.super Landroid/widget/LinearLayout;
.source "InputVoucherCodeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$OnInputVoucherListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "InputVoucherCodeView"

.field public static final MAX_VOUCHER_LENGTH:I = 0x32


# instance fields
.field private mButton:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mEdit:Landroid/widget/EditText;

.field private mInputVoucherListener:Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$OnInputVoucherListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->mEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;)Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$OnInputVoucherListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->mInputVoucherListener:Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$OnInputVoucherListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->setEnableButton(Z)V

    return-void
.end method

.method private getEditTextFilterEmoji()Landroid/text/InputFilter;
    .locals 1

    .prologue
    .line 199
    new-instance v0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$5;-><init>(Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;)V

    return-object v0
.end method

.method private setEnableButton(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->mButton:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 186
    const-string v0, "InputVoucherCodeView"

    const-string/jumbo v1, "setEnableButton mButton is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :goto_0
    return-void

    .line 189
    :cond_0
    if-eqz p1, :cond_1

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->mButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->mButton:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->mButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->mButton:Landroid/widget/TextView;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 63
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 65
    const v1, 0x7f120221

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->mButton:Landroid/widget/TextView;

    .line 66
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->mButton:Landroid/widget/TextView;

    new-instance v2, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$1;-><init>(Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v1, 0x7f12010c

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->mEdit:Landroid/widget/EditText;

    .line 78
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->mEdit:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0404

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->mEdit:Landroid/widget/EditText;

    const-string v2, "disableEmoticonInput=true"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 80
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->getEditTextFilterEmoji()Landroid/text/InputFilter;

    move-result-object v1

    aput-object v1, v0, v4

    .line 81
    .local v0, "filterArray":[Landroid/text/InputFilter;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 82
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->mEdit:Landroid/widget/EditText;

    new-instance v2, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$2;-><init>(Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 114
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->mEdit:Landroid/widget/EditText;

    new-instance v2, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$3;-><init>(Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 137
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->mEdit:Landroid/widget/EditText;

    new-instance v2, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$4;-><init>(Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 149
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->mEdit:Landroid/widget/EditText;

    const v2, 0x81090

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 152
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->mEdit:Landroid/widget/EditText;

    const-string v2, "defaultInputmode=english;"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    .line 155
    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 157
    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->setEnableButton(Z)V

    .line 158
    return-void
.end method

.method public setInputVoucherListener(Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$OnInputVoucherListener;)V
    .locals 0
    .param p1, "clickListener"    # Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$OnInputVoucherListener;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->mInputVoucherListener:Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView$OnInputVoucherListener;

    .line 59
    return-void
.end method

.method public setVoucherCode(Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->mEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 181
    :cond_0
    return-void
.end method

.method public showKeypad(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    .line 161
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    .line 162
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 163
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const-string v1, "InputVoucherCodeView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showKeypad how : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    if-eqz v0, :cond_0

    .line 165
    if-eqz p1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->mEdit:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/mysubscription/InputVoucherCodeView;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
