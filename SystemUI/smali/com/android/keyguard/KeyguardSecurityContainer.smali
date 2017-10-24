.class public Lcom/android/keyguard/KeyguardSecurityContainer;
.super Landroid/widget/FrameLayout;
.source "KeyguardSecurityContainer.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecurityContainer$1;,
        Lcom/android/keyguard/KeyguardSecurityContainer$2;,
        Lcom/android/keyguard/KeyguardSecurityContainer$3;,
        Lcom/android/keyguard/KeyguardSecurityContainer$4;,
        Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;,
        Lcom/android/keyguard/KeyguardSecurityContainer$WipeConfirmListener;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues:[I


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field private final mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mIsNavigationBarExist:Z

.field private mIsNotiClickedOnShadeLocked:Z

.field private mIsVerifyUnlockOnly:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mRemainingBeforeWipe:I

.field private mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

.field private mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field private mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

.field private mSettingsCallback:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

.field private mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

.field mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mWipeConfirmListener:Lcom/android/keyguard/KeyguardSecurityContainer$WipeConfirmListener;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardSecurityContainer;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardSecurityContainer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/KeyguardSecurityContainer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsVerifyUnlockOnly:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/KeyguardSecurityContainer;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRemainingBeforeWipe:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method private static synthetic -getcom-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityContainer;->-com-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityContainer;->-com-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues:[I

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

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_f

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_e

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_d

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->DirectionLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_c

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->FMM:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_b

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_a

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_9

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_8

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_7

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_6

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Recovery:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_5

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPerso:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_4

    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_3

    :goto_c
    :try_start_d
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_2

    :goto_d
    :try_start_e
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SmartcardPIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_1

    :goto_e
    :try_start_f
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_0

    :goto_f
    sput-object v0, Lcom/android/keyguard/KeyguardSecurityContainer;->-com-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues:[I

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

.method static synthetic -set0(Lcom/android/keyguard/KeyguardSecurityContainer;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardSecurityContainer;II)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "timeoutMs"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityContainer;->reportFailedUnlockAttempt(II)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showBackupSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/KeyguardSecurityContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showWipeConfirmDialog()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/util/ViewStyleUtils$UpdatedFrom;)V
    .locals 0
    .param p1, "which"    # Lcom/android/keyguard/util/ViewStyleUtils$UpdatedFrom;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateChildViewsLook(Lcom/android/keyguard/util/ViewStyleUtils$UpdatedFrom;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 147
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mWipeConfirmListener:Lcom/android/keyguard/KeyguardSecurityContainer$WipeConfirmListener;

    .line 73
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRemainingBeforeWipe:I

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsNavigationBarExist:Z

    .line 88
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainer$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecurityContainer$1;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 124
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainer$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecurityContainer$2;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSettingsCallback:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    .line 723
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainer$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecurityContainer$3;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 781
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainer$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecurityContainer$4;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 148
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 149
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 150
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 151
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 152
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    .line 154
    invoke-static {p1}, Lcom/android/keyguard/KeyguardRune;->isNavigationBarExist(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsNavigationBarExist:Z

    .line 146
    return-void
.end method

.method private doWipeOutIfMaxFailedAttemptsSinceBoot()V
    .locals 7

    .prologue
    .line 1051
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 1052
    .local v0, "currentUserId":I
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v1

    .line 1054
    .local v1, "failedAttempts":I
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoWipe()Z

    move-result v3

    .line 1056
    .local v3, "isAutoWipe":Z
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v5, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Recovery:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v4, v5, :cond_1

    .line 1057
    invoke-direct {p0, v3, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecFailedAttemptsBeforeWipe(ZI)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 1067
    .local v2, "failedAttemptsBeforeWipe":I
    :goto_0
    const-string/jumbo v4, "KeyguardSecurityView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "doWipeOutIfMaxFailedAttemptsSinceBoot( failedAttemptsBeforeWipe = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1068
    const-string/jumbo v6, " , failedAttempts = "

    .line 1067
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1068
    const-string/jumbo v6, " )"

    .line 1067
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    if-lez v2, :cond_0

    .line 1070
    if-lt v1, v2, :cond_0

    .line 1071
    const-string/jumbo v4, "KeyguardSecurityView"

    const-string/jumbo v5, "doWipeOutIfMaxFailedAttemptsSinceBoot( Too many unlock attempts; device will be wiped! )"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/util/KeyguardReset;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardReset;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5}, Lcom/android/keyguard/util/KeyguardReset;->wipeOut(II)V

    .line 1048
    :cond_0
    return-void

    .line 1060
    .end local v2    # "failedAttemptsBeforeWipe":I
    :cond_1
    invoke-direct {p0, v3, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecFailedAttemptsBeforeWipe(ZI)I

    move-result v2

    .restart local v2    # "failedAttemptsBeforeWipe":I
    goto :goto_0
.end method

.method private getSecFailedAttemptsBeforeWipe(ZI)I
    .locals 4
    .param p1, "isAutoWipe"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 980
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p2}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v1

    .line 981
    .local v1, "maximumFailedPasswordsForWipe":I
    if-lez v1, :cond_1

    move v0, v1

    .line 983
    .local v0, "failedAttemptsBeforeWipe":I
    :cond_0
    :goto_0
    return v0

    .line 982
    .end local v0    # "failedAttemptsBeforeWipe":I
    :cond_1
    if-eqz p1, :cond_0

    const/16 v0, 0xf

    goto :goto_0
.end method

.method private getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;
    .locals 11
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    const/4 v10, 0x0

    .line 219
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v4

    .line 220
    .local v4, "securityViewIdForMode":I
    const/4 v6, 0x0

    .line 221
    .local v6, "view":Lcom/android/keyguard/KeyguardSecurityView;
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v1

    .line 222
    .local v1, "children":I
    const/4 v0, 0x0

    .local v0, "child":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 223
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v7, v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, v4, :cond_2

    .line 224
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v7, v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .end local v6    # "view":Lcom/android/keyguard/KeyguardSecurityView;
    check-cast v6, Lcom/android/keyguard/KeyguardSecurityView;

    .line 228
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getLayoutIdFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v3

    .line 229
    .local v3, "layoutId":I
    if-nez v6, :cond_1

    if-eqz v3, :cond_1

    .line 230
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 231
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const-string/jumbo v7, "KeyguardSecurityView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "inflating id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v2, v3, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 233
    .local v5, "v":Landroid/view/View;
    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v7, v5}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->addView(Landroid/view/View;)V

    .line 234
    invoke-direct {p0, v5}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateSecurityView(Landroid/view/View;)V

    move-object v6, v5

    .line 235
    check-cast v6, Lcom/android/keyguard/KeyguardSecurityView;

    .line 238
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "v":Landroid/view/View;
    :cond_1
    return-object v6

    .line 222
    .end local v3    # "layoutId":I
    .restart local v6    # "view":Lcom/android/keyguard/KeyguardSecurityView;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getSecurityViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 3
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 807
    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityContainer;->-getcom-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 834
    :pswitch_0
    const/4 v1, 0x0

    return v1

    .line 809
    :pswitch_1
    sget v1, Lcom/android/keyguard/R$id;->keyguard_direction_view:I

    return v1

    .line 811
    :pswitch_2
    sget v1, Lcom/android/keyguard/R$id;->keyguard_pattern_view:I

    return v1

    .line 812
    :pswitch_3
    sget v1, Lcom/android/keyguard/R$id;->keyguard_pin_view:I

    return v1

    .line 813
    :pswitch_4
    sget v1, Lcom/android/keyguard/R$id;->keyguard_password_view:I

    return v1

    .line 814
    :pswitch_5
    sget v1, Lcom/android/keyguard/R$id;->keyguard_sim_pin_view:I

    return v1

    .line 816
    :pswitch_6
    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_NOT_REQUIRE_SIMPUK_CODE:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/android/keyguard/R$id;->keyguard_sec_sim_puk_view_tmo:I

    :goto_0
    return v1

    .line 817
    :cond_0
    sget v1, Lcom/android/keyguard/R$id;->keyguard_sim_puk_view:I

    goto :goto_0

    .line 818
    :pswitch_7
    sget v1, Lcom/android/keyguard/R$id;->keyguard_sec_sim_perso_view:I

    return v1

    .line 819
    :pswitch_8
    sget v1, Lcom/android/keyguard/R$id;->keyguard_carrier_view:I

    return v1

    .line 820
    :pswitch_9
    sget v1, Lcom/android/keyguard/R$id;->keyguard_carrierlock_password_view:I

    return v1

    .line 821
    :pswitch_a
    sget v1, Lcom/android/keyguard/R$id;->keyguard_fmm_view:I

    return v1

    .line 822
    :pswitch_b
    sget v1, Lcom/android/keyguard/R$id;->keyguard_recovery_view:I

    return v1

    .line 825
    :pswitch_c
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getUCMVendor()Ljava/lang/String;

    move-result-object v0

    .line 826
    .local v0, "keyguardCSName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 827
    sget v1, Lcom/android/keyguard/R$id;->keyguard_ucm_pin_view:I

    return v1

    .line 829
    :cond_1
    sget v1, Lcom/android/keyguard/R$id;->keyguard_smartcardpin_view:I

    return v1

    .line 831
    .end local v0    # "keyguardCSName":Ljava/lang/String;
    :pswitch_d
    sget v1, Lcom/android/keyguard/R$id;->keyguard_account_view:I

    return v1

    .line 832
    :pswitch_e
    sget v1, Lcom/android/keyguard/R$id;->keyguard_swipe_view:I

    return v1

    .line 807
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_8
        :pswitch_9
        :pswitch_1
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_b
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_c
        :pswitch_e
    .end packed-switch
.end method

.method private getUCMVendor()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1096
    const/4 v1, 0x0

    .line 1097
    .local v1, "keyguardCSName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    .line 1098
    .local v0, "kSm":Lcom/android/keyguard/KnoxStateMonitor;
    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor;->isUCMKeyguardEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1099
    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getUCMVendor()Ljava/lang/String;

    move-result-object v1

    .line 1100
    .local v1, "keyguardCSName":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    if-nez v2, :cond_1

    .line 1101
    return-object v1

    .line 1100
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 1104
    .end local v1    # "keyguardCSName":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private reportFailedUnlockAttempt(II)V
    .locals 17
    .param p1, "userId"    # I
    .param p2, "timeoutMs"    # I

    .prologue
    .line 451
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v14

    add-int/lit8 v4, v14, 0x1

    .line 457
    .local v4, "failedAttempts":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v14}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutoWipe()Z

    move-result v6

    .line 458
    .local v6, "isAutoWipe":Z
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v6, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecFailedAttemptsBeforeWipe(ZI)I

    move-result v5

    .line 463
    .local v5, "failedAttemptsBeforeWipe":I
    if-lez v5, :cond_4

    .line 464
    sub-int v14, v5, v4

    .line 463
    :goto_0
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRemainingBeforeWipe:I

    .line 468
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v5, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateStrongAuthStatus(II)V

    .line 472
    const-string/jumbo v14, "KeyguardSecurityView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "reportFailedUnlockAttempt   \n failedAttemptsBeforeWipe: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 473
    const-string/jumbo v16, "\n mRemainingBeforeWipe  "

    .line 472
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 473
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRemainingBeforeWipe:I

    move/from16 v16, v0

    .line 472
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 474
    const-string/jumbo v16, "\n failedAttempts: "

    .line 472
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v14}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v8

    .line 477
    .local v8, "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v14, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->DirectionLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v8, v14, :cond_5

    const/4 v10, 0x1

    .line 478
    .local v10, "usingDirection":Z
    :goto_1
    sget-object v14, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v8, v14, :cond_6

    const/4 v13, 0x1

    .line 479
    .local v13, "usingPattern":Z
    :goto_2
    sget-object v14, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v8, v14, :cond_7

    const/4 v11, 0x1

    .line 480
    .local v11, "usingPIN":Z
    :goto_3
    sget-object v14, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v8, v14, :cond_8

    const/4 v12, 0x1

    .line 481
    .local v12, "usingPassword":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 482
    sget v15, Lcom/android/keyguard/R$integer;->config_max_unlock_countdown_times:I

    .line 481
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 483
    .local v7, "maxCountdownTimes":I
    if-lez v7, :cond_a

    if-nez v13, :cond_9

    if-nez v11, :cond_9

    if-nez v12, :cond_9

    move v2, v10

    .line 486
    .local v2, "enableTimesCounter":Z
    :goto_5
    if-eqz v2, :cond_b

    if-lt v4, v7, :cond_b

    .line 488
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/keyguard/KeyguardSecurityContainer;->showCountdownWipeDialog(I)V

    .line 531
    :cond_0
    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportFailedStrongAuthUnlockAttempt(I)V

    .line 532
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt(I)V

    .line 535
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/keyguard/KnoxStateMonitor;->updateFailedUnlockAttemptForDeviceDisabled()V

    .line 536
    sget-boolean v14, Lcom/android/keyguard/KeyguardRune;->SUPPORT_WARNING_FRP_MESSAGE:Z

    if-eqz v14, :cond_10

    .line 537
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRemainingBeforeWipe:I

    const/4 v15, 0x1

    if-eq v14, v15, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRemainingBeforeWipe:I

    const/4 v15, 0x5

    if-ne v14, v15, :cond_10

    .line 538
    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRemainingBeforeWipe:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/keyguard/KeyguardSecurityContainer;->showWarningFRPDialog(I)V

    .line 544
    :cond_2
    :goto_7
    if-nez v2, :cond_3

    if-lez p2, :cond_3

    .line 450
    :cond_3
    return-void

    .line 465
    .end local v2    # "enableTimesCounter":Z
    .end local v7    # "maxCountdownTimes":I
    .end local v8    # "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .end local v10    # "usingDirection":Z
    .end local v11    # "usingPIN":Z
    .end local v12    # "usingPassword":Z
    .end local v13    # "usingPattern":Z
    :cond_4
    const v14, 0x7fffffff

    goto/16 :goto_0

    .line 477
    .restart local v8    # "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_5
    const/4 v10, 0x0

    .restart local v10    # "usingDirection":Z
    goto :goto_1

    .line 478
    :cond_6
    const/4 v13, 0x0

    .restart local v13    # "usingPattern":Z
    goto :goto_2

    .line 479
    :cond_7
    const/4 v11, 0x0

    .restart local v11    # "usingPIN":Z
    goto :goto_3

    .line 480
    :cond_8
    const/4 v12, 0x0

    .restart local v12    # "usingPassword":Z
    goto :goto_4

    .line 483
    .restart local v7    # "maxCountdownTimes":I
    :cond_9
    const/4 v2, 0x1

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    goto :goto_5

    .line 489
    .restart local v2    # "enableTimesCounter":Z
    :cond_b
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRemainingBeforeWipe:I

    const/4 v15, 0x5

    if-ge v14, v15, :cond_0

    .line 494
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mDpm:Landroid/app/admin/DevicePolicyManager;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/app/admin/DevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    move-result v3

    .line 495
    .local v3, "expiringUser":I
    const/4 v9, 0x1

    .line 496
    .local v9, "userType":I
    move/from16 v0, p1

    if-ne v3, v0, :cond_d

    .line 498
    if-eqz v3, :cond_c

    .line 499
    const/4 v9, 0x3

    .line 504
    :cond_c
    :goto_8
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRemainingBeforeWipe:I

    if-lez v14, :cond_e

    .line 505
    if-nez v6, :cond_0

    sget-boolean v14, Lcom/android/keyguard/KeyguardRune;->SUPPORT_WARNING_FRP_MESSAGE:Z

    if-nez v14, :cond_0

    .line 506
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRemainingBeforeWipe:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14, v9}, Lcom/android/keyguard/KeyguardSecurityContainer;->showAlmostAtWipeDialog(III)V

    goto :goto_6

    .line 501
    :cond_d
    const/16 v14, -0x2710

    if-eq v3, v14, :cond_c

    .line 502
    const/4 v9, 0x2

    goto :goto_8

    .line 509
    :cond_e
    const-string/jumbo v14, "KeyguardSecurityView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Too many unlock attempts; user "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " will be wiped!"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    if-nez v6, :cond_f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v3}, Landroid/app/admin/DevicePolicyManager;->semIsPasswordRecoverable(Landroid/content/ComponentName;I)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 513
    const-string/jumbo v14, "KeyguardSecurityView"

    const-string/jumbo v15, "Too many unlock attempts; device will be display recovery screen!"

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mDpm:Landroid/app/admin/DevicePolicyManager;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/app/admin/DevicePolicyManager;->recoverPassword(I)V

    .line 515
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v15, 0x1

    move/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Lcom/android/internal/widget/LockPatternUtils;->setRecoveryScreenLocked(ZI)V

    .line 516
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    invoke-interface {v14}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->reset()V

    goto/16 :goto_6

    .line 520
    :cond_f
    const-string/jumbo v14, "KeyguardSecurityView"

    const-string/jumbo v15, "Too many unlock attempts; device will be wiped !"

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/keyguard/util/KeyguardReset;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardReset;

    move-result-object v14

    invoke-virtual {v14, v4, v9}, Lcom/android/keyguard/util/KeyguardReset;->wipeOut(II)V

    goto/16 :goto_6

    .line 539
    .end local v3    # "expiringUser":I
    .end local v9    # "userType":I
    :cond_10
    if-eqz v6, :cond_2

    .line 540
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRemainingBeforeWipe:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    .line 541
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRemainingBeforeWipe:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14}, Lcom/android/keyguard/KeyguardSecurityContainer;->showWarningAtAutoWipeDialog(II)V

    goto/16 :goto_7
