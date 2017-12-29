.class public Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "PersonalPageLockTypeFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private fromBackupKey:Z

.field getRequestCodeValue:I

.field private guideView:Landroid/view/View;

.field private mFingerCategory:Landroid/preference/PreferenceCategory;

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private mInlineHelp:Lcom/samsung/android/settings/UnclickablePreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockTypeCategory:Landroid/preference/Preference;

.field private mLockTypeFinger:Landroid/preference/SwitchPreference;

.field private mLockTypePassword:Landroid/preference/Preference;

.field private mLockTypePattern:Landroid/preference/Preference;

.field private mLockTypePin:Landroid/preference/Preference;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->fromBackupKey:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->verifySecuredLock()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->fromBackupKey:Z

    .line 46
    return-void
.end method

.method private StartChooseLockPassword(I)V
    .locals 10
    .param p1, "quality"    # I

    .prologue
    const/high16 v9, 0x20000

    const/4 v5, 0x4

    .line 324
    const-string/jumbo v6, "device_policy"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 325
    .local v0, "DPM":Landroid/app/admin/DevicePolicyManager;
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v4

    .line 327
    .local v4, "minLength":I
    if-ge v4, v5, :cond_0

    .line 328
    const/4 v4, 0x4

    .line 331
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v3

    .line 332
    .local v3, "maxLength":I
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-class v8, Lcom/android/settings/ChooseLockPassword;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 333
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "lockscreen.password_type"

    invoke-virtual {v1, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 334
    const-string/jumbo v6, "lockscreen.password_min"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 335
    const-string/jumbo v6, "lockscreen.password_max"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 336
    const-string/jumbo v6, "confirm_credentials"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 337
    const-string/jumbo v6, "from_personal"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 338
    if-ne p1, v9, :cond_2

    const/4 v2, 0x1

    .line 339
    .local v2, "mIsPin":Z
    :goto_0
    const-string/jumbo v6, "personal_mQuality"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 341
    if-ne p1, v9, :cond_1

    const/4 v5, 0x3

    .line 340
    :cond_1
    invoke-virtual {p0, v1, v5}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 322
    return-void

    .line 338
    .end local v2    # "mIsPin":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "mIsPin":Z
    goto :goto_0
.end method

.method private confirmFingerprintPassword(I)Z
    .locals 10
    .param p1, "request"    # I

    .prologue
    const v5, 0x7f0b0c65

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 255
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 257
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 258
    const-string/jumbo v4, "personal_mode_lock_type"

    .line 257
    invoke-static {v3, v4, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 259
    .local v0, "LockType":I
    const/4 v3, 0x5

    if-le v0, v3, :cond_0

    const/16 v3, 0x9

    if-ge v0, v3, :cond_0

    .line 260
    packed-switch v0, :pswitch_data_0

    .line 279
    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->identifyFinger(Landroid/os/Bundle;)I

    move-result v2

    .line 281
    .local v2, "result":I
    const/4 v3, -0x4

    if-ne v2, v3, :cond_1

    .line 282
    return v8

    .line 262
    .end local v2    # "result":I
    :pswitch_0
    const-string/jumbo v3, "button_name"

    .line 263
    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b147b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 262
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 266
    :pswitch_1
    const-string/jumbo v3, "button_name"

    .line 267
    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b1477

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 266
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :pswitch_2
    const-string/jumbo v3, "button_name"

    .line 271
    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b1479

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 270
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 283
    .restart local v2    # "result":I
    :cond_1
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 284
    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 285
    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 287
    :cond_2
    return v8

    .line 289
    :cond_3
    return v9

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private confirmPassword(III)Z
    .locals 6
    .param p1, "LockType"    # I
    .param p2, "quality"    # I
    .param p3, "request"    # I

    .prologue
    const/4 v5, 0x1

    .line 310
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/settings/ConfirmLockPassword;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 312
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000

    if-ne p2, v2, :cond_0

    const/4 v1, 0x1

    .line 314
    .local v1, "mIsPin":Z
    :goto_0
    const-string/jumbo v2, "personal_mQuality"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 315
    const-string/jumbo v2, "from_personal"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 317
    invoke-virtual {p0, v0, p3}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 318
    return v5

    .line 312
    .end local v1    # "mIsPin":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "mIsPin":Z
    goto :goto_0
.end method

.method private confirmPattern(I)Z
    .locals 5
    .param p1, "request"    # I

    .prologue
    const/4 v4, 0x1

    .line 294
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->savedPrivateModePasswordExists(Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 295
    const/4 v1, 0x0

    return v1

    .line 298
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/ConfirmLockPattern;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 299
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "from_personal"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 303
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 304
    return v4
.end method

.method private identifyFinger(Landroid/os/Bundle;)I
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 469
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;-><init>(Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;)V

    invoke-virtual {v1, v2, v3, p1}, Lcom/samsung/android/fingerprint/FingerprintManager;->identifyWithDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)I

    move-result v0

    .line 535
    .local v0, "result":I
    return v0
.end method

.method private switchChangedFingerprint(Z)V
    .locals 4
    .param p1, "isChceked"    # Z

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 541
    const-string/jumbo v2, "personal_mode_lock_type"

    const/4 v3, 0x0

    .line 540
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 543
    .local v0, "LockType":I
    if-eqz p1, :cond_0

    .line 545
    packed-switch v0, :pswitch_data_0

    .line 577
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 578
    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 579
    const-string/jumbo v2, "personal_mode_lock_type"

    .line 578
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 538
    return-void

    .line 547
    :pswitch_0
    const/4 v0, 0x6

    .line 548
    goto :goto_0

    .line 550
    :pswitch_1
    const/4 v0, 0x7

    .line 551
    goto :goto_0

    .line 553
    :pswitch_2
    const/16 v0, 0x8

    .line 554
    goto :goto_0

    .line 561
    :cond_0
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 563
    :pswitch_3
    const/4 v0, 0x2

    .line 564
    goto :goto_0

    .line 566
    :pswitch_4
    const/4 v0, 0x3

    .line 567
    goto :goto_0

    .line 569
    :pswitch_5
    const/4 v0, 0x4

    .line 570
    goto :goto_0

    .line 545
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 561
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private verifySecuredLock()V
    .locals 7

    .prologue
    const/high16 v6, 0x40000

    const/high16 v5, 0x20000

    const/4 v4, 0x0

    const/16 v3, 0xb

    .line 220
    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 221
    const-string/jumbo v2, "personal_mode_lock_type"

    .line 220
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 223
    .local v0, "LockType":I
    packed-switch v0, :pswitch_data_0

    .line 219
    :goto_0
    return-void

    .line 225
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->confirmPattern(I)Z

    goto :goto_0

    .line 228
    :pswitch_1
    invoke-direct {p0, v0, v5, v3}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->confirmPassword(III)Z

    goto :goto_0

    .line 231
    :pswitch_2
    invoke-direct {p0, v0, v6, v3}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->confirmPassword(III)Z

    goto :goto_0

    .line 237
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->fromBackupKey:Z

    if-eqz v1, :cond_2

    .line 240
    :cond_0
    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 241
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->confirmPattern(I)Z

    .line 248
    :cond_1
    :goto_1
    iput-boolean v4, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->fromBackupKey:Z

    goto :goto_0

    .line 238
    :cond_2
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->confirmFingerprintPassword(I)Z

    goto :goto_1

    .line 242
    :cond_3
    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 243
    invoke-direct {p0, v0, v5, v3}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->confirmPassword(III)Z

    goto :goto_1

    .line 244
    :cond_4
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 245
    invoke-direct {p0, v0, v6, v3}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->confirmPassword(III)Z

    goto :goto_1

    .line 223
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0303

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public initPref()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 191
    const-string/jumbo v1, "personalpage_inline_help"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/UnclickablePreference;

    iput-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mInlineHelp:Lcom/samsung/android/settings/UnclickablePreference;

    .line 192
    const-string/jumbo v1, "locktype_category"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeCategory:Landroid/preference/Preference;

    .line 193
    const-string/jumbo v1, "personalpage_locktype_pattern"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypePattern:Landroid/preference/Preference;

    .line 194
    const-string/jumbo v1, "personalpage_locktype_pin"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypePin:Landroid/preference/Preference;

    .line 195
    const-string/jumbo v1, "personalpage_locktype_password"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypePassword:Landroid/preference/Preference;

    .line 196
    const-string/jumbo v1, "peraonlpage_finger_category"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mFingerCategory:Landroid/preference/PreferenceCategory;

    .line 197
    const-string/jumbo v1, "personalpage_locktype_fingerprint"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    .line 199
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 201
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mInlineHelp:Lcom/samsung/android/settings/UnclickablePreference;

    const v2, 0x7f0b0c5c

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/UnclickablePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 204
    .local v0, "arguments":Landroid/os/Bundle;
    const-string/jumbo v1, "firstStart"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getRequestCodeValue:I

    .line 206
    iget v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getRequestCodeValue:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mInlineHelp:Lcom/samsung/android/settings/UnclickablePreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeCategory:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 213
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mFingerCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 215
    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 189
    :cond_0
    return-void

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 117
    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 118
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0401eb

    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->guideView:Landroid/view/View;

    .line 119
    iget-object v3, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->guideView:Landroid/view/View;

    const v4, 0x7f11060a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 120
    .local v2, "linkTextView":Landroid/widget/TextView;
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0c6a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 121
    .local v0, "content":Landroid/text/SpannableString;
    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v0, v3, v5, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 122
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    new-instance v3, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$1;-><init>(Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->guideView:Landroid/view/View;

    invoke-virtual {v3, v4, v6, v5}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 138
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 114
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 376
    const-string/jumbo v3, "PersonalPageLockTypeFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", received - resultCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    .line 378
    .local v1, "SettingsActivity":Lcom/android/settings/SettingsActivity;
    const/4 v2, 0x0

    .line 380
    .local v2, "bSuccess":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 381
    const-string/jumbo v4, "personal_mode_lock_type"

    .line 380
    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 383
    .local v0, "LockType":I
    sparse-switch p1, :sswitch_data_0

    .line 375
    :goto_0
    return-void

    .line 387
    :sswitch_0
    if-lez p2, :cond_0

    .line 388
    if-lt v0, v8, :cond_1

    .line 389
    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "personal_mode_lock_type"

    const/4 v5, 0x6

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 393
    :goto_1
    const/4 v2, 0x1

    .line 396
    :cond_0
    invoke-virtual {v1, p0, v2, v7}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    .line 391
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "personal_mode_lock_type"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 401
    :sswitch_1
    if-eqz p2, :cond_2

    .line 402
    if-lt v0, v8, :cond_4

    .line 403
    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "personal_mode_lock_type"

    .line 404
    const/4 v3, 0x3

    if-ne p1, v3, :cond_3

    const/4 v3, 0x7

    .line 403
    :goto_2
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 408
    :goto_3
    const/4 v2, 0x1

    .line 411
    :cond_2
    invoke-virtual {v1, p0, v2, v7}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    .line 404
    :cond_3
    const/16 v3, 0x8

    goto :goto_2

    .line 406
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "personal_mode_lock_type"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 415
    :sswitch_2
    const/4 v3, -0x1

    if-ne p2, v3, :cond_5

    .line 417
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->switchChangedFingerprint(Z)V

    goto :goto_0

    .line 420
    :cond_5
    invoke-virtual {v1, p0, v2, v7}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    .line 426
    :sswitch_3
    if-eqz p2, :cond_6

    .line 427
    const-string/jumbo v3, "PersonalPageLockTypeFragment"

    const-string/jumbo v4, "CONFIRM_REQUEST_ENTER success"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 429
    :cond_6
    const-string/jumbo v3, "PersonalPageLockTypeFragment"

    const-string/jumbo v4, "Failed to CONFIRM_REQUEST_ENTER"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/4 v2, -0x1

    .line 431
    invoke-virtual {v1, p0, v2, v7}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    .line 437
    :sswitch_4
    const-string/jumbo v3, "PersonalPageLockTypeFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "FOR_PRIVATE_MODE_BACKUP_KEY  Result Code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    if-eqz p2, :cond_7

    .line 440
    const/4 v2, 0x1

    .line 442
    :cond_7
    invoke-virtual {v1, p0, v2, v7}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 383
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0xb -> :sswitch_3
        0x3ec -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 95
    const v0, 0x7f0800c1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->addPreferencesFromResource(I)V

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b085a

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->finish()V

    .line 99
    return-void

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->verifySecuredLock()V

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->initPref()V

    .line 91
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    const v1, 0x7f0401ea

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 108
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0b0c4f

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 110
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 179
    const-string/jumbo v0, "PersonalPageLockTypeFragment"

    const-string/jumbo v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 178
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 350
    iget-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->switchChangedFingerprint(Z)V

    .line 353
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 360
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypePattern:Landroid/preference/Preference;

    invoke-virtual {p2, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/ChooseLockPattern;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 362
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "from_personal"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 363
    const-string/jumbo v1, "key_lock_method"

    const-string/jumbo v2, "pattern"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 371
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 365
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypePin:Landroid/preference/Preference;

    invoke-virtual {p2, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 366
    const/high16 v1, 0x20000

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->StartChooseLockPassword(I)V

    goto :goto_0

    .line 367
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypePassword:Landroid/preference/Preference;

    invoke-virtual {p2, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    const/high16 v1, 0x40000

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->StartChooseLockPassword(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 143
    const-string/jumbo v1, "PersonalPageLockTypeFragment"

    const-string/jumbo v2, "onResume() "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 145
    const-string/jumbo v2, "personal_mode_lock_type"

    .line 144
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 146
    .local v0, "LockType":I
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 147
    if-le v0, v5, :cond_1

    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 157
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v1

    if-nez v1, :cond_4

    .line 158
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    const v2, 0x7f0b0c68

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 159
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 174
    :cond_0
    :goto_1
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 142
    return-void

    .line 149
    :cond_1
    if-nez v0, :cond_2

    .line 150
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 151
    :cond_2
    if-ne v0, v5, :cond_3

    .line 152
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 153
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 155
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 162
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->guideView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 163
    iget v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getRequestCodeValue:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_5

    .line 164
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 168
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    const v2, 0x7f0b0c67

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 169
    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->guideView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_1

    .line 166
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 185
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStop()V

    .line 186
    const-string/jumbo v0, "PersonalPageLockTypeFragment"

    const-string/jumbo v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void
.end method
