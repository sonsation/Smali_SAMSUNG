.class public Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;
.super Ljava/lang/Object;
.source "DirectionLockSettingsHelper.java"


# instance fields
.field public SETTINGS_ARROW_SIZE:I

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActivity:Landroid/app/Activity;

.field private mBioFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 135
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isMobileKeyboardCovered(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 137
    const v1, 0x7f0a02ee

    .line 136
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->SETTINGS_ARROW_SIZE:I

    .line 142
    :goto_0
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v0, p1}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 144
    const-string/jumbo v0, "accessibility"

    .line 143
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 145
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 146
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 147
    const-string/jumbo v1, "fingerprint"

    .line 146
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 148
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    .line 149
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mBioFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 133
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 140
    const v1, 0x7f0a02ed

    .line 139
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->SETTINGS_ARROW_SIZE:I

    goto :goto_0
.end method

.method public static applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "window"    # Landroid/view/Window;

    .prologue
    .line 660
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 661
    .local v1, "orientation":I
    const-string/jumbo v2, "LAND"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    .line 662
    const-string/jumbo v4, "SEC_FLOATING_FEATURE_COMMON_CONFIG_HIDE_STATUS_BAR"

    .line 661
    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 663
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 664
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 665
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 666
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 667
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 659
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 670
    .restart local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x401

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 671
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 672
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method private confirmFingerprintPassword()V
    .locals 4

    .prologue
    .line 455
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 456
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.settings"

    .line 457
    const-string/jumbo v3, "com.samsung.android.settings.biometrics.BiometricsAuthenticationActivity"

    .line 456
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    const-string/jumbo v2, "for_fingerprint_authentication"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 459
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 460
    const/16 v3, 0x65

    .line 459
    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private confirmIrisPassword()V
    .locals 4

    .prologue
    .line 436
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 437
    .local v1, "mIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.settings"

    .line 438
    const-string/jumbo v3, "com.samsung.android.settings.biometrics.BiometricsAuthenticationActivity"

    .line 437
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    const-string/jumbo v2, "for_iris_authentication"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 440
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 441
    const/16 v3, 0x65

    .line 440
    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    .end local v1    # "mIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getBiometricsSummary(IZZZ)Ljava/lang/String;
    .locals 8
    .param p1, "ResId"    # I
    .param p2, "isFinger"    # Z
    .param p3, "isIrises"    # Z
    .param p4, "isFace"    # Z

    .prologue
    .line 212
    const-string/jumbo v3, ", "

    .line 213
    .local v3, "comma":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ar"

    .line 216
    .local v1, "ISO639_ARABIC":Ljava/lang/String;
    const-string/jumbo v2, "ja"

    .line 217
    .local v2, "JAPANESE":Ljava/lang/String;
    const-string/jumbo v0, "zh"

    .line 218
    .local v0, "CHINESE":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, "configurationLanguage":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 221
    const-string/jumbo v3, "\u060c "

    .line 228
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    if-eqz p2, :cond_1

    .line 231
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b07c4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :cond_1
    if-eqz p3, :cond_2

    .line 235
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b092d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :cond_2
    if-eqz p4, :cond_3

    .line 239
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0a3b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 222
    :cond_4
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 223
    const-string/jumbo v3, "\u3001"

    goto :goto_0

    .line 224
    :cond_5
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 225
    const-string/jumbo v3, "\uff0c"

    goto :goto_0
.end method

.method public static getMinimumSupportedPassLength()I
    .locals 2

    .prologue
    .line 944
    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "getMinimumSupportedPassLength"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    const-string/jumbo v0, "6"

    .line 945
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static isDirectionLockSupportFace()Z
    .locals 2

    .prologue
    .line 939
    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "isDirectionLockSupportFace"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFace()Z

    move-result v0

    return v0
.end method

