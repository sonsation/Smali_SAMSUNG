.class public Lcom/android/keyguard/KeyguardFMMView;
.super Lcom/android/keyguard/KeyguardPINView;
.source "KeyguardFMMView.java"


# instance fields
.field private mCallButton:Landroid/widget/ImageButton;

.field private mInfoView:Landroid/widget/LinearLayout;

.field private mIsVoiceCapacity:Z

.field private mOwnerContactInfo:Landroid/widget/TextView;

.field private mOwnerMessage:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardFMMView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFMMView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardFMMView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method private setFMMInfo()V
    .locals 7

    .prologue
    const/16 v4, 0x8

    const/4 v6, 0x0

    .line 158
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/util/SettingsHelper;->getFMMMessage()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "ownerMessage":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/util/SettingsHelper;->getFMMPhone()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "phoneNumber":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerMessage:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 162
    const-string/jumbo v2, "\\r\\n|\\r|\\n"

    const-string/jumbo v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerContactInfo:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mCallButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_2

    .line 167
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mIsVoiceCapacity:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 186
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerContactInfo:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 157
    :cond_2
    :goto_0
    return-void

    .line 168
    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerContactInfo:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardFMMView;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$string;->keyguard_fmm_owner_phone:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mCallButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/keyguard/KeyguardFMMView$2;

    invoke-direct {v3, p0, v1}, Lcom/android/keyguard/KeyguardFMMView$2;-><init>(Lcom/android/keyguard/KeyguardFMMView;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerContactInfo:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 139
    sget v0, Lcom/android/keyguard/R$id;->fmmEntry:I

    return v0
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    .prologue
    .line 145
    sget v0, Lcom/android/keyguard/R$string;->kg_incorrect_pin:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v5, 0x2

    .line 105
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPINView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->kg_fmm_locked_area_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 107
    .local v1, "infoAreaWidth":I
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->kg_fmm_info_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 108
    .local v0, "infoAreaMarginTop":I
    iget-object v3, p0, Lcom/android/keyguard/KeyguardFMMView;->mInfoView:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 109
    iget-object v3, p0, Lcom/android/keyguard/KeyguardFMMView;->mInfoView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 111
    .local v2, "infoViewAreaLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 112
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 113
    iget-object v3, p0, Lcom/android/keyguard/KeyguardFMMView;->mInfoView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 115
    iget-object v3, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerMessage:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 104
    .end local v2    # "infoViewAreaLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 116
    .restart local v2    # "infoViewAreaLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_0

    .line 117
    iget-object v3, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerMessage:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 69
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPINView;->onFinishInflate()V

    .line 70
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardFMMView;->mIsVoiceCapacity:Z

    .line 71
    sget v1, Lcom/android/keyguard/R$id;->fmm_info_area:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardFMMView;->mInfoView:Landroid/widget/LinearLayout;

    .line 72
    sget v1, Lcom/android/keyguard/R$id;->keyguard_fmm_phone_locked:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardFMMView;->mTitle:Landroid/widget/TextView;

    .line 73
    sget v1, Lcom/android/keyguard/R$id;->keyguard_fmm_message:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerMessage:Landroid/widget/TextView;

    .line 74
    sget v1, Lcom/android/keyguard/R$id;->keyguard_fmm_owner_phone_num:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardFMMView;->mOwnerContactInfo:Landroid/widget/TextView;

    .line 75
    sget v1, Lcom/android/keyguard/R$id;->keyguard_fmm_emergency_btn:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardFMMView;->mCallButton:Landroid/widget/ImageButton;

    .line 77
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMView;->mTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFMMView;->mTitle:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 80
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFMMView;->setFMMInfo()V

    .line 82
    sget v1, Lcom/android/keyguard/R$id;->key_enter:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardFMMView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, "ok":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 84
    new-instance v1, Lcom/android/keyguard/KeyguardFMMView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardFMMView$1;-><init>(Lcom/android/keyguard/KeyguardFMMView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    :cond_1
    return-void
.end method

.method protected onPasswordChecked(IZIZ)V
    .locals 9
    .param p1, "userId"    # I
    .param p2, "matched"    # Z
    .param p3, "timeoutMs"    # I
    .param p4, "isValidPassword"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 227
    sget-boolean v6, Lcom/android/keyguard/KeyguardRune;->SUPPORT_AOSP_LOCKOUT:Z

    if-eqz v6, :cond_0

    .line 228
    const-string/jumbo v6, "KeyguardFMMView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onPatternChecked "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_0
    if-eqz p2, :cond_3

    .line 231
    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7, p1}, Lcom/android/internal/widget/LockPatternUtils;->saveRemoteLockPassword(ILjava/lang/String;I)V

    .line 232
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.Keyguard.UNLOCK_FMM_ALERT"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .local v1, "intent":Landroid/content/Intent;
    const/16 v6, 0x20

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 234
    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.SEND_SMS"

    invoke-virtual {v6, v1, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 235
    const-string/jumbo v6, "KeyguardFMMView"

    const-string/jumbo v7, "send Broadcast : com.samsung.Keyguard.UNLOCK_FMM_ALERT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 238
    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    .line 260
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    if-eqz p2, :cond_7

    :goto_1
    invoke-virtual {p0, v5, v4}, Lcom/android/keyguard/KeyguardFMMView;->resetPasswordText(ZZ)V

    .line 226
    return-void

    .line 240
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6, v5}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_0

    .line 243
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    const-wide/16 v2, 0x0

    .line 244
    .local v2, "deadline":J
    if-eqz p4, :cond_5

    .line 245
    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->addFailedFMMUnlockAttempt(I)I

    .line 246
    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedFMMUnlockAttempt(I)I

    move-result v0

    .line 247
    .local v0, "attempts":I
    const/4 v6, 0x5

    if-eq v0, v6, :cond_4

    const/16 v6, 0x9

    if-le v0, v6, :cond_5

    .line 248
    :cond_4
    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 255
    .end local v0    # "attempts":I
    :cond_5
    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-nez v6, :cond_1

    .line 256
    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->getWrongPasswordStringId()I

    move-result v7

    invoke-interface {v6, v7, v5}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 257
    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v6}, Lcom/android/keyguard/SecurityMessageDisplay;->displayFailedAnimation()V

    goto :goto_0

    .line 250
    .restart local v0    # "attempts":I
    :cond_6
    iget-object v6, p0, Lcom/android/keyguard/KeyguardFMMView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v7

    const/16 v8, 0x7530

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v2

    .line 252
    invoke-virtual {p0, v2, v3}, Lcom/android/keyguard/KeyguardFMMView;->handleAttemptLockout(J)V

    goto :goto_2

    .end local v0    # "attempts":I
    .end local v2    # "deadline":J
    :cond_7
    move v4, v5

    .line 260
    goto :goto_1
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 153
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPINView;->onPause()V

    .line 154
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFMMView;->setFMMInfo()V

    .line 152
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 98
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 99
    .local v0, "deadline":J
    if-eqz p1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v3, Lcom/android/keyguard/R$string;->kg_pin_instructions:I

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 97
    :cond_0
    return-void
