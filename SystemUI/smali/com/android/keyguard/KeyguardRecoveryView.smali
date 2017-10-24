.class public Lcom/android/keyguard/KeyguardRecoveryView;
.super Lcom/android/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardRecoveryView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardRecoveryView$1;
    }
.end annotation


# instance fields
.field private final mDisappearYTranslation:I

.field private mEntry:Ljava/lang/String;

.field private mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordEntryDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

.field private final mShowImeAtScreenOn:Z

.field final watcher:Landroid/text/SpanWatcher;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardRecoveryView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardRecoveryView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mShowImeAtScreenOn:Z

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardRecoveryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 310
    new-instance v0, Lcom/android/keyguard/KeyguardRecoveryView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardRecoveryView$1;-><init>(Lcom/android/keyguard/KeyguardRecoveryView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->watcher:Landroid/text/SpanWatcher;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 88
    sget v1, Lcom/android/keyguard/R$bool;->kg_show_ime_at_screen_on:I

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mShowImeAtScreenOn:Z

    .line 89
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRecoveryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 90
    sget v1, Lcom/android/keyguard/R$dimen;->disappear_y_translation:I

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mDisappearYTranslation:I

    .line 92
    const v0, 0x10c000e

    .line 91
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 94
    const v0, 0x10c000f

    .line 93
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 85
    return-void
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 12
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "shouldIncludeAuxiliarySubtypes"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 236
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 239
    .local v1, "enabledImis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .line 241
    .local v2, "filteredImisCount":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "imi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 243
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-le v2, v9, :cond_1

    return v9

    .line 245
    :cond_1
    invoke-virtual {p1, v3, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 247
    .local v8, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 248
    add-int/lit8 v2, v2, 0x1

    .line 249
    goto :goto_0

    .line 252
    :cond_2
    const/4 v0, 0x0

    .line 253
    .local v0, "auxCount":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "subtype$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    .line 254
    .local v6, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 255
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 258
    .end local v6    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v5, v11, v0

    .line 263
    .local v5, "nonAuxCount":I
    if-gtz v5, :cond_5

    if-eqz p2, :cond_0

    if-le v0, v9, :cond_0

    .line 264
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 265
    goto :goto_0

    .line 269
    .end local v0    # "auxCount":I
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v5    # "nonAuxCount":I
    .end local v7    # "subtype$iterator":Ljava/util/Iterator;
    .end local v8    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    if-gt v2, v9, :cond_7

    .line 272
    const/4 v11, 0x0

    invoke-virtual {p1, v11, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v9, :cond_8

    .line 269
    :cond_7
    :goto_2
    return v9

    :cond_8
    move v9, v10

    .line 272
    goto :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 347
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRecoveryView;->onUserInput()V

    .line 344
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 332
    :cond_0
    return-void
.end method

.method protected getPasswordText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 110
    sget v0, Lcom/android/keyguard/R$id;->passwordEntry:I

    return v0
.end method

.method protected getPromptReasonStringRes(I)I
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    .prologue
    .line 282
    sget v0, Lcom/android/keyguard/R$string;->kg_incorrect_password:I

    return v0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 355
    if-nez p3, :cond_4

    .line 356
    if-eqz p2, :cond_0

    .line 357
    const/4 v2, 0x6

    if-ne p2, v2, :cond_2

    .line 356
    :cond_0
    const/4 v1, 0x1

    .line 359
    .local v1, "isSoftImeEvent":Z
    :goto_0
    if-eqz p3, :cond_6

    .line 360
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-static {v2}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v2

    .line 359
    if-eqz v2, :cond_6

    .line 361
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_5

    const/4 v0, 0x1

    .line 362
    .local v0, "isKeyboardEnterKey":Z
    :goto_1
    if-nez v1, :cond_1

    if-eqz v0, :cond_7

    .line 363
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRecoveryView;->verifyPasswordAndUnlock()V

    .line 364
    const/4 v2, 0x1

    return v2

    .line 358
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

    .line 355
    .end local v1    # "isSoftImeEvent":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "isSoftImeEvent":Z
    goto :goto_0

    .line 361
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "isKeyboardEnterKey":Z
    goto :goto_1

    .line 359
    .end local v0    # "isKeyboardEnterKey":Z
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "isKeyboardEnterKey":Z
    goto :goto_1

    .line 366
    :cond_7
    return v3
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 155
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    .line 157
    const/4 v0, 0x0

    .line 159
    .local v0, "imeOrDeleteButtonVisible":Z
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRecoveryView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 160
    const-string/jumbo v3, "input_method"

    .line 159
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 162
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRecoveryView;->getPasswordTextViewId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardRecoveryView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    .line 163
    new-instance v2, Lcom/android/internal/widget/TextViewInputDisabler;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntryDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    .line 164
    iget-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 165
    iget-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v3, 0x81

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 167
    iget-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 168
    iget-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 169
    iget-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardRecoveryView;->watcher:Landroid/text/SpanWatcher;

    const/16 v4, 0x11

    invoke-interface {v2, v3, v5, v5, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 172
    iget-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v3, Lcom/android/keyguard/KeyguardRecoveryView$3;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardRecoveryView$3;-><init>(Lcom/android/keyguard/KeyguardRecoveryView;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 182
    iget-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    .line 185
    sget v2, Lcom/android/keyguard/R$id;->switch_ime_button:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardRecoveryView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 186
    .local v1, "switchImeButton":Landroid/view/View;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0, v2, v5}, Lcom/android/keyguard/KeyguardRecoveryView;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 188
    const/4 v0, 0x1

    .line 189
    new-instance v2, Lcom/android/keyguard/KeyguardRecoveryView$4;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardRecoveryView$4;-><init>(Lcom/android/keyguard/KeyguardRecoveryView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    :cond_0
    return-void
.end method

.method protected onPasswordChecked(IZIZ)V
    .locals 11
    .param p1, "userId"    # I
    .param p2, "matched"    # Z
    .param p3, "timeoutMs"    # I
    .param p4, "isValidPassword"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 403
    const-string/jumbo v8, "KeyguardRecoveryView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onPasswordChecked "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    if-eqz p2, :cond_0

    .line 405
    iget-object v8, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    .line 406
    .local v2, "mDPM":Landroid/app/admin/DevicePolicyManager;
    iget-object v8, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v5

    .line 407
    .local v5, "quality":I
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v4

    .line 408
    .local v4, "minLength":I
    invoke-virtual {v2, v5}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v3

    .line 409
    .local v3, "maxLength":I
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v8, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 410
    .local v1, "it":Landroid/content/Intent;
    const-string/jumbo v8, "com.android.settings"

    const-string/jumbo v9, "com.android.settings.ChooseLockPassword"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    const-string/jumbo v8, "lockscreen.password_type"

    invoke-virtual {v1, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 412
    const-string/jumbo v8, "lockscreen.password_min"

    invoke-virtual {v1, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 413
    const-string/jumbo v8, "lockscreen.password_max"

    invoke-virtual {v1, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 414
    const-string/jumbo v8, "lockscreen.password_old"

    iget-object v9, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mEntry:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    const-string/jumbo v8, "confirm_credentials"

    invoke-virtual {v1, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 416
    const-string/jumbo v8, "isRecovery"

    invoke-virtual {v1, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 417
    const/high16 v8, 0x10000000

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 418
    const/high16 v8, 0x400000

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 419
    const/high16 v8, 0x800000

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 421
    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRecoveryView;->getContext()Landroid/content/Context;

    move-result-object v8

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v8, v1, v9}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :goto_0
    iget-object v8, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v8, p1, v7, v6}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    .line 427
    iget-object v8, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v8, v7}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 431
    .end local v1    # "it":Landroid/content/Intent;
    .end local v2    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .end local v3    # "maxLength":I
    .end local v4    # "minLength":I
    .end local v5    # "quality":I
    :goto_1
    if-eqz p2, :cond_1

    :goto_2
    invoke-virtual {p0, v7, v6}, Lcom/android/keyguard/KeyguardRecoveryView;->resetPasswordText(ZZ)V

    .line 402
    return-void

    .line 422
    .restart local v1    # "it":Landroid/content/Intent;
    .restart local v2    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .restart local v3    # "maxLength":I
    .restart local v4    # "minLength":I
    .restart local v5    # "quality":I
    :catch_0
    move-exception v0

    .line 423
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 429
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "it":Landroid/content/Intent;
    .end local v2    # "mDPM":Landroid/app/admin/DevicePolicyManager;
    .end local v3    # "maxLength":I
    .end local v4    # "minLength":I
    .end local v5    # "quality":I
    :cond_0
    iget-object v8, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/util/KeyguardReset;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardReset;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/keyguard/util/KeyguardReset;->wipeOut(I)V

    goto :goto_1

    :cond_1
    move v6, v7

    .line 431
    goto :goto_2
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 143
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onPause()V

    .line 144
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRecoveryView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 142
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onResume(I)V

    .line 123
    new-instance v0, Lcom/android/keyguard/KeyguardRecoveryView$2;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/KeyguardRecoveryView$2;-><init>(Lcom/android/keyguard/KeyguardRecoveryView;I)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardRecoveryView;->post(Ljava/lang/Runnable;)Z

    .line 119
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRecoveryView;->watcher:Landroid/text/SpanWatcher;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x11

    invoke-interface {v0, v1, v3, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 339
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->reset()V

    .line 150
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 148
    return-void
.end method

.method protected resetPasswordText(ZZ)V
    .locals 2
    .param p1, "animate"    # Z
    .param p2, "announce"    # Z

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mEntry:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mEntry:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    :cond_1
    return-void
.end method

.method protected resetState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 99
    iget-object v1, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v2, Lcom/android/keyguard/R$string;->kg_none_recovery_none_instructions:I

    invoke-interface {v1, v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 100
    iget-object v1, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    .line 101
    .local v0, "wasEnabled":Z
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardRecoveryView;->setPasswordEntryEnabled(Z)V

    .line 102
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardRecoveryView;->setPasswordEntryInputEnabled(Z)V

    .line 103
    if-eqz v0, :cond_0

    .line 104
    iget-object v1, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 98
    :cond_0
    return-void
.end method

.method protected setPasswordEntryEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 218
    return-void
.end method

.method protected setPasswordEntryInputEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPasswordEntryDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 223
    return-void
.end method

.method public startAppearAnimation()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 290
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardRecoveryView;->setAlpha(F)V

    .line 291
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardRecoveryView;->setTranslationY(F)V

    .line 292
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRecoveryView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 293
    const/high16 v1, 0x3f800000    # 1.0f

    .line 292
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 295
    const-wide/16 v2, 0x12c

    .line 292
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 296
    iget-object v1, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 292
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 289
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 4
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRecoveryView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 302
    const/4 v1, 0x0

    .line 301
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 303
    iget v1, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mDisappearYTranslation:I

    int-to-float v1, v1

    .line 301
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 301
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 305
    const-wide/16 v2, 0x64

    .line 301
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 307
    const/4 v0, 0x1

    return v0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 371
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardRecoveryView;->getPasswordText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mEntry:Ljava/lang/String;

    .line 372
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardRecoveryView;->setPasswordEntryInputEnabled(Z)V

    .line 373
    iget-object v1, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    .line 374
    iget-object v1, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {v1, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 377
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 379
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mEntry:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    .line 382
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardRecoveryView;->setPasswordEntryInputEnabled(Z)V

    .line 383
    invoke-virtual {p0, v0, v3, v3, v3}, Lcom/android/keyguard/KeyguardRecoveryView;->onPasswordChecked(IZIZ)V

    .line 384
    return-void

    .line 388
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 389
    iget-object v2, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mEntry:Ljava/lang/String;

    .line 390
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 391
    new-instance v4, Lcom/android/keyguard/KeyguardRecoveryView$5;

    invoke-direct {v4, p0, v0}, Lcom/android/keyguard/KeyguardRecoveryView$5;-><init>(Lcom/android/keyguard/KeyguardRecoveryView;I)V

    .line 387
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardRecoveryView;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 370
    return-void
.end method
