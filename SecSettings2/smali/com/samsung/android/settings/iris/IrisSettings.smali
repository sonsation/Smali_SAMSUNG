.class public Lcom/samsung/android/settings/iris/IrisSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "IrisSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/SettingsActivity$onEditButtonClicked;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/iris/IrisSettings$1;
    }
.end annotation


# instance fields
.field private mChangeBackupPassword:Landroid/preference/PreferenceScreen;

.field private mContext:Landroid/content/Context;

.field private mIrisFeatureCategory:Landroid/preference/PreferenceCategory;

.field private mIrisManageCategory:Landroid/preference/PreferenceCategory;

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mIrisPreviewStyle:Landroid/preference/PreferenceScreen;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMyIrises:Lcom/samsung/android/settings/iris/IrisPreference;

.field private mRegisterIriese:Landroid/preference/PreferenceScreen;

.field private mRemovalCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

.field private mSamsungAccount:Landroid/preference/SwitchPreference;

.field private mSamsungPass:Landroid/preference/PreferenceScreen;

.field private mSamsungPay:Landroid/preference/PreferenceScreen;

.field private mScreenLock:Landroid/preference/SwitchPreference;

.field private mTipsForIris:Landroid/preference/PreferenceScreen;

.field private mToken:[B

.field private mUseIrisFirstLock:Landroid/preference/SwitchPreference;

.field private mWebSignIn:Landroid/preference/SwitchPreference;

.field private samsungaccount_objvalue:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/iris/IrisSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->samsungaccount_objvalue:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/iris/IrisSettings;I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/iris/IrisSettings;Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisVerification(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/iris/IrisSettings;I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/iris/IrisSettings;->setUseIrisSA(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->samsungaccount_objvalue:Z

    .line 729
    new-instance v0, Lcom/samsung/android/settings/iris/IrisSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/iris/IrisSettings$1;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mRemovalCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    .line 61
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 3

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 352
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 353
    const-string/jumbo v1, "IrisSettings"

    const-string/jumbo v2, "createPreferenceHierarchy : remove all"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 357
    :cond_0
    const v1, 0x7f080089

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/IrisSettings;->addPreferencesFromResource(I)V

    .line 358
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1, p0}, Lcom/android/settings/SettingsActivity;->setOnEditPressedListener(Lcom/android/settings/SettingsActivity$onEditButtonClicked;)V

    .line 359
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisPreference()V

    .line 360
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->updateEditbtn()V

    .line 361
    return-object v0
.end method

.method private getIrisSAConfirmed()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 839
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "iris_samsungaccount_confirmed"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 840
    .local v0, "result":Z
    :goto_0
    const-string/jumbo v1, "IrisSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIrisSAConfirmed :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    return v0

    .line 839
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method private getIrisVerification()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 868
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "iris_webpass"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 869
    .local v0, "result":Z
    :goto_0
    const-string/jumbo v1, "IrisSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIrisVerification :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    return v0

    .line 868
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method private getIrisesSupportingFeatures()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 914
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/iris/IrisSettings;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getUseIrisSA()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getIrisSAConfirmed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 915
    return v1

    .line 916
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getIrisVerification()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 917
    return v1

    .line 919
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getUseIrisSA()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 857
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "iris_used_samsungaccount"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 858
    .local v0, "result":Z
    :goto_0
    const-string/jumbo v1, "IrisSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getUseIrisSA : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    return v0

    .line 857
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method private isIrisEnrolled()Z
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSamsungAccountSignedIn(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 826
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 827
    .local v0, "manager":Landroid/accounts/AccountManager;
    const-string/jumbo v2, "com.osp.app.signin"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 829
    .local v1, "samsungAccnts":[Landroid/accounts/Account;
    array-length v2, v1

    if-lez v2, :cond_0

    .line 830
    const-string/jumbo v2, "IrisSettings"

    const-string/jumbo v3, "isHaveSA() - true"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const/4 v2, 0x1

    return v2

    .line 833
    :cond_0
    const-string/jumbo v2, "IrisSettings"

    const-string/jumbo v3, "isHaveSA() - false"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    return v4
.end method

.method private isSupportSamsungPay()Z
    .locals 8

    .prologue
    .line 365
    const/4 v4, 0x0

    .line 368
    .local v4, "supportIrises":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v6, "com.samsung.android.spay"

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 369
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 370
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "com.samsung.android.spay.supportIrises"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 377
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v4    # "supportIrises":Z
    :goto_0
    return v4

    .line 373
    .restart local v4    # "supportIrises":Z
    :catch_0
    move-exception v3

    .line 374
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v5, "IrisSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to load meta-data, NullPointer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 371
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 372
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "IrisSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to load meta-data, NameNotFound: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private launchChooseLock()V
    .locals 1

    .prologue
    .line 631
    const/16 v0, 0x2bd

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/iris/IrisSettings;->launchChooseLock(I)V

    .line 630
    return-void
.end method

.method private launchChooseLock(I)V
    .locals 4
    .param p1, "requestCode"    # I

    .prologue
    const/4 v3, 0x1

    .line 635
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 636
    .local v0, "mIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.samsung.android.settings.iris.IrisLockSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 637
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 638
    const-string/jumbo v1, "previousStage"

    const-string/jumbo v2, "register_iris_request"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    const-string/jumbo v1, "hw_auth_token"

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 644
    :goto_0
    const/16 v1, 0x2c5

    if-ne p1, v1, :cond_0

    .line 645
    const-string/jumbo v1, "from_IrisUnlock"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 648
    :cond_0
    const/16 v1, 0x2c3

    if-eq p1, v1, :cond_1

    .line 649
    const/16 v1, 0x2c4

    if-ne p1, v1, :cond_2

    .line 650
    :cond_1
    const-string/jumbo v1, "from_IrisFeature"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 653
    :cond_2
    const-string/jumbo v1, "keep_token"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 654
    const-string/jumbo v1, "from_irisSettings"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 655
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/iris/IrisSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 634
    return-void

    .line 641
    :cond_3
    const-string/jumbo v1, "previousStage"

    const-string/jumbo v2, "lock_screen_iris"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private launchSamsungpassFromIris()V
    .locals 4

    .prologue
    .line 254
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 255
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.samsung.android.samsungpass.ACTION_USE_BIOMETRIC"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const-string/jumbo v2, "biometricType"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/IrisSettings;->startActivity(Landroid/content/Intent;)V

    .line 259
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private launchTipNTutorial()V
    .locals 5

    .prologue
    .line 246
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.android.server.iris"

    const-string/jumbo v4, "com.samsung.android.server.iris.guide.IrisGuideActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 247
    .local v1, "guideintent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/IrisSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v1    # "guideintent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "IrisSettings"

    const-string/jumbo v3, "Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setIrisPreference()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 382
    const-string/jumbo v2, "iris_manage_category"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManageCategory:Landroid/preference/PreferenceCategory;

    .line 383
    const-string/jumbo v2, "my_irises"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/iris/IrisPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mMyIrises:Lcom/samsung/android/settings/iris/IrisPreference;

    .line 384
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mMyIrises:Lcom/samsung/android/settings/iris/IrisPreference;

    const-string/jumbo v3, "registered_iris"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/iris/IrisPreference;->setKey(Ljava/lang/String;)V

    .line 386
    const-string/jumbo v2, "register_irises"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mRegisterIriese:Landroid/preference/PreferenceScreen;

    .line 387
    const-string/jumbo v2, "change_reset_password"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mChangeBackupPassword:Landroid/preference/PreferenceScreen;

    .line 388
    const-string/jumbo v2, "iris_preview_style"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisPreviewStyle:Landroid/preference/PreferenceScreen;

    .line 390
    const-string/jumbo v2, "iris_feature_category"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisFeatureCategory:Landroid/preference/PreferenceCategory;

    .line 392
    const-string/jumbo v2, "iris_web_signin"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    .line 393
    const-string/jumbo v2, "iris_samsung_account"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    .line 394
    const-string/jumbo v2, "iris_samsung_pay"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungPay:Landroid/preference/PreferenceScreen;

    .line 395
    const-string/jumbo v2, "iris_samsung_pass"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungPass:Landroid/preference/PreferenceScreen;

    .line 396
    const-string/jumbo v2, "iris_screen_lock"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    .line 397
    const-string/jumbo v2, "tips_for_iris"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mTipsForIris:Landroid/preference/PreferenceScreen;

    .line 398
    const-string/jumbo v2, "use_iris_first_lock"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/preference/SwitchPreference;

    .line 400
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->isIrisEnrolled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 401
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManageCategory:Landroid/preference/PreferenceCategory;

    const v3, 0x7f04014b

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->setLayoutResource(I)V

    .line 402
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManageCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mRegisterIriese:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 409
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->isIrisEnrolled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 410
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManageCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mChangeBackupPassword:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 411
    const-string/jumbo v2, "IrisSettings"

    const-string/jumbo v3, "updateAddPreference [remove Change Reset Password]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_3

    .line 415
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "com.sec.android.app.sbrowser"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 416
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-nez v2, :cond_8

    .line 417
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisFeatureCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 424
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x10

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v2

    if-nez v2, :cond_9

    .line 426
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 427
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 433
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "use_iris_firstlock"

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 434
    .local v1, "isFirstLock":I
    if-ne v1, v5, :cond_a

    .line 435
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 440
    :goto_3
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 441
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 442
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 444
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getUseIrisSA()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getIrisSAConfirmed()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 447
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V

    .line 448
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    :goto_4
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungPay:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_4

    .line 466
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.spay"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 467
    const-string/jumbo v2, "IrisSettings"

    const-string/jumbo v3, "Remove the SamsungPay"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisFeatureCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungPay:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 481
    :cond_4
    :goto_5
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungPass:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_6

    .line 482
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_d

    .line 483
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisFeatureCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungPass:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 380
    :cond_6
    :goto_6
    return-void

    .line 404
    .end local v1    # "isFirstLock":I
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManageCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mMyIrises:Lcom/samsung/android/settings/iris/IrisPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 405
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManageCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisPreviewStyle:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 419
    :cond_8
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 420
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getIrisVerification()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 429
    :cond_9
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 430
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_2

    .line 437
    .restart local v1    # "isFirstLock":I
    :cond_a
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_3

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 455
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_b
    const/4 v2, 0x0

    :try_start_1
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->setUseIrisSA(I)V

    .line 456
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V

    .line 457
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    .line 459
    :catch_1
    move-exception v0

    .line 460
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 471
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_c
    :try_start_2
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->isSupportSamsungPay()Z

    move-result v2

    if-nez v2, :cond_4

    .line 472
    const-string/jumbo v2, "IrisSettings"

    const-string/jumbo v3, "Remove the SamsungPay"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisFeatureCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungPay:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    .line 475
    :catch_2
    move-exception v0

    .line 476
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "IrisSettings"

    const-string/jumbo v3, "Getting information of SamsungPay make the Exception!"

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 485
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_d
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungPass:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b07b1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b07b2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_6
.end method

.method private setIrisSAConfirmed(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 846
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "iris_samsungaccount_confirmed"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 847
    .local v0, "result":Z
    const-string/jumbo v1, "IrisSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIrisSAConfirmed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    return-void
.end method

.method private setIrisVerification(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 863
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "iris_webpass"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 864
    const-string/jumbo v0, "IrisSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIrisVerification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    return-void

    .line 863
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setUseIrisSA(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 852
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "iris_used_samsungaccount"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 853
    .local v0, "result":Z
    const-string/jumbo v1, "IrisSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUseIrisSA : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    return-void
.end method

.method private updateEditbtn()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 491
    const-string/jumbo v1, "IrisSettings"

    const-string/jumbo v2, "updateEditbtn"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_button_background"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 495
    .local v0, "isEnabledShowBtnBg":Z
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 500
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManageCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f04014a

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setLayoutResource(I)V

    .line 490
    return-void

    .line 496
    :cond_1
    const-string/jumbo v1, "IrisSettings"

    const-string/jumbo v2, "skip update Edit BG catetory"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    return-void
.end method


# virtual methods
.method public deleteRegisteredIris()Z
    .locals 6

    .prologue
    .line 689
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 690
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0b07c6

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 692
    .local v2, "tempStr":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 693
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 692
    const/16 v5, 0x10

    invoke-virtual {v3, v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v3

    if-nez v3, :cond_0

    .line 694
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getIrisesSupportingFeatures()Z

    move-result v3

    .line 692
    if-eqz v3, :cond_1

    .line 695
    :cond_0
    const v3, 0x7f0b07c7

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 698
    :cond_1
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 699
    const v3, 0x7f0b0436

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 701
    .local v1, "remove":Ljava/lang/String;
    new-instance v3, Lcom/samsung/android/settings/iris/IrisSettings$6;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/iris/IrisSettings$6;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;)V

    .line 700
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 710
    new-instance v3, Lcom/samsung/android/settings/iris/IrisSettings$7;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/iris/IrisSettings$7;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;)V

    .line 709
    const/high16 v4, 0x1040000

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 717
    new-instance v3, Lcom/samsung/android/settings/iris/IrisSettings$8;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/iris/IrisSettings$8;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 723
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 724
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 726
    const/4 v3, 0x1

    return v3
.end method

.method public editKeyPressed()V
    .locals 0

    .prologue
    .line 682
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->deleteRegisteredIris()Z

    .line 681
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 267
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 269
    const-string/jumbo v1, "IrisSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "=====onActivityResult : requestCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " resultCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " data : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    if-eqz p3, :cond_0

    .line 272
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mToken:[B

    if-nez v1, :cond_0

    .line 273
    const-string/jumbo v1, "hw_auth_token"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mToken:[B

    .line 277
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 266
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 283
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 284
    const/16 v1, 0x2c3

    if-ne p1, v1, :cond_2

    .line 285
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisVerification(Z)V

    .line 286
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 287
    :cond_2
    const/16 v1, 0x2c4

    if-ne p1, v1, :cond_1

    .line 288
    iput-boolean v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->samsungaccount_objvalue:Z

    .line 289
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->startDisclaimerFromSamsungAccount()Z

    goto :goto_0

    .line 294
    :pswitch_2
    if-ne p2, v5, :cond_1

    .line 295
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->finish()V

    goto :goto_0

    .line 300
    :pswitch_3
    if-ne p2, v5, :cond_3

    .line 302
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/iris/IrisSettings;->setUseIrisSA(I)V

    .line 303
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V

    .line 304
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getIrisSAConfirmed()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 311
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/iris/IrisSettings;->setUseIrisSA(I)V

    .line 312
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V

    .line 313
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getIrisSAConfirmed()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 315
    :catch_1
    move-exception v0

    .line 316
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 322
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_4
    if-eq p2, v5, :cond_4

    if-ne p2, v4, :cond_5

    .line 324
    :cond_4
    const/4 v1, 0x1

    :try_start_2
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/iris/IrisSettings;->setUseIrisSA(I)V

    .line 325
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V

    .line 326
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getIrisSAConfirmed()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 328
    :catch_2
    move-exception v0

    .line 329
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 333
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v1, 0x0

    :try_start_3
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/iris/IrisSettings;->setUseIrisSA(I)V

    .line 334
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V

    .line 335
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getIrisSAConfirmed()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 337
    :catch_3
    move-exception v0

    .line 338
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 343
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_5
    if-ne p2, v5, :cond_1

    .line 344
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "iris_samsungpass_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x2bd
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 672
    const-string/jumbo v0, "IrisSettings"

    const-string/jumbo v1, "=====onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 671
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    const-string/jumbo v2, "IrisSettings"

    const-string/jumbo v3, "=====onCreate()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 139
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "tokenFromLock"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 141
    .local v1, "token":[B
    if-eqz v1, :cond_0

    .line 142
    iput-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mToken:[B

    .line 145
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    .line 146
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 148
    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-nez v2, :cond_1

    .line 149
    const-string/jumbo v2, "IrisSettings"

    const-string/jumbo v3, "mIrisManager is null fail"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->setHasOptionsMenu(Z)V

    .line 132
    return-void

    .line 151
    :cond_1
    const-string/jumbo v2, "IrisSettings"

    const-string/jumbo v3, "mIrisManager is not null success"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 158
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    :cond_0
    const/4 v0, 0x1

    const v1, 0x7f0b043c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 162
    :cond_1
    const/4 v0, 0x2

    const v1, 0x7f0b07e0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 157
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 660
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    .line 661
    const-string/jumbo v0, "IrisSettings"

    const-string/jumbo v1, "=====onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->setOnEditPressedListener(Lcom/android/settings/SettingsActivity$onEditButtonClicked;)V

    .line 665
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->postEnroll()I

    .line 659
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v7, 0x1

    .line 167
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 195
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    return v5

    .line 169
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 170
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.helphub.HELP"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "helphub:section"

    const-string/jumbo v6, "irises"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v7

    .line 174
    .restart local v4    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 175
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 180
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "intent":Landroid/content/Intent;
    :pswitch_1
    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/iris/IrisLockSettings;->makeDisclaimerInnerView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    .line 182
    .local v3, "innerView":Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    const v6, 0x10302d2

    invoke-direct {v0, v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 183
    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b07e0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 184
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 185
    const v5, 0x104000a

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/iris/IrisSettings$2;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/iris/IrisSettings$2;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 191
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 192
    .local v1, "disclaimerDialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 193
    return v7

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 523
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 524
    const-string/jumbo v0, "IrisSettings"

    const-string/jumbo v1, "=====onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/16 v9, 0x10

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 529
    const-string/jumbo v7, "IrisSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "=====onPreferenceChange : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v4, p2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 531
    .local v2, "isChecked":Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 533
    .local v3, "key":Ljava/lang/String;
    const-string/jumbo v4, "iris_samsung_account"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 535
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v4}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v4

    if-nez v4, :cond_5

    .line 536
    const/16 v4, 0x2c4

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/iris/IrisSettings;->launchChooseLock(I)V

    .line 537
    return v6

    .line 533
    :cond_0
    const-string/jumbo v4, "iris_screen_lock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 555
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v4}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 559
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 560
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 561
    if-eqz v2, :cond_8

    .line 562
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v4, v5, v9}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 591
    :cond_2
    :goto_0
    return v6

    .line 533
    :cond_3
    const-string/jumbo v4, "iris_web_signin"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 568
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v4}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 569
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisVerification(Z)V

    .line 570
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mWebSignIn:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 533
    :cond_4
    const-string/jumbo v4, "use_iris_first_lock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 576
    if-eqz v2, :cond_c

    .line 577
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    const/16 v8, 0x100

    invoke-virtual {v4, v8, v7}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v4

    if-ne v4, v5, :cond_a

    move v1, v5

    .line 578
    .local v1, "faceUnlock":I
    :goto_1
    if-ne v1, v5, :cond_b

    .line 579
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->selecFirstlockDialog()V

    goto :goto_0

    .line 539
    .end local v1    # "faceUnlock":I
    :cond_5
    if-eqz v2, :cond_6

    .line 540
    iput-boolean v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->samsungaccount_objvalue:Z

    .line 541
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->startDisclaimerFromSamsungAccount()Z

    move-result v4

    return v4

    .line 544
    :cond_6
    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/iris/IrisSettings;->setUseIrisSA(I)V

    .line 545
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V

    .line 546
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/preference/SwitchPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 547
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->samsungaccount_objvalue:Z

    .line 548
    const-string/jumbo v4, "IrisSettings"

    const-string/jumbo v5, "[onPreferenceChange]Samsung Account setChecked is False."

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 555
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    if-eqz v2, :cond_1

    .line 556
    const/16 v4, 0x2c5

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/iris/IrisSettings;->launchChooseLock(I)V

    .line 557
    return v6

    .line 564
    :cond_8
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v9, v5}, Lcom/android/internal/widget/LockPatternUtils;->removeBiometricLockscreen(II)V

    goto :goto_0

    .line 572
    :cond_9
    const/16 v4, 0x2c3

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/iris/IrisSettings;->launchChooseLock(I)V

    goto :goto_0

    :cond_a
    move v1, v6

    .line 577
    goto :goto_1

    .line 581
    .restart local v1    # "faceUnlock":I
    :cond_b
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 582
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "use_iris_firstlock"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 585
    .end local v1    # "faceUnlock":I
    :cond_c
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 586
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "use_iris_firstlock"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 201
    const-string/jumbo v0, "IrisSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "=====onPreferenceTreeClick"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "  "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 203
    .local v8, "key":Ljava/lang/String;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 205
    .local v9, "mIntent":Landroid/content/Intent;
    const-string/jumbo v0, "register_irises"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->launchChooseLock()V

    .line 241
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 205
    :cond_1
    const-string/jumbo v0, "iris_samsung_pay"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 211
    const-string/jumbo v0, "IrisSettings"

    const-string/jumbo v1, "There is Registered Irises. Launch the SamsungPay"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-string/jumbo v0, "com.samsung.android.spay"

    const-string/jumbo v1, "com.samsung.android.spay.ui.SpayMainActivity"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string/jumbo v0, "previousStage"

    const-string/jumbo v1, "IrisSettings"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    :try_start_0
    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/iris/IrisSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v7

    .line 217
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v7}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 205
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    :cond_2
    const-string/jumbo v0, "change_reset_password"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 221
    const-string/jumbo v0, "com.android.settings"

    const-string/jumbo v1, "com.android.settings.fingerprint.FingerprintPassword"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string/jumbo v0, "previousStage"

    const-string/jumbo v1, "FingerprintSettings_changepassword"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/iris/IrisSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 205
    :cond_3
    const-string/jumbo v0, "iris_preview_style"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 226
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 227
    .local v2, "args":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.samsung.android.settings.iris.IrisPreveiwStyleFragment"

    const v5, 0x7f0b07a7

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    goto :goto_0

    .line 205
    .end local v2    # "args":Landroid/os/Bundle;
    :cond_4
    const-string/jumbo v0, "iris_samsung_pass"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 230
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->ConnectedMobileKeypad(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 231
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const v3, 0x7f0b07b0

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const v3, 0x7f0b05b0

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 205
    :cond_5
    const-string/jumbo v0, "tips_for_iris"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->launchTipNTutorial()V

    goto/16 :goto_0

    .line 233
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->launchSamsungpassFromIris()V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 505
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 506
    const-string/jumbo v0, "IrisSettings"

    const-string/jumbo v1, "=====onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 510
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->buildPreferenceForCOM()V

    .line 513
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 515
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->isEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    .line 515
    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->finish()V

    goto :goto_0
.end method

.method protected removeIris()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 757
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getEnrolledIrises()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getEnrolledIrises()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 759
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getEnrolledIrises()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/iris/Iris;

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mRemovalCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->remove(Lcom/samsung/android/camera/iris/Iris;Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;)V

    .line 756
    :cond_0
    return-void
.end method

.method public selecFirstlockDialog()V
    .locals 4

    .prologue
    .line 597
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 599
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b07e9

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 600
    const v2, 0x7f0b07ea

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 601
    const v2, 0x7f0b0b56

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 603
    .local v1, "turnOn":Ljava/lang/String;
    new-instance v2, Lcom/samsung/android/settings/iris/IrisSettings$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/iris/IrisSettings$3;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;)V

    .line 602
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 613
    new-instance v2, Lcom/samsung/android/settings/iris/IrisSettings$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/iris/IrisSettings$4;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;)V

    .line 612
    const/high16 v3, 0x1040000

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 620
    new-instance v2, Lcom/samsung/android/settings/iris/IrisSettings$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/iris/IrisSettings$5;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 626
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 627
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 594
    return-void
.end method

.method public startDisclaimerFromSamsungAccount()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 765
    const-string/jumbo v7, "IrisSettings"

    const-string/jumbo v8, "startDisclaimerFromSamsungAccount"

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/iris/IrisSettings;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 769
    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    .line 770
    .local v3, "manager":Landroid/accounts/AccountManager;
    const-string/jumbo v7, "com.osp.app.signin"

    invoke-virtual {v3, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v6

    .line 771
    .local v6, "samsungAccnts":[Landroid/accounts/Account;
    array-length v5, v6

    .line 772
    .local v5, "returnvalue_sa":I
    if-nez v5, :cond_0

    .line 773
    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 774
    .local v4, "packageName":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 776
    .local v2, "mIntent":Landroid/content/Intent;
    const-string/jumbo v7, "mypackage"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 777
    const-string/jumbo v7, "OSP_VER"

    const-string/jumbo v8, "OSP_02"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 778
    const-string/jumbo v7, "MODE"

    const-string/jumbo v8, "ADD_ACCOUNT"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 779
    const-string/jumbo v7, "Is_From_SA_Verify"

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 781
    const/16 v7, 0x2c0

    :try_start_0
    invoke-virtual {p0, v2, v7}, Lcom/samsung/android/settings/iris/IrisSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    .end local v2    # "mIntent":Landroid/content/Intent;
    .end local v3    # "manager":Landroid/accounts/AccountManager;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "returnvalue_sa":I
    .end local v6    # "samsungAccnts":[Landroid/accounts/Account;
    :cond_0
    :goto_0
    return v9

    .line 782
    .restart local v2    # "mIntent":Landroid/content/Intent;
    .restart local v3    # "manager":Landroid/accounts/AccountManager;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "returnvalue_sa":I
    .restart local v6    # "samsungAccnts":[Landroid/accounts/Account;
    :catch_0
    move-exception v0

    .line 783
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 788
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "mIntent":Landroid/content/Intent;
    .end local v3    # "manager":Landroid/accounts/AccountManager;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "returnvalue_sa":I
    .end local v6    # "samsungAccnts":[Landroid/accounts/Account;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    .line 789
    const-string/jumbo v7, "com.msc.action.samsungaccount.CONFIRM_PASSWORD_POPUP"

    .line 788
    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 790
    .restart local v2    # "mIntent":Landroid/content/Intent;
    const-string/jumbo v7, "client_id"

    const-string/jumbo v8, "s5d189ajvs"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 791
    const-string/jumbo v7, "client_secret"

    const-string/jumbo v8, "E8781246E4A0F6E9E213178CC003DE6A"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 792
    const-string/jumbo v7, "Is_From_SA_Verify"

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 794
    iget-boolean v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->samsungaccount_objvalue:Z

    if-eqz v7, :cond_2

    .line 795
    const-string/jumbo v7, "IrisSettings"

    const-string/jumbo v8, "SamsungAccount set_value is true."

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const/4 v7, 0x1

    :try_start_1
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 816
    :goto_1
    const/16 v7, 0x2c1

    :try_start_2
    invoke-virtual {p0, v2, v7}, Lcom/samsung/android/settings/iris/IrisSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 817
    :catch_1
    move-exception v0

    .line 818
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 800
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catch_2
    move-exception v1

    .line 801
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 805
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const-string/jumbo v7, "IrisSettings"

    const-string/jumbo v8, "SamsungAccount set_value is false."

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const/4 v7, 0x0

    :try_start_3
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 810
    :catch_3
    move-exception v1

    .line 811
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