.end method

.method protected resetState()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 123
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPINView;->resetState()V

    .line 124
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFMMView;->setFMMInfo()V

    .line 125
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    if-nez v2, :cond_1

    .line 126
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 127
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 128
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardFMMView;->handleAttemptLockout(J)V

    .line 122
    .end local v0    # "deadline":J
    :goto_0
    return-void

    .line 130
    .restart local v0    # "deadline":J
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v3, Lcom/android/keyguard/R$string;->kg_pin_instructions:I

    invoke-interface {v2, v3, v5}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0

    .line 133
    .end local v0    # "deadline":J
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardFMMView;->mContext:Landroid/content/Context;

    const v4, 0x10409cc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 193
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardFMMView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "entry":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardFMMView;->setPasswordEntryInputEnabled(Z)V

    .line 195
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mPendingLockCheck:Landroid/os/AsyncTask;

    invoke-virtual {v2, v5}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 199
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 201
    .local v1, "userId":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_1

    .line 204
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardFMMView;->setPasswordEntryInputEnabled(Z)V

    .line 205
    invoke-virtual {p0, v1, v5, v5, v5}, Lcom/android/keyguard/KeyguardFMMView;->onPasswordChecked(IZIZ)V

    .line 206
    return-void

    .line 210
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 213
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 214
    new-instance v4, Lcom/android/keyguard/KeyguardFMMView$3;

    invoke-direct {v4, p0, v1}, Lcom/android/keyguard/KeyguardFMMView$3;-><init>(Lcom/android/keyguard/KeyguardFMMView;I)V

    .line 209
    invoke-static {v2, v5, v0, v3, v4}, Lcom/android/internal/widget/LockPatternChecker;->checkRemoteLockPassword(Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardFMMView;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 192
    return-void
.end method
