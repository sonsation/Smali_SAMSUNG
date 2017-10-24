.class public Lcom/android/keyguard/KeyguardTextBuilder;
.super Ljava/lang/Object;
.source "KeyguardTextBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardTextBuilder$Biometric;,
        Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;,
        Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;,
        Lcom/android/keyguard/KeyguardTextBuilder$Security;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-keyguard-KeyguardConstants$KeyguardDismissActionTypeSwitchesValues:[I

.field private static final synthetic -com-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues:[I

.field private static sInstance:Lcom/android/keyguard/KeyguardTextBuilder;


# instance fields
.field private mAddRemainingAttempt:I

.field private mBiometricType:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDeviceType:Ljava/lang/String;

.field private mDismissActionType:Ljava/lang/String;

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPromptReasonType:Ljava/lang/String;

.field private mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field private mSecurityType:Ljava/lang/String;


# direct methods
.method private static synthetic -getcom-android-keyguard-KeyguardConstants$KeyguardDismissActionTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder;->-com-android-keyguard-KeyguardConstants$KeyguardDismissActionTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder;->-com-android-keyguard-KeyguardConstants$KeyguardDismissActionTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->values()[Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_ACTIVE:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_SHUTDOWN:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/android/keyguard/KeyguardTextBuilder;->-com-android-keyguard-KeyguardConstants$KeyguardDismissActionTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder;->-com-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder;->-com-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->values()[Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_f

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_e

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_d

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->DirectionLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_c

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->FMM:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_b

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_a

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_9

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_8

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_7

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_6

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Recovery:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_5

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPerso:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_4

    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_3

    :goto_c
    :try_start_d
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_2

    :goto_d
    :try_start_e
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SmartcardPIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_1

    :goto_e
    :try_start_f
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_0

    :goto_f
    sput-object v0, Lcom/android/keyguard/KeyguardTextBuilder;->-com-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_f

    :catch_1
    move-exception v1

    goto :goto_e

    :catch_2
    move-exception v1

    goto :goto_d

    :catch_3
    move-exception v1

    goto :goto_c

    :catch_4
    move-exception v1

    goto :goto_b

    :catch_5
    move-exception v1

    goto :goto_a

    :catch_6
    move-exception v1

    goto :goto_9

    :catch_7
    move-exception v1

    goto :goto_8

    :catch_8
    move-exception v1

    goto :goto_7

    :catch_9
    move-exception v1

    goto :goto_6

    :catch_a
    move-exception v1

    goto :goto_5

    :catch_b
    move-exception v1

    goto/16 :goto_4

    :catch_c
    move-exception v1

    goto/16 :goto_3

    :catch_d
    move-exception v1

    goto/16 :goto_2

    :catch_e
    move-exception v1

    goto/16 :goto_1

    :catch_f
    move-exception v1

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 117
    iput-object p1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    .line 118
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 119
    iget-object v0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 120
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->IS_TABLET_DEVICE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "tablet"

    :goto_0
    iput-object v0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    .line 116
    return-void

    .line 120
    :cond_0
    const-string/jumbo v0, "none"

    goto :goto_0
.end method

.method private getAddRemainingAttemptIndication(I)Ljava/lang/String;
    .locals 8
    .param p1, "msgId"    # I

    .prologue
    const/4 v7, 0x0

    .line 286
    iget v1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mAddRemainingAttempt:I

    if-lez v1, :cond_0

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 288
    sget v3, Lcom/android/keyguard/R$plurals;->kg_attempt_remaining:I

    iget v4, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mAddRemainingAttempt:I

    .line 287
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 288
    iget v6, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mAddRemainingAttempt:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    .line 287
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "msg":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 290
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardTextBuilder;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder;->sInstance:Lcom/android/keyguard/KeyguardTextBuilder;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/android/keyguard/KeyguardTextBuilder;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardTextBuilder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/KeyguardTextBuilder;->sInstance:Lcom/android/keyguard/KeyguardTextBuilder;

    .line 127
    :cond_0
    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder;->sInstance:Lcom/android/keyguard/KeyguardTextBuilder;

    return-object v0
.end method

.method private updateCurrentState(Z)V
    .locals 7
    .param p1, "isStrongAuth"    # Z

    .prologue
    const/4 v6, 0x1

    .line 296
    const/4 v2, 0x0

    .line 297
    .local v2, "isMobileKeyboardCovered":Z
    sget-boolean v3, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v3, :cond_0

    .line 298
    sget-boolean v3, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SEC_FINGERPRINT_SENSOR_POSITION_REAR:Z

    if-eqz v3, :cond_2

    .line 302
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    .line 303
    const/4 v4, 0x0

    .line 302
    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getAddRemainingAttempt(I)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mAddRemainingAttempt:I

    .line 304
    iget-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 305
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    .line 304
    invoke-virtual {v3, v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v3

    if-ne v6, v3, :cond_3

    const/4 v0, 0x1

    .line 306
    .local v0, "isFingerprint":Z
    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 307
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    const/16 v5, 0x10

    .line 306
    invoke-virtual {v3, v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v3

    if-ne v6, v3, :cond_4

    const/4 v1, 0x1

    .line 308
    .local v1, "isIris":Z
    :goto_2
    if-nez p1, :cond_1

    .line 309
    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 310
    if-eqz v2, :cond_5

    const/4 v0, 0x0

    .line 311
    :goto_3
    if-eqz v1, :cond_7

    iget-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v1

    .line 313
    .end local v1    # "isIris":Z
    :cond_1
    :goto_4
    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    .line 314
    sget-object v3, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->MultiBiometrics:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    .line 324
    :goto_5
    iget-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDismissActionExist()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 325
    invoke-static {}, Lcom/android/keyguard/KeyguardTextBuilder;->-getcom-android-keyguard-KeyguardConstants$KeyguardDismissActionTypeSwitchesValues()[I

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getDissmissActionType()Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 331
    sget-object v3, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->Active:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    .line 295
    :goto_6
    return-void

    .line 299
    .end local v0    # "isFingerprint":Z
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v3, v6, :cond_0

    .line 300
    const/4 v2, 0x1

    goto :goto_0

    .line 304
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "isFingerprint":Z
    goto :goto_1

    .line 306
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "isIris":Z
    goto :goto_2

    .line 310
    :cond_5
    const/4 v0, 0x1

    goto :goto_3

    .line 309
    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    .line 311
    :cond_7
    const/4 v1, 0x0

    goto :goto_4

    .line 315
    .end local v1    # "isIris":Z
    :cond_8
    if-eqz v0, :cond_9

    .line 316
    sget-object v3, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->Fingerprint:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    goto :goto_5

    .line 317
    :cond_9
    if-eqz v1, :cond_a

    .line 318
    sget-object v3, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->Iris:Lcom/android/keyguard/KeyguardTextBuilder$Biometric;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardTextBuilder$Biometric;->getType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    goto :goto_5

    .line 320
    :cond_a
    const-string/jumbo v3, "none"

    iput-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    goto :goto_5

    .line 327
    :pswitch_0
    sget-object v3, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->ShutDown:Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardTextBuilder$DismissActionType;->getType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    goto :goto_6

    .line 335
    :cond_b
    const-string/jumbo v3, "none"

    iput-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    goto :goto_6

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private updateSecuriyMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 2
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 341
    invoke-static {}, Lcom/android/keyguard/KeyguardTextBuilder;->-getcom-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 355
    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder$Security;->Password:Lcom/android/keyguard/KeyguardTextBuilder$Security;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextBuilder$Security;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    .line 340
    :goto_0
    return-void

    .line 343
    :pswitch_0
    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder$Security;->PIN:Lcom/android/keyguard/KeyguardTextBuilder$Security;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextBuilder$Security;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    goto :goto_0

    .line 346
    :pswitch_1
    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder$Security;->Pattern:Lcom/android/keyguard/KeyguardTextBuilder$Security;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextBuilder$Security;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    goto :goto_0

    .line 349
    :pswitch_2
    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder$Security;->Password:Lcom/android/keyguard/KeyguardTextBuilder$Security;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextBuilder$Security;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    goto :goto_0

    .line 352
    :pswitch_3
    sget-object v0, Lcom/android/keyguard/KeyguardTextBuilder$Security;->Direction:Lcom/android/keyguard/KeyguardTextBuilder$Security;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardTextBuilder$Security;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    goto :goto_0

    .line 341
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getDefaultSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Ljava/lang/String;
    .locals 7
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    const/4 v6, 0x0

    .line 139
    iget-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    iget-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    const v4, 0x10409cc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 143
    :cond_0
    const/4 v2, 0x0

    .line 145
    .local v2, "msgId":I
    const-string/jumbo v0, ""

    .line 147
    .local v0, "msg":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardTextBuilder;->updateSecuriyMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 148
    invoke-direct {p0, v6}, Lcom/android/keyguard/KeyguardTextBuilder;->updateCurrentState(Z)V

    .line 150
    iget-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->kg_biometric_security_active_instructions:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 151
    iget-object v5, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDismissActionType:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 150
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "msgCode":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "string"

    iget-object v5, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 154
    if-eqz v2, :cond_1

    .line 155
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardTextBuilder;->getAddRemainingAttemptIndication(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    :goto_0
    return-object v0

    .line 157
    :cond_1
    const-string/jumbo v3, "KeyguardTextBuilder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t find default string id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPromptSecurityMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;
    .locals 8
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .param p2, "reason"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 172
    iget-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KnoxStateMonitor;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    iget-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    const v4, 0x10409cc

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 176
    :cond_0
    const/4 v2, 0x0

    .line 178
    .local v2, "msgId":I
    const-string/jumbo v0, ""

    .line 180
    .local v0, "msg":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardTextBuilder;->updateSecuriyMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 181
    invoke-direct {p0, v7}, Lcom/android/keyguard/KeyguardTextBuilder;->updateCurrentState(Z)V

    .line 183
    packed-switch p2, :pswitch_data_0

    .line 195
    const-string/jumbo v3, ""

    return-object v3

    .line 185
    :pswitch_0
    sget-object v3, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->Restart:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->getType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mPromptReasonType:Ljava/lang/String;

    .line 198
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->kg_device_biometric_security_reason_instructions:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 199
    iget-object v5, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mBiometricType:Ljava/lang/String;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mPromptReasonType:Ljava/lang/String;

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 198
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "msgCode":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "string"

    iget-object v5, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 202
    if-eqz v2, :cond_1

    .line 203
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardTextBuilder;->getAddRemainingAttemptIndication(I)Ljava/lang/String;

    move-result-object v0

    .line 207
    :goto_1
    return-object v0

    .line 188
    .end local v1    # "msgCode":Ljava/lang/String;
    :pswitch_1
    sget-object v3, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->Timeout:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->getType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mPromptReasonType:Ljava/lang/String;

    goto :goto_0

    .line 191
    :pswitch_2
    sget-object v3, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->DeviceAdmin:Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardTextBuilder$PromptReason;->getType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mPromptReasonType:Ljava/lang/String;

    .line 192
    const-string/jumbo v3, "none"

    iput-object v3, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    goto :goto_0

    .line 205
    .restart local v1    # "msgCode":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "KeyguardTextBuilder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t find prompt string id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 183
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getWarningAutoWipeMessage(II)Ljava/lang/String;
    .locals 11
    .param p1, "attempt"    # I
    .param p2, "remaining"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 251
    const/4 v3, 0x0

    .line 253
    .local v3, "msgId":I
    const-string/jumbo v1, ""

    .line 255
    .local v1, "msg":Ljava/lang/String;
    const-string/jumbo v0, "none"

    .line 256
    .local v0, "attemptType":Ljava/lang/String;
    if-ne p1, v8, :cond_0

    .line 257
    const-string/jumbo v0, "1"

    .line 259
    :cond_0
    const-string/jumbo v4, "none"

    .line 260
    .local v4, "remainingType":Ljava/lang/String;
    if-ne p2, v8, :cond_1

    .line 261
    const-string/jumbo v4, "1"

    .line 264
    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->kg_warning_device_attempt_remaining_auto_wipe:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 265
    iget-object v7, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    aput-object v7, v6, v9

    aput-object v0, v6, v8

    aput-object v4, v6, v10

    .line 264
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "msgCode":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v6, "string"

    iget-object v7, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v2, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 268
    if-eqz v3, :cond_5

    .line 269
    const-string/jumbo v5, "none"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "none"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 270
    iget-object v5, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 281
    :goto_0
    return-object v1

    .line 271
    :cond_2
    const-string/jumbo v5, "1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 272
    iget-object v5, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 273
    :cond_3
    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 274
    iget-object v5, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 276
    :cond_4
    iget-object v5, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 279
    :cond_5
    const-string/jumbo v5, "KeyguardTextBuilder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t find warning auto wipe string id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWarningFRPMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;
    .locals 9
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .param p2, "remaining"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 219
    const/4 v2, 0x0

    .line 221
    .local v2, "msgId":I
    const-string/jumbo v0, ""

    .line 223
    .local v0, "msg":Ljava/lang/String;
    const-string/jumbo v3, "none"

    .line 224
    .local v3, "remainingType":Ljava/lang/String;
    if-ne p2, v8, :cond_0

    .line 225
    const-string/jumbo v3, "1"

    .line 228
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardTextBuilder;->updateSecuriyMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 230
    iget-object v4, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->kg_device_security_remaining_frp:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 231
    iget-object v6, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    aput-object v6, v5, v8

    const/4 v6, 0x2

    aput-object v3, v5, v6

    .line 230
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "msgCode":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "string"

    iget-object v6, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 234
    if-eqz v2, :cond_1

    .line 235
    iget-object v4, p0, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 239
    :goto_0
    return-object v0

    .line 237
    :cond_1
    const-string/jumbo v4, "KeyguardTextBuilder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t find warning frp string id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