.end method

.method private showAlmostAtWipeDialog(III)V
    .locals 7
    .param p1, "attempts"    # I
    .param p2, "remaining"    # I
    .param p3, "userType"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, "message":Ljava/lang/String;
    packed-switch p3, :pswitch_data_0

    .line 370
    .end local v0    # "message":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void

    .line 346
    .restart local v0    # "message":Ljava/lang/String;
    :pswitch_0
    if-ne p1, v5, :cond_0

    .line 347
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_sec_1_failed_attempt_almost_at_wipe:I

    new-array v3, v5, [Ljava/lang/Object;

    .line 348
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 347
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "message":Ljava/lang/String;
    goto :goto_0

    .line 349
    .local v0, "message":Ljava/lang/String;
    :cond_0
    if-ne p2, v5, :cond_1

    .line 350
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_sec_1_remaing_count_almost_at_wipe:I

    new-array v3, v5, [Ljava/lang/Object;

    .line 351
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 350
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "message":Ljava/lang/String;
    goto :goto_0

    .line 353
    .local v0, "message":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_sec_failed_attempts_almost_at_wipe:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 354
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 353
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "message":Ljava/lang/String;
    goto :goto_0

    .line 362
    .local v0, "message":Ljava/lang/String;
    :pswitch_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_failed_attempts_almost_at_erase_user:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 363
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 362
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "message":Ljava/lang/String;
    goto :goto_0

    .line 366
    .local v0, "message":Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_failed_attempts_almost_at_erase_profile:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 367
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 366
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "message":Ljava/lang/String;
    goto :goto_0

    .line 343
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private showBackupSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 1122
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 1121
    return-void
.end method

.method private showCountdownWipeDialog(I)V
    .locals 7
    .param p1, "attempts"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 393
    sget v1, Lcom/android/keyguard/R$string;->kg_failed_attempts_now_wiping:I

    .line 394
    .local v1, "msgId":I
    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityContainer;->-getcom-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 405
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mWipeConfirmListener:Lcom/android/keyguard/KeyguardSecurityContainer$WipeConfirmListener;

    if-nez v2, :cond_0

    .line 406
    new-instance v2, Lcom/android/keyguard/KeyguardSecurityContainer$WipeConfirmListener;

    invoke-direct {v2, p0, v4}, Lcom/android/keyguard/KeyguardSecurityContainer$WipeConfirmListener;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardSecurityContainer$WipeConfirmListener;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mWipeConfirmListener:Lcom/android/keyguard/KeyguardSecurityContainer$WipeConfirmListener;

    .line 408
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 409
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 408
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 411
    new-instance v3, Lcom/android/keyguard/KeyguardSecurityContainer$6;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardSecurityContainer$6;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V

    .line 410
    const v4, 0x10404a3

    .line 408
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 416
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mWipeConfirmListener:Lcom/android/keyguard/KeyguardSecurityContainer$WipeConfirmListener;

    const v4, 0x10404a4

    .line 408
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 419
    .local v0, "dialog":Landroid/app/AlertDialog;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 420
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 422
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 392
    return-void

    .line 396
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :pswitch_0
    sget v1, Lcom/android/keyguard/R$string;->kg_failed_pin_attempts_now_wiping:I

    goto :goto_0

    .line 399
    :pswitch_1
    sget v1, Lcom/android/keyguard/R$string;->kg_failed_password_attempts_now_wiping:I

    goto :goto_0

    .line 402
    :pswitch_2
    sget v1, Lcom/android/keyguard/R$string;->kg_failed_pattern_attempts_now_wiping:I

    goto :goto_0

    .line 394
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 276
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 278
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    .line 280
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 283
    const/4 v1, 0x0

    .line 280
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 284
    sget v1, Lcom/android/keyguard/R$string;->ok:I

    .line 285
    new-instance v2, Lcom/android/keyguard/KeyguardSecurityContainer$5;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardSecurityContainer$5;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V

    .line 280
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    .line 292
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setDisableBiometricBySecurityDialog(Z)V

    .line 296
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 274
    return-void
.end method

.method private showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 13
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 652
    const-string/jumbo v8, "KeyguardSecurityView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "showSecurityScreen("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v8, :cond_0

    return-void

    .line 656
    :cond_0
    iget-object v11, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v8, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v8, :cond_8

    move v8, v9

    :goto_0
    invoke-virtual {v11, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateSecurityModeChanged(Z)V

    .line 658
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v8}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v5

    .line 659
    .local v5, "oldView":Lcom/android/keyguard/KeyguardSecurityView;
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v4

    .line 662
    .local v4, "newView":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v5, :cond_1

    .line 663
    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    .line 664
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v5, v8}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 666
    :cond_1
    sget-object v8, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v8, :cond_2

    .line 667
    const/4 v8, 0x2

    invoke-interface {v4, v8}, Lcom/android/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 668
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4, v8}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 669
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v11, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-virtual {v8, v11}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 673
    :cond_2
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v1

    .line 675
    .local v1, "childCount":I
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v7

    .line 676
    .local v7, "securityViewIdForMode":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 677
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v8, v2}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    if-ne v8, v7, :cond_9

    .line 678
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v8, v2}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setDisplayedChild(I)V

    .line 688
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->needsFitsSystemWindows(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 689
    invoke-virtual {p0, v9}, Lcom/android/keyguard/KeyguardSecurityContainer;->setFitsSystemWindows(Z)V

    .line 694
    :goto_2
    iget-boolean v8, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsNavigationBarExist:Z

    if-eqz v8, :cond_6

    .line 695
    const/4 v0, 0x0

    .line 696
    .local v0, "bottomMargin":I
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v8, v9, :cond_b

    const/4 v3, 0x1

    .line 698
    .local v3, "isMobileKeyboardCovered":Z
    :goto_3
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 699
    .local v6, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 700
    const v9, 0x1050018

    .line 699
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 701
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->needsInput()Z

    move-result v8

    if-nez v8, :cond_4

    if-nez v3, :cond_4

    .line 702
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDesktopMode()Z

    move-result v8

    .line 701
    if-eqz v8, :cond_5

    .line 703
    :cond_4
    const/4 v0, 0x0

    .line 705
    :cond_5
    invoke-virtual {v6, v10, v10, v10, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 706
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v8, v6}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 708
    .end local v0    # "bottomMargin":I
    .end local v3    # "isMobileKeyboardCovered":Z
    .end local v6    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_6
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 709
    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    .line 710
    sget-object v9, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v9, :cond_7

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecurityView;->needsInput()Z

    move-result v10

    .line 709
    :cond_7
    invoke-interface {v8, p1, v10}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->onSecurityModeChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V

    .line 651
    return-void

    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v4    # "newView":Lcom/android/keyguard/KeyguardSecurityView;
    .end local v5    # "oldView":Lcom/android/keyguard/KeyguardSecurityView;
    .end local v7    # "securityViewIdForMode":I
    :cond_8
    move v8, v10

    .line 656
    goto/16 :goto_0

    .line 676
    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    .restart local v4    # "newView":Lcom/android/keyguard/KeyguardSecurityView;
    .restart local v5    # "oldView":Lcom/android/keyguard/KeyguardSecurityView;
    .restart local v7    # "securityViewIdForMode":I
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 691
    :cond_a
    invoke-virtual {p0, v10}, Lcom/android/keyguard/KeyguardSecurityContainer;->setFitsSystemWindows(Z)V

    goto :goto_2

    .line 696
    .restart local v0    # "bottomMargin":I
    :cond_b
    const/4 v3, 0x0

    .restart local v3    # "isMobileKeyboardCovered":Z
    goto :goto_3
.end method

.method private showWarningAtAutoWipeDialog(II)V
    .locals 3
    .param p1, "attempts"    # I
    .param p2, "remaining"    # I

    .prologue
    const/4 v2, 0x0

    .line 1034
    const/4 v0, 0x0

    .line 1036
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardTextBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/keyguard/KeyguardTextBuilder;->getWarningAutoWipeMessage(II)Ljava/lang/String;

    move-result-object v0

    .line 1044
    .local v0, "message":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1045
    invoke-direct {p0, v2, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    :cond_0
    return-void
.end method

.method private showWarningFRPDialog(I)V
    .locals 3
    .param p1, "remaining"    # I

    .prologue
    .line 1078
    const/4 v0, 0x0

    .line 1079
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardTextBuilder;

    move-result-object v1

    .line 1080
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    .line 1079
    invoke-virtual {v1, v2, p1}, Lcom/android/keyguard/KeyguardTextBuilder;->getWarningFRPMessage(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)Ljava/lang/String;

    move-result-object v0

    .line 1081
    .local v0, "message":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    return-void
.end method

.method private showWipeConfirmDialog()V
    .locals 4

    .prologue
    .line 426
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 427
    sget v2, Lcom/android/keyguard/R$string;->kg_failed_attempts_now_wiping_confirm:I

    .line 426
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 428
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mWipeConfirmListener:Lcom/android/keyguard/KeyguardSecurityContainer$WipeConfirmListener;

    const v3, 0x10404a3

    .line 426
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 429
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mWipeConfirmListener:Lcom/android/keyguard/KeyguardSecurityContainer$WipeConfirmListener;

    const v3, 0x10404a4

    .line 426
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 430
    const/4 v2, 0x0

    .line 426
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 432
    .local v0, "dialog":Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 433
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 435
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 425
    return-void
.end method

.method private updateChildViewsLook(Lcom/android/keyguard/util/ViewStyleUtils$UpdatedFrom;)V
    .locals 4
    .param p1, "which"    # Lcom/android/keyguard/util/ViewStyleUtils$UpdatedFrom;

    .prologue
    .line 195
    const-string/jumbo v1, "KeyguardSecurityView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateChildViewsLook() which="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 197
    .local v0, "view":Lcom/android/keyguard/KeyguardSecurityView;
    if-eqz v0, :cond_0

    .line 198
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->updateChildViewsLook()V

    .line 194
    :cond_0
    return-void
.end method

.method private updateSecurityView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 242
    instance-of v1, p1, Lcom/android/keyguard/KeyguardSecurityView;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 243
    check-cast v0, Lcom/android/keyguard/KeyguardSecurityView;

    .line 244
    .local v0, "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 245
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityView;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 241
    .end local v0    # "ksv":Lcom/android/keyguard/KeyguardSecurityView;
    :goto_0
    return-void

    .line 247
    :cond_0
    const-string/jumbo v1, "KeyguardSecurityView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a KeyguardSecurityView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateStrongAuthStatus(II)V
    .locals 6
    .param p1, "failedAttemptsBeforeWipe"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 998
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v4, p2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v2

    if-ne v2, v4, :cond_2

    const/4 v0, 0x1

    .line 1000
    .local v0, "isFingerPrint":Z
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1001
    const/16 v3, 0x10

    .line 1000
    invoke-virtual {v2, v3, p2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v2

    if-ne v2, v4, :cond_3

    const/4 v1, 0x1

    .line 1002
    .local v1, "isIris":Z
    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 1003
    :cond_0
    if-lez p1, :cond_1

    .line 1004
    const/16 v2, 0xa

    if-lt p1, v2, :cond_4

    .line 1009
    iget v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRemainingBeforeWipe:I

    const/4 v3, 0x5

    if-gt v2, v3, :cond_1

    .line 1010
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v5, p2}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 1012
    if-eqz v1, :cond_1

    .line 1013
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopIrisCamera()V

    .line 997
    :cond_1
    :goto_2
    return-void

    .line 998
    .end local v0    # "isFingerPrint":Z
    .end local v1    # "isIris":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isFingerPrint":Z
    goto :goto_0

    .line 1000
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "isIris":Z
    goto :goto_1

    .line 1021
    :cond_4
    iget v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mRemainingBeforeWipe:I

    if-gt v2, v5, :cond_1

    .line 1022
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v5, p2}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 1024
    if-eqz v1, :cond_1

    .line 1025
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopIrisCamera()V

    goto :goto_2
.end method


# virtual methods
.method public getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v0
.end method

.method public getCurrentSecurityModeContentDescription()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 211
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 212
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 215
    :cond_0
    const-string/jumbo v1, ""

    return-object v1
.end method

.method protected getLayoutIdFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .locals 3
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 839
    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityContainer;->-getcom-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 866
    :pswitch_0
    const/4 v1, 0x0

    return v1

    .line 841
    :pswitch_1
    sget v1, Lcom/android/keyguard/R$layout;->keyguard_direction_lock_view:I

    return v1

    .line 843
    :pswitch_2
    sget v1, Lcom/android/keyguard/R$layout;->keyguard_sec_pattern_view:I

    return v1

    .line 844
    :pswitch_3
    sget v1, Lcom/android/keyguard/R$layout;->keyguard_sec_pin_view:I

    return v1

    .line 845
    :pswitch_4
    sget v1, Lcom/android/keyguard/R$layout;->keyguard_sec_password_view:I

    return v1

    .line 846
    :pswitch_5
    sget v1, Lcom/android/keyguard/R$layout;->keyguard_sec_sim_pin_view:I

    return v1

    .line 848
    :pswitch_6
    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_NOT_REQUIRE_SIMPUK_CODE:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/android/keyguard/R$layout;->keyguard_sec_sim_puk_view_tmo:I

    :goto_0
    return v1

    .line 849
    :cond_0
    sget v1, Lcom/android/keyguard/R$layout;->keyguard_sec_sim_puk_view:I

    goto :goto_0

    .line 850
    :pswitch_7
    sget v1, Lcom/android/keyguard/R$layout;->keyguard_sec_sim_perso_view:I

    return v1

    .line 851
    :pswitch_8
    sget v1, Lcom/android/keyguard/R$layout;->keyguard_carrier_view:I

    return v1

    .line 852
    :pswitch_9
    sget v1, Lcom/android/keyguard/R$layout;->keyguard_carrierlock_password_view:I

    return v1

    .line 853
    :pswitch_a
    sget v1, Lcom/android/keyguard/R$layout;->keyguard_fmm_view:I

    return v1

    .line 854
    :pswitch_b
    sget v1, Lcom/android/keyguard/R$layout;->keyguard_recovery_view:I

    return v1

    .line 857
    :pswitch_c
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getUCMVendor()Ljava/lang/String;

    move-result-object v0

    .line 858
    .local v0, "keyguardCSName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 859
    sget v1, Lcom/android/keyguard/R$layout;->keyguard_ucm_pin_view:I

    return v1

    .line 861
    :cond_1
    sget v1, Lcom/android/keyguard/R$layout;->keyguard_smartcardpin_view:I

    return v1

    .line 863
    .end local v0    # "keyguardCSName":Ljava/lang/String;
    :pswitch_d
    sget v1, Lcom/android/keyguard/R$layout;->keyguard_account_view:I

    return v1

    .line 864
    :pswitch_e
    sget v1, Lcom/android/keyguard/R$layout;->keyguard_swipe_view:I

    return v1

    .line 839
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_8
        :pswitch_9
        :pswitch_1
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_b
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_c
        :pswitch_e
    .end packed-switch
.end method

.method public getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    return-object v0
.end method

.method public needsFitsSystemWindows(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z
    .locals 3
    .param p1, "mode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 908
    if-eqz p1, :cond_2

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Recovery:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 909
    :cond_1
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->CarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 908
    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->needsInput()Z

    move-result v0

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1089
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1090
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 1088
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    .line 252
    sget v0, Lcom/android/keyguard/R$id;->view_flipper:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 253
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 254
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 257
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor;->updateFailedUnlockAttemptForDeviceDisabled()V

    .line 260
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSettingsCallback:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    .line 261
    const-string/jumbo v3, "white_lockscreen_wallpaper"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 260
    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/SettingsHelper;->registerCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 264
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->doWipeOutIfMaxFailedAttemptsSinceBoot()V

    .line 251
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    .line 170
    :cond_0
    return-void
.end method

.method public onResume(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 163
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->reset()V

    .line 919
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 915
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 914
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 2
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 270
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityModel;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 271
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 268
    return-void
.end method

.method public setNotiClickedOnShadeLocked(Z)V
    .locals 3
    .param p1, "isNotiClickedOnShadeLocked"    # Z

    .prologue
    .line 1110
    const-string/jumbo v0, "KeyguardSecurityView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isNotiClickedOnShadeLocked= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsNotiClickedOnShadeLocked:Z

    .line 1109
    return-void
.end method

.method public setSecurityCallback(Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    .line 158
    return-void
.end method

.method public showMessage(Ljava/lang/String;I)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 940
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    .line 941
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityView;->showMessage(Ljava/lang/String;I)V

    .line 939
    :cond_0
    return-void
.end method

.method showNextSecurityScreenOrFinish(Z)Z
    .locals 9
    .param p1, "authenticated"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 566
    const-string/jumbo v4, "KeyguardSecurityView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showNextSecurityScreenOrFinish("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/4 v0, 0x0

    .line 568
    .local v0, "finish":Z
    const/4 v3, 0x0

    .line 569
    .local v3, "strongAuth":Z
    sget-boolean v4, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SHOWING_SWIPE_BOUNCER:Z

    if-eqz v4, :cond_3

    .line 570
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v4, v5, :cond_3

    .line 571
    const/4 v0, 0x1

    .line 632
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 634
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 635
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setDisableBiometricBySecurityDialog(Z)V

    .line 636
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 637
    iput-object v8, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    .line 640
    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    invoke-interface {v4, v3}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->finish(Z)V

    .line 642
    :cond_2
    return v0

    .line 572
    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 573
    sget-boolean v4, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SHOWING_SWIPE_BOUNCER:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsNotiClickedOnShadeLocked:Z

    if-eqz v4, :cond_4

    .line 574
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0

    .line 576
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 578
    :cond_5
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v4, v5, :cond_8

    .line 579
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    .line 580
    .local v2, "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-boolean v4, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SHOWING_SWIPE_BOUNCER:Z

    if-eqz v4, :cond_6

    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v4, v2, :cond_6

    .line 581
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsNotiClickedOnShadeLocked:Z

    .line 580
    if-eqz v4, :cond_6

    .line 582
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0

    .line 583
    :cond_6
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v4, v2, :cond_7

    .line 584
    const/4 v0, 0x1

    goto :goto_0

    .line 586
    :cond_7
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_0

    .line 588
    .end local v2    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_8
    if-eqz p1, :cond_0

    .line 589
    invoke-static {}, Lcom/android/keyguard/KeyguardSecurityContainer;->-getcom-android-keyguard-KeyguardSecurityModel$SecurityModeSwitchesValues()[I

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 627
    :pswitch_0
    const-string/jumbo v4, "KeyguardSecurityView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bad security screen "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", fail safe"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-virtual {p0, v7}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    goto/16 :goto_0

    .line 598
    :pswitch_1
    const/4 v3, 0x1

    .line 599
    const/4 v0, 0x1

    .line 600
    goto/16 :goto_0

    .line 608
    :pswitch_2
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    .line 609
    .restart local v2    # "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 610
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    .line 609
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    .line 612
    .local v1, "isLockscreenDisabled":Z
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KnoxStateMonitor;->isLockScreenDisabledbyKNOX()Z

    move-result v4

    .line 611
    if-eqz v4, :cond_9

    .line 613
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 615
    :cond_9
    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v2, v4, :cond_a

    if-eqz v1, :cond_b

    .line 619
    :cond_a
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v4

    .line 618
    if-eqz v4, :cond_c

    if-eqz v1, :cond_c

    .line 620
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto/16 :goto_0

    .line 617
    :cond_b
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto/16 :goto_0

    .line 622
    :cond_c
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 589
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method showPrimarySecurityScreen(Z)V
    .locals 4
    .param p1, "turningOff"    # Z

    .prologue
    .line 555
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 556
    .local v0, "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    const-string/jumbo v1, "KeyguardSecurityView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showPrimarySecurityScreen(turningOff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 554
    return-void
.end method

.method public showPromptReason(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 930
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_1

    .line 931
    if-eqz p1, :cond_0

    .line 932
    const-string/jumbo v0, "KeyguardSecurityView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Strong auth required, reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->showPromptReason(I)V

    .line 929
    :cond_1
    return-void
.end method

.method public startAppearAnimation()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->startAppearAnimation()V

    .line 176
    :cond_0
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "onFinishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->startDisappearAnimation(Ljava/lang/Runnable;)Z

    move-result v0

    return v0

    .line 187
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateChildViewsLook()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method
