.class public Lcom/android/keyguard/KeyguardCarrierPasswordView;
.super Landroid/widget/LinearLayout;
.source "KeyguardCarrierPasswordView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardCarrierPasswordView$1;
    }
.end annotation


# instance fields
.field private deadline:J

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mContext:Landroid/content/Context;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCurrentOrientation:I

.field private mFailedAttempts:I

.field private mInputContainer:Landroid/view/ViewGroup;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private final mShowImeAtScreenOn:Z

.field private final mShowImeRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/KeyguardCarrierPasswordView;)Lcom/android/keyguard/SecurityMessageDisplay;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/KeyguardCarrierPasswordView;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mFailedAttempts:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/KeyguardCarrierPasswordView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardCarrierPasswordView;ZIZ)V
    .locals 0
    .param p1, "matched"    # Z
    .param p2, "timeoutMs"    # I
    .param p3, "isValidPassword"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->onPasswordChecked(ZIZ)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/KeyguardCarrierPasswordView;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->setPasswordEntryEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    iput-object v3, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->deadline:J

    .line 62
    iput v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mFailedAttempts:I

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCurrentOrientation:I

    .line 69
    iput-object v3, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    .line 232
    new-instance v0, Lcom/android/keyguard/KeyguardCarrierPasswordView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView$1;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mShowImeRunnable:Ljava/lang/Runnable;

    .line 83
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mContext:Landroid/content/Context;

    .line 84
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 85
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 86
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$bool;->kg_show_ime_at_screen_on:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mShowImeAtScreenOn:Z

    .line 81
    return-void
.end method

.method private handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->setPasswordEntryEnabled(Z)V

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 309
    .local v6, "elapsedRealtime":J
    new-instance v0, Lcom/android/keyguard/KeyguardCarrierPasswordView$5;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardCarrierPasswordView$5;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordView;JJ)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView$5;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 305
    return-void
.end method

.method private onPasswordChecked(ZIZ)V
    .locals 4
    .param p1, "matched"    # Z
    .param p2, "timeoutMs"    # I
    .param p3, "isValidPassword"    # Z

    .prologue
    .line 216
    const-string/jumbo v1, "KeyguardCarrierPasswordView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "check result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    if-eqz p1, :cond_1

    .line 218
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 219
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.FindingLostPhonePlus.RELEASE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.MASTER_CLEAR"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 215
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v2, Lcom/android/keyguard/R$string;->kg_carrier_lock_wrong_password:I

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 223
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mFailedAttempts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mFailedAttempts:I

    .line 225
    iget v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mFailedAttempts:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 226
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setCarrierLockoutAttemptDeadline(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->deadline:J

    .line 227
    iget-wide v2, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->deadline:J

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->handleAttemptLockout(J)V

    goto :goto_0
.end method

.method private setPasswordEntryEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 186
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mInputContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 187
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mInputContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 184
    :cond_0
    return-void

    .line 187
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private updateLayout()V
    .locals 3

    .prologue
    .line 335
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 337
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_security_input_box_side_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 338
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_security_input_box_side_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 339
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    .end local v0    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    return-void
.end method

.method private verifyPasswordAndUnlock()V
    .locals 5

    .prologue
    .line 198
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 199
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "entry":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 205
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 206
    new-instance v3, Lcom/android/keyguard/KeyguardCarrierPasswordView$4;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView$4;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordView;)V

    .line 205
    const/4 v4, 0x1

    .line 204
    invoke-static {v1, v4, v0, v2, v3}, Lcom/android/internal/widget/LockPatternChecker;->checkRemoteLockPassword(Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 197
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 148
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 151
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 327
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 328
    iget v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 329
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->updateLayout()V

    .line 330
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCurrentOrientation:I

    .line 326
    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 274
    if-nez p3, :cond_4

    .line 275
    if-eqz p2, :cond_0

    .line 276
    const/4 v2, 0x6

    if-ne p2, v2, :cond_2

    .line 275
    :cond_0
    const/4 v1, 0x1

    .line 278
    .local v1, "isSoftImeEvent":Z
    :goto_0
    if-eqz p3, :cond_6

    .line 279
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v2}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v2

    .line 278
    if-eqz v2, :cond_6

    .line 280
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_5

    const/4 v0, 0x1

    .line 281
    .local v0, "isKeyboardEnterKey":Z
    :goto_1
    if-nez v1, :cond_1

    if-eqz v0, :cond_7

    .line 282
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->verifyPasswordAndUnlock()V

    .line 283
    const/4 v2, 0x1

    return v2

    .line 277
    .end local v0    # "isKeyboardEnterKey":Z
    .end local v1    # "isSoftImeEvent":Z
    :cond_2
    const/4 v2, 0x5

    if-ne p2, v2, :cond_3

    const/4 v1, 0x1

    .restart local v1    # "isSoftImeEvent":Z
    goto :goto_0

    .end local v1    # "isSoftImeEvent":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "isSoftImeEvent":Z
    goto :goto_0

    .line 274
    .end local v1    # "isSoftImeEvent":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "isSoftImeEvent":Z
    goto :goto_0

    .line 280
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "isKeyboardEnterKey":Z
    goto :goto_1

    .line 278
    .end local v0    # "isKeyboardEnterKey":Z
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "isKeyboardEnterKey":Z
    goto :goto_1

    .line 286
    :cond_7
    return v3
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 94
    sget v0, Lcom/android/keyguard/R$id;->passwordEntry:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    .line 95
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 96
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 98
    invoke-static {p0}, Lcom/android/keyguard/KeyguardMessageArea;->findSecurityMessageDisplay(Landroid/view/View;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 100
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 101
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 103
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 106
    sget v0, Lcom/android/keyguard/R$id;->input_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mInputContainer:Landroid/view/ViewGroup;

    .line 107
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCurrentOrientation:I

    .line 108
    sget v0, Lcom/android/keyguard/R$id;->password_entry_box:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntryBoxLayout:Landroid/view/ViewGroup;

    .line 109
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->updateLayout()V

    .line 113
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v1, Lcom/android/keyguard/KeyguardCarrierPasswordView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView$2;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v1, Lcom/android/keyguard/KeyguardCarrierPasswordView$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView$3;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 133
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->reset()V

    .line 91
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 244
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 245
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 246
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 248
    iput-object v3, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 243
    :cond_0
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mShowImeAtScreenOn:Z

    if-eqz v0, :cond_1

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mShowImeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 257
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->reset()V

    .line 253
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 154
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 171
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 173
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getCarrierLockoutAttemptDeadline(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->deadline:J

    .line 174
    iget-wide v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->deadline:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 175
    iget-wide v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->deadline:J

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->handleAttemptLockout(J)V

    .line 170
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 179
    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardCarrierPasswordView;->setPasswordEntryEnabled(Z)V

    goto :goto_0
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 136
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 140
    return-void
.end method

.method public showMessage(Ljava/lang/String;I)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 265
    return-void
.end method

.method public showPromptReason(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 261
    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    .prologue
    .line 290
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public updateChildViewsLook()V
    .locals 0

    .prologue
    .line 300
    return-void
.end method
