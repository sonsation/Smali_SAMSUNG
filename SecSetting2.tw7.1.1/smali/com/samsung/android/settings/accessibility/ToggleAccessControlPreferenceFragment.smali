.class public Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "ToggleAccessControlPreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$1;,
        Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;,
        Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$ImagePreference;
    }
.end annotation


# static fields
.field private static final KEY_USE_SCREEN_LOCK:Ljava/lang/CharSequence;


# instance fields
.field private mAccessControlExclusiveOptionsMessage:Ljava/lang/String;

.field private final mAccessControlUseObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mExclusiveOptionDialog:Landroid/app/AlertDialog;

.field private mImagePreference:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$ImagePreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mShownDialogId:I

.field protected mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field protected mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

.field private mUseScreenLockPreference:Landroid/preference/SwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mUseScreenLockPreference:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->isInteractionControlUseEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->isScreenLockUsed()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;Z)Z
    .locals 1
    .param p1, "isEnabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->setScreenLockUsed(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->setInteractionControlUseEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->setScreenLockUsedSetting(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;I)V
    .locals 0
    .param p1, "dialogId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->updateDisplay()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-string/jumbo v0, "use_screen_lock"

    sput-object v0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->KEY_USE_SCREEN_LOCK:Ljava/lang/CharSequence;

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 82
    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mExclusiveOptionDialog:Landroid/app/AlertDialog;

    .line 87
    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mContext:Landroid/content/Context;

    .line 97
    new-instance v0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$1;-><init>(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mAccessControlUseObserver:Landroid/database/ContentObserver;

    .line 468
    new-instance v0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;-><init>(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 66
    return-void
.end method

.method private getCurrentSecurityTitle()Ljava/lang/String;
    .locals 6

    .prologue
    const v5, 0x7f0b0abd

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 401
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 402
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 401
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 404
    .local v0, "quality":I
    sparse-switch v0, :sswitch_data_0

    .line 420
    :cond_0
    const v1, 0x7f0b036c

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 407
    :sswitch_0
    new-array v1, v4, [Ljava/lang/Object;

    .line 408
    const v2, 0x7f0b1479

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 407
    invoke-virtual {p0, v5, v1}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 412
    :sswitch_1
    new-array v1, v4, [Ljava/lang/Object;

    .line 413
    const v2, 0x7f0b147b

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 412
    invoke-virtual {p0, v5, v1}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 415
    :sswitch_2
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    new-array v1, v4, [Ljava/lang/Object;

    .line 417
    const v2, 0x7f0b1477

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 416
    invoke-virtual {p0, v5, v1}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 404
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method private installSwitchBarToggleSwitch()V
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    .line 237
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 235
    return-void
.end method

.method private isInteractionControlUseEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 342
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 343
    const-string/jumbo v2, "access_control_use"

    .line 342
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isScreenLockUsed()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 352
    const v2, 0x7f0b036c

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getCurrentSecurityTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 353
    .local v0, "def":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 354
    const-string/jumbo v3, "interaction_control_exit_locked"

    .line 353
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 352
    .end local v0    # "def":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "def":I
    goto :goto_0
.end method

.method private removeSwitchBarToggleSwitch()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 242
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 240
    return-void
.end method

.method private setInteractionControlUseEnabled(Z)V
    .locals 3
    .param p1, "isEnabled"    # Z

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "access_control_use"

    .line 348
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 347
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 346
    return-void

    .line 348
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setScreenLockUsed(Z)Z
    .locals 8
    .param p1, "isEnabled"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 358
    if-eqz p1, :cond_0

    .line 359
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 361
    .local v2, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 360
    invoke-virtual {v2, v5}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v4

    .line 362
    .local v4, "passwordQuality":I
    if-nez v4, :cond_0

    .line 363
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    .local v0, "chooseLockIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000

    .line 366
    .local v3, "miniumQuality":I
    const-string/jumbo v5, "minimum_quality"

    .line 365
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 368
    const-string/jumbo v5, "skipFingerprintPassword"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 370
    const/16 v5, 0x2b

    :try_start_0
    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :goto_0
    return v6

    .line 371
    :catch_0
    move-exception v1

    .line 372
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 377
    .end local v0    # "chooseLockIntent":Landroid/content/Intent;
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v3    # "miniumQuality":I
    .end local v4    # "passwordQuality":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->setScreenLockUsedSetting(Z)V

    .line 378
    return v7
.end method

.method private setScreenLockUsedSetting(Z)V
    .locals 3
    .param p1, "isEnabled"    # Z

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "interaction_control_exit_locked"

    .line 383
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 382
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 381
    return-void

    .line 383
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateDisplay()V
    .locals 5

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 325
    .local v2, "root":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->isInteractionControlUseEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 326
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mUseScreenLockPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 328
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mUseScreenLockPreference:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->isScreenLockUsed()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 331
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v1

    .line 332
    .local v1, "isShopDemo":Z
    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v0

    .line 333
    .local v0, "isLDUmodel":Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 334
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mUseScreenLockPreference:Landroid/preference/SwitchPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 322
    .end local v0    # "isLDUmodel":Z
    .end local v1    # "isShopDemo":Z
    :cond_1
    :goto_0
    return-void

    .line 337
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mUseScreenLockPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0365

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 143
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 145
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 146
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->isInteractionControlUseEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 147
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    .line 148
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->installSwitchBarToggleSwitch()V

    .line 138
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 388
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 389
    const/16 v2, 0x2b

    if-ne p1, v2, :cond_1

    .line 390
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 392
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 391
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 394
    .local v1, "validPassQuality":Z
    :cond_0
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->setScreenLockUsed(Z)Z

    .line 396
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mUseScreenLockPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 387
    .end local v0    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v1    # "validPassQuality":Z
    :cond_1
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const v4, 0x7f0f0366

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 298
    packed-switch p2, :pswitch_data_0

    .line 318
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 300
    :pswitch_0
    iget v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    if-ne v0, v3, :cond_1

    .line 301
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    .line 302
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "ToggleAccessControlPreferenceFragment"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->turnOnOffInteractionControl(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 303
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    .line 306
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "ToggleAccessControlPreferenceFragment"

    invoke-static {v0, v1, v3}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->turnOnOffInteractionControl(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 307
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_0

    .line 311
    :pswitch_1
    iget v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    if-ne v0, v3, :cond_2

    .line 312
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    goto :goto_0

    .line 313
    :cond_2
    iget v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    if-nez v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    goto :goto_0

    .line 298
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 196
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 197
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->updateDisplay()V

    .line 195
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mContext:Landroid/content/Context;

    .line 115
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b035a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 119
    :cond_0
    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->addPreferencesFromResource(I)V

    .line 121
    sget-object v0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->KEY_USE_SCREEN_LOCK:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mUseScreenLockPreference:Landroid/preference/SwitchPreference;

    .line 122
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mUseScreenLockPreference:Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$3;-><init>(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 130
    new-instance v0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$ImagePreference;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$ImagePreference;-><init>(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mImagePreference:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$ImagePreference;

    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mImagePreference:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$ImagePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 134
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 111
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 13
    .param p1, "dialogId"    # I

    .prologue
    .line 247
    const/4 v8, 0x0

    .line 248
    .local v8, "title":Ljava/lang/String;
    const/4 v7, 0x0

    .line 249
    .local v7, "message":Ljava/lang/String;
    const/4 v0, 0x0

    .line 250
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v6, 0x0

    .line 252
    .local v6, "mDialog":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 293
    const/4 v9, 0x0

    return-object v9

    .line 254
    :pswitch_0
    const/4 v9, 0x1

    iput v9, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    .line 255
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f0b036a

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 256
    .local v8, "title":Ljava/lang/String;
    const v9, 0x7f0b036b

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 257
    .local v7, "message":Ljava/lang/String;
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 258
    const/4 v10, 0x0

    .line 257
    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 259
    const v10, 0x7f0b050c

    .line 257
    invoke-virtual {v9, v10, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 260
    const/high16 v10, 0x1040000

    .line 257
    invoke-virtual {v9, v10, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 261
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 262
    .local v6, "mDialog":Landroid/app/Dialog;
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 263
    return-object v6

    .line 265
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    .local v6, "mDialog":Landroid/app/Dialog;
    .local v7, "message":Ljava/lang/String;
    .local v8, "title":Ljava/lang/String;
    :pswitch_1
    const/4 v9, 0x0

    iput v9, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    .line 266
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x1030132

    invoke-direct {v1, v9, v10}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 267
    .local v1, "ct":Landroid/view/ContextThemeWrapper;
    const-string/jumbo v9, "layout_inflater"

    invoke-virtual {v1, v9}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 268
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const v9, 0x7f04001b

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 269
    .local v4, "dialogView":Landroid/view/ViewGroup;
    const v9, 0x7f110111

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 270
    .local v3, "descText":Landroid/widget/TextView;
    const v9, 0x7f110112

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 271
    .local v2, "descList":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    .line 272
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f0b035a

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    .line 271
    const v11, 0x7f0b0339

    invoke-virtual {v9, v11, v10}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mAccessControlExclusiveOptionsMessage:Ljava/lang/String;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 276
    const/4 v10, 0x1

    .line 274
    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 276
    const v10, 0x104000a

    .line 274
    invoke-virtual {v9, v10, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 277
    const/high16 v10, 0x1040000

    .line 274
    invoke-virtual {v9, v10, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 278
    new-instance v10, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$5;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$5;-><init>(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)V

    .line 274
    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mExclusiveOptionDialog:Landroid/app/AlertDialog;

    .line 288
    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mExclusiveOptionDialog:Landroid/app/AlertDialog;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 289
    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mExclusiveOptionDialog:Landroid/app/AlertDialog;

    return-object v9

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 190
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    .line 191
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->removeSwitchBarToggleSwitch()V

    .line 189
    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$4;-><init>(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 202
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "InteractionControl"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 180
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 182
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mAccessControlUseObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mExclusiveOptionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mExclusiveOptionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mExclusiveOptionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 185
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 176
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 161
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 163
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "InteractionControl"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 166
    const-string/jumbo v1, "access_control_use"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 167
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mAccessControlUseObserver:Landroid/database/ContentObserver;

    .line 165
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 169
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 170
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->isInteractionControlUseEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 172
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->updateDisplay()V

    .line 160
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 153
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 152
    return-void
.end method