.method public static isDirectionLockSupportFingerprint(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 925
    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "isDirectionLockSupportFingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    invoke-static {p0}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    const/4 v0, 0x1

    .line 926
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDirectionLockSupportIris()Z
    .locals 2

    .prologue
    .line 934
    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "isDirectionLockSupportIris"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v0

    return v0
.end method

.method private isFingerprintDisabled()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 862
    const/4 v3, 0x0

    .line 863
    .local v3, "isDisabledByEDM":Z
    const/4 v2, 0x0

    .line 864
    .local v2, "isDisabledByDPM":Z
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 865
    const-string/jumbo v7, "device_policy"

    .line 864
    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 867
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez v0, :cond_0

    .line 868
    const-string/jumbo v5, "DirectionLockSettingsHelper"

    const-string/jumbo v6, "isFingerprintDisabled :  dpm is NULL"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    return v8

    .line 872
    :cond_0
    invoke-virtual {v0, v9}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v6

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_2

    const/4 v2, 0x1

    .line 875
    :goto_0
    new-array v4, v5, [Ljava/lang/String;

    .line 876
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    .line 878
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 879
    const-string/jumbo v7, "content://com.sec.knox.provider/PasswordPolicy2"

    .line 880
    const-string/jumbo v8, "isBiometricAuthenticationEnabled"

    .line 878
    invoke-static {v6, v7, v8, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 881
    .local v1, "isBiometricAuthenticationEnabled":I
    invoke-virtual {v0, v9}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v6

    if-lez v6, :cond_1

    .line 882
    if-nez v1, :cond_1

    .line 883
    const-string/jumbo v6, "DirectionLockSettingsHelper"

    const-string/jumbo v7, "isBiometricAuthenticationEnabled == Utils.EDM_FALSE"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    const/4 v3, 0x1

    .line 889
    :cond_1
    if-nez v3, :cond_3

    .end local v2    # "isDisabledByDPM":Z
    :goto_1
    return v2

    .line 872
    .end local v1    # "isBiometricAuthenticationEnabled":I
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .restart local v2    # "isDisabledByDPM":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .restart local v1    # "isBiometricAuthenticationEnabled":I
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    :cond_3
    move v2, v5

    .line 889
    goto :goto_1
.end method

.method public static isTablet()Z
    .locals 1

    .prologue
    .line 548
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    return v0
.end method

.method private setMountVariables()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 508
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 509
    const-string/jumbo v4, "universal_lock_visible"

    .line 508
    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 509
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 508
    invoke-virtual {v3, v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionShowEnabled(ZI)V

    .line 510
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 511
    const-string/jumbo v4, "universal_lock_vibration"

    .line 510
    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    .line 511
    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 510
    invoke-virtual {v3, v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionVibrationEnabled(ZI)V

    .line 512
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 513
    const-string/jumbo v4, "universal_lock_beep"

    .line 512
    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    .line 513
    :goto_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 512
    invoke-virtual {v3, v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionSoundEnabled(ZI)V

    .line 514
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 515
    const-string/jumbo v4, "universal_lock_voice"

    .line 514
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_3

    .line 515
    :goto_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 514
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionVoiceEnabled(ZI)V

    .line 507
    return-void

    :cond_0
    move v0, v2

    .line 508
    goto :goto_0

    :cond_1
    move v0, v2

    .line 510
    goto :goto_1

    :cond_2
    move v0, v2

    .line 512
    goto :goto_2

    :cond_3
    move v1, v2

    .line 514
    goto :goto_3
.end method

.method private startIrisRegister([B)V
    .locals 5
    .param p1, "mToken"    # [B

    .prologue
    .line 783
    const-string/jumbo v3, "DirectionLockSettingsHelper"

    const-string/jumbo v4, "startIrisRegister"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :try_start_0
    const-string/jumbo v3, "com.android.settings.iris.IrisLockSettings"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 786
    .local v0, "chooseLockIris":Ljava/lang/Class;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 787
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 786
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 788
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "previousStage"

    const-string/jumbo v4, "register_iris_request"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 789
    const-string/jumbo v3, "hw_auth_token"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 790
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    .end local v0    # "chooseLockIris":Ljava/lang/Class;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 791
    :catch_0
    move-exception v1

    .line 792
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v3, "DirectionLockSettingsHelper"

    const-string/jumbo v4, "startFingerprintLockSettings() exception occured"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .prologue
    .line 619
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 620
    .local v2, "height":I
    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 621
    .local v4, "width":I
    const/4 v3, 0x1

    .line 623
    .local v3, "inSampleSize":I
    if-gt v2, p3, :cond_0

    if-le v4, p2, :cond_1

    .line 625
    :cond_0
    div-int/lit8 v0, v2, 0x2

    .line 626
    .local v0, "halfHeight":I
    div-int/lit8 v1, v4, 0x2

    .line 631
    .local v1, "halfWidth":I
    :goto_0
    div-int v5, v0, v3

    if-le v5, p3, :cond_1

    div-int v5, v1, v3

    if-le v5, p2, :cond_1

    .line 632
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 636
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_1
    return v3
.end method

.method public getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I
    .param p3, "reqWidth"    # I
    .param p4, "reqHeight"    # I

    .prologue
    const/4 v5, 0x1

    .line 564
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 565
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 566
    invoke-static {p1, p2, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 569
    invoke-virtual {p0, v2, p3, p4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v5

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 572
    const/4 v5, 0x0

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 574
    const/4 v4, 0x0

    .line 577
    .local v4, "tempBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 579
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v5, v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v5, :cond_0

    move-object v5, v0

    .line 580
    check-cast v5, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    invoke-virtual {v5}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 589
    .local v4, "tempBitmap":Landroid/graphics/Bitmap;
    :goto_0
    const/4 v3, 0x0

    .line 590
    .local v3, "returnBitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_2

    .line 592
    const/4 v5, 0x1

    :try_start_0
    invoke-static {v4, p3, p4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 596
    .local v3, "returnBitmap":Landroid/graphics/Bitmap;
    instance-of v5, v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v5, :cond_1

    .line 597
    return-object v3

    .line 582
    .end local v3    # "returnBitmap":Landroid/graphics/Bitmap;
    .local v4, "tempBitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {p1, p2, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .local v4, "tempBitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 598
    .restart local v3    # "returnBitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v4, v3}, Landroid/graphics/Bitmap;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 599
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 600
    .end local v3    # "returnBitmap":Landroid/graphics/Bitmap;
    :goto_1
    const/4 v4, 0x0

    .line 604
    .end local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    :cond_2
    return-object v3

    .line 593
    .local v3, "returnBitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 594
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 596
    instance-of v5, v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v5, :cond_3

    .line 597
    return-object v3

    .line 598
    :cond_3
    invoke-virtual {v4, v3}, Landroid/graphics/Bitmap;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 599
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 595
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v5

    .line 596
    instance-of v6, v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v6, :cond_4

    .line 597
    return-object v3

    .line 598
    :cond_4
    invoke-virtual {v4, v3}, Landroid/graphics/Bitmap;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 599
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 600
    const/4 v4, 0x0

    .line 595
    .end local v4    # "tempBitmap":Landroid/graphics/Bitmap;
    :cond_5
    throw v5
.end method

.method public getChallengeForFace()J
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mBioFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_0

    .line 425
    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "SemBioFaceManager is NOT Null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mBioFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->preEnroll()J

    move-result-wide v0

    return-wide v0

    .line 429
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getChallengeForFingerPrint()J
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    .line 403
    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "FingerPrint Manager is NOT Null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v0

    return-wide v0

    .line 406
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getChallengeForIris()J
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_0

    .line 415
    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "SemIrisManager is NOT Null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->preEnroll()J

    move-result-wide v0

    return-wide v0

    .line 419
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentLockScreen()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 259
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    return v2

    .line 263
    :cond_0
    return v2

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    return v0
.end method

.method public getLockTypeSummary()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 160
    const/4 v3, 0x0

    .line 162
    .local v3, "summary":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 163
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 164
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b1485

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 207
    .end local v3    # "summary":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 166
    .restart local v3    # "summary":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b12fb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "summary":Ljava/lang/String;
    goto :goto_0

    .line 169
    .local v3, "summary":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 170
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 169
    invoke-virtual {v4, v7, v5}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v4

    if-ne v4, v7, :cond_2

    const/4 v1, 0x1

    .line 171
    .local v1, "isFingerLockEnabled":Z
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 172
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/16 v6, 0x10

    .line 171
    invoke-virtual {v4, v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v4

    if-ne v4, v7, :cond_3

    const/4 v2, 0x1

    .line 173
    .local v2, "isIrisesLockEnabled":Z
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 174
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const/16 v6, 0x100

    .line 173
    invoke-virtual {v4, v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v4

    if-ne v4, v7, :cond_4

    const/4 v0, 0x1

    .line 175
    .local v0, "isFaceLockEnalbed":Z
    :goto_3
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    .line 182
    :sswitch_0
    const v4, 0x7f0b0a33

    invoke-direct {p0, v4, v1, v2, v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getBiometricsSummary(IZZZ)Ljava/lang/String;

    move-result-object v3

    .local v3, "summary":Ljava/lang/String;
    goto :goto_0

    .line 169
    .end local v0    # "isFaceLockEnalbed":Z
    .end local v1    # "isFingerLockEnabled":Z
    .end local v2    # "isIrisesLockEnabled":Z
    .local v3, "summary":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "isFingerLockEnabled":Z
    goto :goto_1

    .line 171
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "isIrisesLockEnabled":Z
    goto :goto_2

    .line 173
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "isFaceLockEnalbed":Z
    goto :goto_3

    .line 177
    :sswitch_1
    const v4, 0x7f0b0319

    invoke-direct {p0, v4, v1, v2, v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getBiometricsSummary(IZZZ)Ljava/lang/String;

    move-result-object v3

    .local v3, "summary":Ljava/lang/String;
    goto :goto_0

    .line 186
    .local v3, "summary":Ljava/lang/String;
    :sswitch_2
    const v4, 0x7f0b1477

    invoke-direct {p0, v4, v1, v2, v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getBiometricsSummary(IZZZ)Ljava/lang/String;

    move-result-object v3

    .local v3, "summary":Ljava/lang/String;
    goto :goto_0

    .line 191
    .local v3, "summary":Ljava/lang/String;
    :sswitch_3
    const v4, 0x7f0b1479

    invoke-direct {p0, v4, v1, v2, v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getBiometricsSummary(IZZZ)Ljava/lang/String;

    move-result-object v3

    .local v3, "summary":Ljava/lang/String;
    goto :goto_0

    .line 197
    .local v3, "summary":Ljava/lang/String;
    :sswitch_4
    const v4, 0x7f0b147b

    invoke-direct {p0, v4, v1, v2, v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getBiometricsSummary(IZZZ)Ljava/lang/String;

    move-result-object v3

    .local v3, "summary":Ljava/lang/String;
    goto :goto_0

    .line 201
    .local v3, "summary":Ljava/lang/String;
    :sswitch_5
    const v4, 0x7f0b0a24

    invoke-direct {p0, v4, v1, v2, v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getBiometricsSummary(IZZZ)Ljava/lang/String;

    move-result-object v3

    .local v3, "summary":Ljava/lang/String;
    goto :goto_0

    .line 175
    nop

    :sswitch_data_0
    .sparse-switch
        0x9100 -> :sswitch_0
        0x10000 -> :sswitch_2
        0x10001 -> :sswitch_1
        0x20000 -> :sswitch_3
        0x30000 -> :sswitch_3
        0x40000 -> :sswitch_4
        0x50000 -> :sswitch_4
        0x60000 -> :sswitch_4
        0x70000 -> :sswitch_5
        0x90000 -> :sswitch_0
    .end sparse-switch
.end method

.method public hasEnrolledFingerPrints()Z
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEnrolledIrises()Z
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFingerPrintSwitchOn()Z
    .locals 2

    .prologue
    .line 898
    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "isFingerPrintSwitchOn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const/4 v0, 0x0

    return v0
.end method

.method public isIrisSwitchOn()Z
    .locals 3

    .prologue
    .line 834
    const-string/jumbo v1, "DirectionLockSettingsHelper"

    const-string/jumbo v2, "isIrisSwitchOn"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const/4 v0, 0x0

    .line 844
    .local v0, "isIrisLockDisabled":Z
    if-eqz v0, :cond_0

    .line 845
    const/4 v1, 0x0

    return v1

    .line 846
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public isMobileKeyboardCovered(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 648
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchExplorationEnabled()Z
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    return v0
.end method

.method public launchConfirmCurrentLockScreen(ZZZ)Z
    .locals 12
    .param p1, "switchState"    # Z
    .param p2, "isFingerPrintSwitch"    # Z
    .param p3, "isIrisSwitch"    # Z

    .prologue
    const v6, 0x10001

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 283
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getCurrentLockScreen()I

    move-result v10

    .line 284
    .local v10, "quality":I
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0b085a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 286
    const/4 v1, 0x1

    return v1

    .line 292
    :cond_0
    const/4 v8, 0x0

    .line 294
    .local v8, "intent":Landroid/content/Intent;
    const/4 v0, 0x0

    .line 296
    .local v0, "activityLaunched":Z
    const-string/jumbo v1, "DirectionLockSettingsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "switchState :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " isFingerPrintSwitch: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 297
    const-string/jumbo v4, " isIrisSwitch: "

    .line 296
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    if-eqz p2, :cond_2

    .line 300
    if-eqz p1, :cond_1

    .line 301
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 303
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getChallengeForFingerPrint()J

    move-result-wide v6

    .line 302
    const/16 v2, 0x69

    move-object v4, v3

    move-object v5, v3

    .line 301
    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z

    move-result v11

    .line 304
    .local v11, "returnVal":Z
    move v0, v11

    .line 314
    .end local v0    # "activityLaunched":Z
    .end local v11    # "returnVal":Z
    :goto_0
    return v0

    .line 293
    .restart local v0    # "activityLaunched":Z
    :cond_1
    const/4 v0, 0x0

    .line 312
    goto :goto_0

    .line 317
    :cond_2
    if-eqz p3, :cond_4

    .line 318
    if-eqz p1, :cond_3

    .line 319
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 321
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getChallengeForIris()J

    move-result-wide v6

    .line 320
    const/16 v2, 0x6b

    move-object v4, v3

    move-object v5, v3

    .line 319
    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z

    move-result v11

    .line 322
    .restart local v11    # "returnVal":Z
    move v0, v11

    .line 332
    .end local v0    # "activityLaunched":Z
    .end local v11    # "returnVal":Z
    :goto_1
    return v0

    .line 293
    .restart local v0    # "activityLaunched":Z
    :cond_3
    const/4 v0, 0x0

    .line 330
    goto :goto_1

    .line 339
    :cond_4
    if-nez p1, :cond_6

    if-ne v10, v6, :cond_6

    .line 340
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 341
    const-class v3, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    .line 340
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v8

    .line 342
    .local v8, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 343
    const/16 v2, 0x66

    .line 342
    invoke-virtual {v1, v8, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 344
    const/4 v0, 0x1

    .line 395
    .end local v0    # "activityLaunched":Z
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_5
    :goto_2
    return v0

    .line 351
    .restart local v0    # "activityLaunched":Z
    .local v8, "intent":Landroid/content/Intent;
    :cond_6
    if-nez p1, :cond_7

    if-eq v10, v6, :cond_7

    .line 352
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 353
    const-string/jumbo v2, "universal_lock_switch_state"

    .line 352
    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 354
    const/4 v0, 0x0

    .line 351
    goto :goto_2

    .line 361
    :cond_7
    if-eqz p1, :cond_5

    .line 363
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 364
    const/16 v2, 0x65

    .line 363
    invoke-virtual {v1, v2, v3, v5}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    move-result v11

    .line 366
    .restart local v11    # "returnVal":Z
    move v0, v11

    .line 368
    .local v0, "activityLaunched":Z
    if-nez v11, :cond_5

    .line 370
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->hasEnrolledFingerPrints()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 371
    const/4 v0, 0x1

    .line 372
    .local v0, "activityLaunched":Z
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->confirmFingerprintPassword()V

    goto :goto_2

    .line 373
    .local v0, "activityLaunched":Z
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->hasEnrolledIrises()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 374
    const/4 v0, 0x1

    .line 375
    .local v0, "activityLaunched":Z
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->confirmIrisPassword()V

    goto :goto_2

    .line 381
    .local v0, "activityLaunched":Z
    :cond_9
    if-nez v11, :cond_5

    .line 382
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 383
    const-class v3, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    .line 382
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v9

    .line 384
    .local v9, "intent1":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 385
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 386
    const/16 v2, 0x68

    .line 385
    invoke-virtual {v1, v9, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 390
    :goto_3
    const/4 v0, 0x1

    .local v0, "activityLaunched":Z
    goto :goto_2

    .line 388
    .local v0, "activityLaunched":Z
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v9}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3
.end method

.method public saveLockDirection(Ljava/lang/String;I)V
    .locals 1
    .param p1, "patternToBeSaved"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 468
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->saveLockDirection(Ljava/lang/String;Ljava/lang/String;I)V

    .line 467
    return-void
.end method

.method public saveLockDirection(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "patternToBeSaved"    # Ljava/lang/String;
    .param p2, "pinToBeSaved"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 472
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 473
    const-string/jumbo v2, "universal_lock_switch_state"

    const/4 v3, 0x1

    .line 472
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 478
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 489
    .local v0, "mChosenPattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-eqz p2, :cond_0

    .line 499
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->setFingerprintScreenLockVerification(Landroid/content/Context;Z)V

    .line 502
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0, v4, p3}, Lcom/android/internal/widget/LockPatternUtils;->saveLockDirection(Ljava/util/List;Ljava/lang/String;I)V

    .line 503
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->setMountVariables()V

    .line 471
    return-void
.end method

.method public setFingerPrintLockOff()V
    .locals 2

    .prologue
    .line 914
    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "setFingerPrintLockOff"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    return-void
.end method

.method public setIrisLockOff()V
    .locals 2

    .prologue
    .line 853
    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "setIrisLockOff"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    return-void
.end method

.method public shouldDirectionLockBeDisabled()Z
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v0

    const v1, 0x10001

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startFingerprintLockSettings([B)V
    .locals 2
    .param p1, "mToken"    # [B

    .prologue
    .line 707
    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "startFingerprintLockSettings()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->startFingerprintLockSettingsImpl([B)V

    .line 706
    return-void
.end method

.method public startFingerprintLockSettingsImpl([B)V
    .locals 6
    .param p1, "mToken"    # [B

    .prologue
    .line 713
    const-string/jumbo v4, "DirectionLockSettingsHelper"

    const-string/jumbo v5, "startFingerprintLockSettingsImpl()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isFingerprintDisabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 715
    const-string/jumbo v4, "DirectionLockSettingsHelper"

    const-string/jumbo v5, "isFingerprintDisabled() = TURE"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    return-void

    .line 719
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 720
    const-string/jumbo v5, "fingerprint"

    .line 719
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintManager;

    .line 721
    .local v2, "mFingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    if-eqz v2, :cond_1

    .line 722
    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 723
    const-string/jumbo v4, "DirectionLockSettingsHelper"

    const-string/jumbo v5, "isHardwareDetected() of Fingerprint is FALSE."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    return-void

    .line 730
    :cond_1
    :try_start_0
    const-string/jumbo v4, "com.android.settings.fingerprint.FingerprintLockSettings"

    .line 729
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 731
    .local v0, "chooseLockFingerprint":Ljava/lang/Class;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    .line 733
    .local v3, "mIntent":Landroid/content/Intent;
    const-string/jumbo v4, "previousStage"

    const-string/jumbo v5, "lock_screen_pin_pattern_password"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 734
    const-string/jumbo v4, "hw_auth_token"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 735
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    .end local v0    # "chooseLockFingerprint":Ljava/lang/Class;
    .end local v3    # "mIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 736
    :catch_0
    move-exception v1

    .line 738
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v4, "DirectionLockSettingsHelper"

    const-string/jumbo v5, "startFingerprintLockSettings() exception occured"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public startIrisLockSettings([B)V
    .locals 2
    .param p1, "mToken"    # [B

    .prologue
    .line 771
    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "startIrisLockSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->hasEnrolledIrises()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    :goto_0
    return-void

    .line 775
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->startIrisRegister([B)V

    goto :goto_0
.end method

.method public switchToSwipe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 527
    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "switchToSwipe()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V

    .line 529
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 530
    const-string/jumbo v1, "universal_lock_switch_state"

    .line 529
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 531
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "interaction_control_exit_locked"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 526
    return-void
.end method
