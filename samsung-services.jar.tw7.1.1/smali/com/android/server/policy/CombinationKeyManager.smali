.class public Lcom/android/server/policy/CombinationKeyManager;
.super Ljava/lang/Object;
.source "CombinationKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/CombinationKeyManager$10;,
        Lcom/android/server/policy/CombinationKeyManager$11;,
        Lcom/android/server/policy/CombinationKeyManager$1;,
        Lcom/android/server/policy/CombinationKeyManager$2;,
        Lcom/android/server/policy/CombinationKeyManager$3;,
        Lcom/android/server/policy/CombinationKeyManager$4;,
        Lcom/android/server/policy/CombinationKeyManager$5;,
        Lcom/android/server/policy/CombinationKeyManager$6;,
        Lcom/android/server/policy/CombinationKeyManager$7;,
        Lcom/android/server/policy/CombinationKeyManager$8;,
        Lcom/android/server/policy/CombinationKeyManager$9;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final KEYGUARD_SCREENSHOT_CHORD_DELAY_MULTIPLIER:F = 2.5f

.field private static final QUICKSHOT_CHORD_DEBOUNDCE_DELAY_MLLIS:J = 0x15eL

.field private static final QUICKSHOT_CHORD_KEY_INTERVEAL_TIME_MILLIS:J = 0x96L

.field private static final SAFETYASSURANCE_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0xfaL

.field private static final SAFE_DEBUG:Z

.field static final SCREENCAPTURE_ORIGINAL:I = 0x1

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field private static final SYSDUMP_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field private static final TAG:Ljava/lang/String; = "CombinationKeyManager"


# instance fields
.field private final mAccessControlChordLongPress:Ljava/lang/Runnable;

.field private mBackKeyConsumed:Z

.field private mBackKeyTime:J

.field private mBackKeyTriggered:Z

.field private mCameraKeyConsumed:Z

.field private mCameraKeyTime:J

.field private mCameraKeyTriggered:Z

.field private mCameraRecordKeyConsumed:Z

.field private mCameraRecordKeyTime:J

.field private mCameraRecordKeyTriggered:Z

.field private mCombinationShortPressed:Z

.field mContext:Landroid/content/Context;

.field private final mDirectAccessChordLongPress:Ljava/lang/Runnable;

.field private mEnterKeyConsumed:Z

.field private mEnterKeyTime:J

.field private mEnterKeyTriggered:Z

.field private final mFactoryTestChordLongPress:Ljava/lang/Runnable;

.field private mFlashKeyConsumed:Z

.field private mFlashKeyTime:J

.field private mFlashKeyTriggered:Z

.field mHandler:Landroid/os/Handler;

.field private mHasPermanentMenuKey:Z

.field private mHomeKeyConsumed:Z

.field private mHomeKeyTime:J

.field private mHomeKeyTriggered:Z

.field private mMenuConsumed:Z

.field private mMenuTime:J

.field private mMenuTriggered:Z

.field mPWM:Lcom/android/server/policy/PhoneWindowManager;

.field private mPowerKeyConsumed:Z

.field private mPowerKeyTime:J

.field private mPowerKeyTriggered:Z

.field mPowerManager:Landroid/os/PowerManager;

.field private final mQuickShotChordLongPress:Ljava/lang/Runnable;

.field private mRecentKeyConsumed:Z

.field private mRecentKeyTime:J

.field private mRecentKeyTriggered:Z

.field private final mResetHomeKeyTriggered:Ljava/lang/Runnable;

.field private final mResetVolumeDownKeyTriggered:Ljava/lang/Runnable;

.field private final mResetVolumeUpKeyTriggered:Ljava/lang/Runnable;

.field mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

.field private final mSafetyAssuranceChordLongPress:Ljava/lang/Runnable;

.field mSafetyAssuranceTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

.field mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mScreenshotChordLongPress:Ljava/lang/Runnable;

.field private final mStopLockTaskModeChordLongPress:Ljava/lang/Runnable;

.field private final mSysDumpLongPress:Ljava/lang/Runnable;

.field private mVolumeDownKeyConsumed:Z

.field private mVolumeDownKeyTime:J

.field private mVolumeDownKeyTriggered:Z

.field private mVolumeUpKeyConsumed:Z

.field private mVolumeUpKeyTime:J

.field private mVolumeUpKeyTriggered:Z

.field private mWiFiProtectedSetupKeyConsumed:Z

.field private mWiFiProtectedSetupKeyTime:J

.field private mWiFiProtectedSetupKeyTriggered:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/CombinationKeyManager;->SAFE_DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/CombinationKeyManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyTriggered:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/CombinationKeyManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/CombinationKeyManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/CombinationKeyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/CombinationKeyManager;->mCombinationShortPressed:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/policy/CombinationKeyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyTriggered:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/policy/CombinationKeyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/policy/CombinationKeyManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/CombinationKeyManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 72
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/policy/CombinationKeyManager;->SAFE_DEBUG:Z

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneWindowManager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p3, "samsungPhoneWindowManager"    # Lcom/android/server/policy/SamsungPhoneWindowManager;

    .prologue
    const/4 v2, 0x1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    .line 653
    new-instance v0, Lcom/android/server/policy/CombinationKeyManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/CombinationKeyManager$1;-><init>(Lcom/android/server/policy/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mDirectAccessChordLongPress:Ljava/lang/Runnable;

    .line 701
    new-instance v0, Lcom/android/server/policy/CombinationKeyManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/CombinationKeyManager$2;-><init>(Lcom/android/server/policy/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mSysDumpLongPress:Ljava/lang/Runnable;

    .line 779
    new-instance v0, Lcom/android/server/policy/CombinationKeyManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/CombinationKeyManager$3;-><init>(Lcom/android/server/policy/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    .line 811
    new-instance v0, Lcom/android/server/policy/CombinationKeyManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/CombinationKeyManager$4;-><init>(Lcom/android/server/policy/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mAccessControlChordLongPress:Ljava/lang/Runnable;

    .line 839
    new-instance v0, Lcom/android/server/policy/CombinationKeyManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/policy/CombinationKeyManager$5;-><init>(Lcom/android/server/policy/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mSafetyAssuranceChordLongPress:Ljava/lang/Runnable;

    .line 869
    new-instance v0, Lcom/android/server/policy/CombinationKeyManager$6;

    invoke-direct {v0, p0}, Lcom/android/server/policy/CombinationKeyManager$6;-><init>(Lcom/android/server/policy/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mFactoryTestChordLongPress:Ljava/lang/Runnable;

    .line 908
    new-instance v0, Lcom/android/server/policy/CombinationKeyManager$7;

    invoke-direct {v0, p0}, Lcom/android/server/policy/CombinationKeyManager$7;-><init>(Lcom/android/server/policy/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mQuickShotChordLongPress:Ljava/lang/Runnable;

    .line 953
    new-instance v0, Lcom/android/server/policy/CombinationKeyManager$8;

    invoke-direct {v0, p0}, Lcom/android/server/policy/CombinationKeyManager$8;-><init>(Lcom/android/server/policy/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mStopLockTaskModeChordLongPress:Ljava/lang/Runnable;

    .line 968
    new-instance v0, Lcom/android/server/policy/CombinationKeyManager$9;

    invoke-direct {v0, p0}, Lcom/android/server/policy/CombinationKeyManager$9;-><init>(Lcom/android/server/policy/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mResetHomeKeyTriggered:Ljava/lang/Runnable;

    .line 978
    new-instance v0, Lcom/android/server/policy/CombinationKeyManager$10;

    invoke-direct {v0, p0}, Lcom/android/server/policy/CombinationKeyManager$10;-><init>(Lcom/android/server/policy/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mResetVolumeDownKeyTriggered:Ljava/lang/Runnable;

    .line 988
    new-instance v0, Lcom/android/server/policy/CombinationKeyManager$11;

    invoke-direct {v0, p0}, Lcom/android/server/policy/CombinationKeyManager$11;-><init>(Lcom/android/server/policy/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mResetVolumeUpKeyTriggered:Ljava/lang/Runnable;

    .line 144
    iput-object p1, p0, Lcom/android/server/policy/CombinationKeyManager;->mContext:Landroid/content/Context;

    .line 145
    iput-object p2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    .line 146
    iput-object p3, p0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    .line 147
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerManager:Landroid/os/PowerManager;

    .line 149
    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerManager:Landroid/os/PowerManager;

    .line 150
    const-string v1, "PhoneWindowManager.mSafetyAssuranceWakeLock"

    .line 149
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 151
    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerManager:Landroid/os/PowerManager;

    .line 152
    const-string v1, "PhoneWindowManager.mSafetyAssuranceTimeoutWakeLock"

    .line 151
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mSafetyAssuranceTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 143
    return-void
.end method

.method private cancelPendingChordAction()V
    .locals 2

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/CombinationKeyManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 664
    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/CombinationKeyManager;->mAccessControlChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 665
    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/CombinationKeyManager;->mSafetyAssuranceChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 666
    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/CombinationKeyManager;->mFactoryTestChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 667
    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/CombinationKeyManager;->mQuickShotChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 668
    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/CombinationKeyManager;->mStopLockTaskModeChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 669
    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/CombinationKeyManager;->mDirectAccessChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 671
    const-string v0, ""

    const-string v1, "RestrictedInput"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/CombinationKeyManager;->mSysDumpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 662
    :cond_1
    return-void
.end method

.method private checkTriggerDirectAccess()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 603
    iget-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mCombinationShortPressed:Z

    if-eqz v4, :cond_1

    .line 604
    iput-boolean v6, p0, Lcom/android/server/policy/CombinationKeyManager;->mCombinationShortPressed:Z

    .line 607
    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v4

    invoke-static {v4}, Lcom/android/server/policy/SamsungPolicyProperties;->isVzwSetupWizardRunning(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 608
    const-string v4, "CombinationKeyManager"

    const-string v5, "block to trigger accessiblity when Verizon Setup Wizard Running"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    return-void

    .line 612
    :cond_0
    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 613
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.samsung.action.DIRECT_ACCESS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 614
    .local v1, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 615
    const-string v6, "com.samsung.permission.DIRECT_ACCESS"

    .line 614
    invoke-virtual {v4, v1, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 616
    const-string v4, "CombinationKeyManager"

    const-string v5, "direct access mesage : broadcast"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 618
    :cond_2
    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "setupwizard_bixby_mode"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 619
    .local v2, "isBSUW":I
    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    .line 620
    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104095a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 621
    .local v3, "msg":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 622
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 623
    .local v0, "handler":Landroid/os/Handler;
    new-instance v4, Lcom/android/server/policy/CombinationKeyManager$12;

    invoke-direct {v4, p0, v3}, Lcom/android/server/policy/CombinationKeyManager$12;-><init>(Lcom/android/server/policy/CombinationKeyManager;Ljava/lang/String;)V

    .line 628
    const-wide/16 v6, 0x0

    .line 623
    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 630
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_3
    const-string v4, "CombinationKeyManager"

    const-string v5, "block to trigger talkbackMode when BSUW is enable"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    return-void

    .line 633
    .end local v3    # "msg":Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->callAccessibilityTalkbackMode()V

    goto :goto_0
.end method

.method private getChordLongPressDelay()J
    .locals 2

    .prologue
    .line 679
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method private interceptAccessControlChord()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x96

    const/4 v4, 0x1

    .line 788
    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isUseAccessControl()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 789
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyTriggered:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_3

    .line 798
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraRecordKeyTriggered:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_2

    .line 799
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 800
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 801
    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraRecordKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 802
    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyConsumed:Z

    .line 803
    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraRecordKeyConsumed:Z

    .line 804
    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 805
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    .line 806
    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/CombinationKeyManager;->mAccessControlChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 787
    .end local v0    # "now":J
    :cond_2
    :goto_0
    return-void

    .line 789
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-nez v2, :cond_1

    .line 790
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 791
    .restart local v0    # "now":J
    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 792
    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 793
    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyConsumed:Z

    .line 794
    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyConsumed:Z

    .line 795
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    .line 796
    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/CombinationKeyManager;->mAccessControlChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private interceptFactoryTestChord()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x96

    const/4 v4, 0x1

    .line 855
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 856
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mWiFiProtectedSetupKeyTriggered:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_1

    .line 857
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 858
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 859
    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mWiFiProtectedSetupKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 860
    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mWiFiProtectedSetupKeyConsumed:Z

    .line 861
    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyConsumed:Z

    .line 862
    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 863
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    .line 864
    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/CombinationKeyManager;->mFactoryTestChordLongPress:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 854
    .end local v0    # "now":J
    :cond_1
    return-void
.end method

.method private interceptForAccessibility()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x96

    const/4 v4, 0x1

    .line 639
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_1

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 641
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 642
    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 643
    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mCombinationShortPressed:Z

    .line 644
    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyConsumed:Z

    .line 645
    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyConsumed:Z

    .line 646
    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 647
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    .line 648
    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/CombinationKeyManager;->mDirectAccessChordLongPress:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private interceptQuickShotChord()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x15e

    const/4 v6, 0x1

    .line 889
    invoke-static {}, Lcom/android/server/policy/SamsungPolicyProperties;->isSupportCameraQuickShot()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 890
    :cond_0
    invoke-static {}, Lcom/android/server/policy/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 891
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraKeyTriggered:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_2

    .line 888
    :cond_1
    :goto_0
    return-void

    .line 891
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyTriggered:Z

    if-nez v2, :cond_1

    .line 892
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 893
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTime:J

    iget-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraKeyTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x96

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 902
    :cond_3
    sget-boolean v2, Lcom/android/server/policy/CombinationKeyManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "CombinationKeyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptQuickShotChord - fail : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mVolumeUpKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mCameraKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 894
    :cond_4
    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    .line 895
    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    .line 896
    sget-boolean v2, Lcom/android/server/policy/CombinationKeyManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "CombinationKeyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptQuickShotChord - success and waiting long press : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mVolumeUpKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mCameraKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_5
    iput-boolean v6, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraKeyConsumed:Z

    .line 898
    iput-boolean v6, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyConsumed:Z

    .line 899
    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/CombinationKeyManager;->mQuickShotChordLongPress:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method private interceptSafetyAssuranceChord()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 824
    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSupportPowerTriplePress()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 826
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyTriggered:Z

    if-eqz v0, :cond_2

    .line 823
    :cond_1
    :goto_0
    return-void

    .line 826
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-nez v0, :cond_1

    .line 827
    iget-wide v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTime:J

    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 828
    const-string v0, "CombinationKeyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interceptSafetyAssuranceChord - success and waiting long press : mVolumeDownKeyTime["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mVolumeUpKeyTime["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyConsumed:Z

    .line 830
    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyConsumed:Z

    .line 831
    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 832
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    .line 833
    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 834
    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/CombinationKeyManager;->mSafetyAssuranceChordLongPress:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private interceptScreenshotChord()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x96

    const/4 v6, 0x1

    .line 721
    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/policy/SamsungPolicyProperties;->isScreenShotChordEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 723
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v2, 0x1

    if-eqz v2, :cond_5

    .line 698
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_4

    .line 735
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyTriggered:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_5

    .line 747
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 748
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mFlashKeyTriggered:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_3

    .line 749
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 750
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mFlashKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    .line 751
    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    .line 752
    iput-boolean v6, p0, Lcom/android/server/policy/CombinationKeyManager;->mFlashKeyConsumed:Z

    .line 753
    iput-boolean v6, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyConsumed:Z

    .line 754
    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 755
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    .line 756
    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/CombinationKeyManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 720
    .end local v0    # "now":J
    :cond_3
    :goto_2
    return-void

    .line 723
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyTriggered:Z

    if-nez v2, :cond_1

    .line 724
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 725
    .restart local v0    # "now":J
    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 726
    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 727
    iput-boolean v6, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyConsumed:Z

    .line 728
    iput-boolean v6, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyConsumed:Z

    .line 729
    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 730
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    .line 731
    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/CombinationKeyManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 735
    .end local v0    # "now":J
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_2

    .line 736
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 737
    .restart local v0    # "now":J
    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 738
    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 739
    iput-boolean v6, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyConsumed:Z

    .line 740
    iput-boolean v6, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyConsumed:Z

    .line 741
    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 742
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    .line 743
    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/CombinationKeyManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 761
    .end local v0    # "now":J
    :cond_6
    const-string v2, ""

    const-string v3, "RestrictedInput"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 762
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuTriggered:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mEnterKeyTriggered:Z

    if-nez v2, :cond_3

    .line 763
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 764
    .restart local v0    # "now":J
    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    .line 765
    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_3

    .line 766
    iput-boolean v6, p0, Lcom/android/server/policy/CombinationKeyManager;->mRecentKeyConsumed:Z

    .line 767
    iput-boolean v6, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyConsumed:Z

    .line 768
    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 769
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    .line 770
    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/CombinationKeyManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2
.end method

.method private interceptStopLockTaskModeChord()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x96

    const/4 v6, 0x1

    .line 920
    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    .line 922
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHasPermanentMenuKey:Z

    if-eqz v2, :cond_3

    .line 923
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuTriggered:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mBackKeyTriggered:Z

    if-eqz v2, :cond_3

    .line 924
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 925
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 926
    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mBackKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 927
    iput-boolean v6, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuConsumed:Z

    .line 928
    iput-boolean v6, p0, Lcom/android/server/policy/CombinationKeyManager;->mBackKeyConsumed:Z

    .line 929
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    .line 930
    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/CombinationKeyManager;->mStopLockTaskModeChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 931
    return-void

    .line 933
    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v2, :cond_3

    const-string v2, "CombinationKeyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptStopLockTaskModeChord - fail : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mMenuKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mBackKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mBackKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    .end local v0    # "now":J
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mRecentKeyTriggered:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mBackKeyTriggered:Z

    if-eqz v2, :cond_5

    .line 939
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 940
    .restart local v0    # "now":J
    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mRecentKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4

    .line 941
    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mBackKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4

    .line 942
    iput-boolean v6, p0, Lcom/android/server/policy/CombinationKeyManager;->mRecentKeyConsumed:Z

    .line 943
    iput-boolean v6, p0, Lcom/android/server/policy/CombinationKeyManager;->mBackKeyConsumed:Z

    .line 944
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    .line 945
    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/CombinationKeyManager;->mStopLockTaskModeChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 946
    return-void

    .line 948
    :cond_4
    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v2, :cond_5

    const-string v2, "CombinationKeyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptStopLockTaskModeChord - fail : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mHomeKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mBackKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mBackKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    .end local v0    # "now":J
    :cond_5
    return-void
.end method

.method private interceptSysDumpChord()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x96

    const/4 v4, 0x1

    .line 684
    const-string v2, ""

    const-string v3, "RestrictedInput"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 685
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mEnterKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_1

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 685
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_0

    .line 686
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 687
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 688
    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 689
    iget-wide v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mEnterKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 690
    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuConsumed:Z

    .line 691
    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyConsumed:Z

    .line 692
    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mEnterKeyConsumed:Z

    .line 693
    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 694
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    .line 695
    iget-object v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/CombinationKeyManager;->mSysDumpLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 999
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPowerKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1000
    const-string v0, " mHomeKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1001
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mVolumeDownKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1002
    const-string v0, " mVolumeUpKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1003
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCameraKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1004
    const-string v0, " mCameraRecordKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraRecordKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1005
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFlashKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mFlashKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1006
    const-string v0, " mWiFiProtectedSetupKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mWiFiProtectedSetupKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1007
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBackKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mBackKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1008
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRecentKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mRecentKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1009
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mMenuKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1010
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHasPermanentMenuKey="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mHasPermanentMenuKey:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 998
    return-void
.end method

.method public getTimeoutTimeOfKeyCombination(I)J
    .locals 6
    .param p1, "flags"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x96

    .line 438
    and-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_0

    return-wide v4

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/SamsungPolicyProperties;->isScreenShotChordEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 440
    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v0, :cond_9

    .line 442
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mFlashKeyTriggered:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v0, :cond_a

    .line 446
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSafetyAssuranceEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 447
    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-eqz v0, :cond_b

    .line 451
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isUseAccessControl()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 452
    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyTriggered:Z

    if-eqz v0, :cond_c

    .line 454
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraRecordKeyTriggered:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v0, :cond_d

    .line 456
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v0, :cond_e

    .line 460
    :cond_6
    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDirectAccessEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 461
    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v0, :cond_f

    .line 465
    :cond_7
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 466
    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mWiFiProtectedSetupKeyTriggered:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v0, :cond_10

    .line 470
    :cond_8
    return-wide v4

    .line 441
    :cond_9
    iget-wide v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTime:J

    add-long/2addr v0, v2

    return-wide v0

    .line 443
    :cond_a
    iget-wide v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mFlashKeyTime:J

    add-long/2addr v0, v2

    return-wide v0

    .line 448
    :cond_b
    iget-wide v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTime:J

    add-long/2addr v0, v2

    return-wide v0

    .line 453
    :cond_c
    iget-wide v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTime:J

    add-long/2addr v0, v2

    return-wide v0

    .line 455
    :cond_d
    iget-wide v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraRecordKeyTime:J

    add-long/2addr v0, v2

    return-wide v0

    .line 457
    :cond_e
    iget-wide v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTime:J

    add-long/2addr v0, v2

    return-wide v0

    .line 462
    :cond_f
    iget-wide v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTime:J

    add-long/2addr v0, v2

    return-wide v0

    .line 467
    :cond_10
    iget-wide v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mWiFiProtectedSetupKeyTime:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public interceptKeyCombinationBeforeQueueing(Landroid/view/KeyEvent;I)V
    .locals 12
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const-wide/16 v10, 0x1388

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 162
    const/high16 v4, 0x20000000

    and-int/2addr v4, p2

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 163
    .local v2, "interactive":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v1, 0x1

    .line 164
    .local v1, "down":Z
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    .line 165
    .local v0, "canceled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 167
    .local v3, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_2

    return-void

    .line 162
    .end local v0    # "canceled":Z
    .end local v1    # "down":Z
    .end local v2    # "interactive":Z
    .end local v3    # "keyCode":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "interactive":Z
    goto :goto_0

    .line 163
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "down":Z
    goto :goto_1

    .line 168
    .restart local v0    # "canceled":Z
    .restart local v3    # "keyCode":I
    :cond_2
    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    sget-boolean v4, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v4, :cond_3

    .line 169
    const-string v4, "CombinationKeyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interceptKeyCombinationBeforeQueueing keyCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_3
    sparse-switch v3, :sswitch_data_0

    .line 161
    :cond_4
    :goto_2
    return-void

    .line 174
    :sswitch_0
    if-eqz v1, :cond_6

    .line 175
    iget-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-nez v4, :cond_4

    .line 176
    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/CombinationKeyManager;->mResetVolumeDownKeyTriggered:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 177
    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/CombinationKeyManager;->mResetVolumeDownKeyTriggered:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 178
    iput-boolean v9, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    .line 179
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTime:J

    .line 180
    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyConsumed:Z

    .line 181
    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 182
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptSafetyAssuranceChord()V

    .line 183
    if-eqz v2, :cond_5

    .line 184
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptScreenshotChord()V

    .line 185
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptAccessControlChord()V

    goto :goto_2

    .line 187
    :cond_5
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptQuickShotChord()V

    goto :goto_2

    .line 191
    :cond_6
    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/CombinationKeyManager;->mResetVolumeDownKeyTriggered:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 192
    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    .line 193
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    goto :goto_2

    .line 199
    :sswitch_1
    if-eqz v1, :cond_7

    .line 200
    iget-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-nez v4, :cond_4

    .line 201
    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/CombinationKeyManager;->mResetVolumeUpKeyTriggered:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 202
    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/CombinationKeyManager;->mResetVolumeUpKeyTriggered:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 203
    iput-boolean v9, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    .line 204
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTime:J

    .line 205
    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyConsumed:Z

    .line 206
    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 207
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptSafetyAssuranceChord()V

    .line 208
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptForAccessibility()V

    .line 209
    if-nez v2, :cond_4

    .line 210
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptQuickShotChord()V

    goto :goto_2

    .line 214
    :cond_7
    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/CombinationKeyManager;->mResetVolumeUpKeyTriggered:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    .line 216
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    .line 217
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->checkTriggerDirectAccess()V

    goto :goto_2

    .line 223
    :sswitch_2
    if-eqz v1, :cond_9

    .line 224
    iget-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-nez v4, :cond_4

    .line 225
    iput-boolean v9, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    .line 226
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTime:J

    .line 227
    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyConsumed:Z

    .line 228
    if-eqz v2, :cond_8

    .line 229
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptScreenshotChord()V

    .line 230
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptAccessControlChord()V

    .line 231
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptFactoryTestChord()V

    .line 232
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptForAccessibility()V

    .line 234
    const-string v4, ""

    const-string v5, "RestrictedInput"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 235
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptSysDumpChord()V

    goto/16 :goto_2

    .line 239
    :cond_8
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptQuickShotChord()V

    goto/16 :goto_2

    .line 243
    :cond_9
    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyTriggered:Z

    .line 244
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    .line 245
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->checkTriggerDirectAccess()V

    goto/16 :goto_2

    .line 250
    :sswitch_3
    if-eqz v1, :cond_b

    .line 251
    if-eqz v2, :cond_4

    iget-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyTriggered:Z

    if-nez v4, :cond_4

    .line 252
    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 253
    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/CombinationKeyManager;->mResetHomeKeyTriggered:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 254
    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/CombinationKeyManager;->mResetHomeKeyTriggered:Ljava/lang/Runnable;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 256
    :cond_a
    iput-boolean v9, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyTriggered:Z

    .line 257
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyTime:J

    .line 258
    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyConsumed:Z

    .line 259
    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 260
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptScreenshotChord()V

    .line 261
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptAccessControlChord()V

    goto/16 :goto_2

    .line 264
    :cond_b
    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 265
    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/CombinationKeyManager;->mResetHomeKeyTriggered:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 267
    :cond_c
    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyTriggered:Z

    .line 268
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    .line 273
    :sswitch_4
    invoke-static {}, Lcom/android/server/policy/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 275
    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/policy/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 276
    sget-boolean v4, Lcom/android/server/policy/CombinationKeyManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "CombinationKeyManager"

    const-string v5, "Camera key is blocked by policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 279
    :cond_d
    if-eqz v1, :cond_e

    .line 280
    if-nez v2, :cond_4

    iget-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraKeyTriggered:Z

    if-nez v4, :cond_4

    .line 281
    iput-boolean v9, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraKeyTriggered:Z

    .line 282
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraKeyTime:J

    .line 283
    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraKeyConsumed:Z

    .line 284
    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 285
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptQuickShotChord()V

    goto/16 :goto_2

    .line 288
    :cond_e
    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraKeyTriggered:Z

    .line 289
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    .line 295
    :sswitch_5
    invoke-static {}, Lcom/android/server/policy/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 296
    if-eqz v1, :cond_f

    .line 297
    if-eqz v2, :cond_4

    iget-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mFlashKeyTriggered:Z

    if-nez v4, :cond_4

    .line 298
    iput-boolean v9, p0, Lcom/android/server/policy/CombinationKeyManager;->mFlashKeyTriggered:Z

    .line 299
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mFlashKeyTime:J

    .line 300
    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mFlashKeyConsumed:Z

    .line 301
    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 302
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptScreenshotChord()V

    goto/16 :goto_2

    .line 305
    :cond_f
    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mFlashKeyTriggered:Z

    .line 306
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    .line 312
    :sswitch_6
    invoke-static {}, Lcom/android/server/policy/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 313
    if-eqz v1, :cond_10

    .line 314
    if-eqz v2, :cond_4

    iget-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraRecordKeyTriggered:Z

    if-nez v4, :cond_4

    .line 315
    iput-boolean v9, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraRecordKeyTriggered:Z

    .line 316
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraRecordKeyTime:J

    .line 317
    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraRecordKeyConsumed:Z

    .line 318
    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 319
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptAccessControlChord()V

    goto/16 :goto_2

    .line 322
    :cond_10
    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraRecordKeyTriggered:Z

    .line 323
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    .line 329
    :sswitch_7
    if-eqz v1, :cond_11

    .line 330
    if-eqz v2, :cond_4

    iget-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mWiFiProtectedSetupKeyTriggered:Z

    if-nez v4, :cond_4

    .line 331
    iput-boolean v9, p0, Lcom/android/server/policy/CombinationKeyManager;->mWiFiProtectedSetupKeyTriggered:Z

    .line 332
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mWiFiProtectedSetupKeyTime:J

    .line 333
    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mWiFiProtectedSetupKeyConsumed:Z

    .line 334
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptFactoryTestChord()V

    goto/16 :goto_2

    .line 337
    :cond_11
    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mWiFiProtectedSetupKeyTriggered:Z

    .line 338
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    .line 343
    :sswitch_8
    if-eqz v1, :cond_12

    .line 344
    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 345
    if-eqz v2, :cond_4

    iget-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mBackKeyTriggered:Z

    if-nez v4, :cond_4

    .line 346
    iput-boolean v9, p0, Lcom/android/server/policy/CombinationKeyManager;->mBackKeyTriggered:Z

    .line 347
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mBackKeyTime:J

    .line 348
    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mBackKeyConsumed:Z

    .line 350
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptStopLockTaskModeChord()V

    goto/16 :goto_2

    .line 354
    :cond_12
    iget-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mBackKeyTriggered:Z

    if-eqz v4, :cond_4

    .line 355
    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mBackKeyTriggered:Z

    .line 356
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    .line 362
    :sswitch_9
    if-eqz v1, :cond_13

    .line 363
    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 364
    if-eqz v2, :cond_4

    iget-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mRecentKeyTriggered:Z

    if-nez v4, :cond_4

    .line 365
    iput-boolean v9, p0, Lcom/android/server/policy/CombinationKeyManager;->mRecentKeyTriggered:Z

    .line 366
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mRecentKeyTime:J

    .line 367
    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mRecentKeyConsumed:Z

    .line 368
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptStopLockTaskModeChord()V

    goto/16 :goto_2

    .line 371
    :cond_13
    iget-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mRecentKeyTriggered:Z

    if-eqz v4, :cond_4

    .line 372
    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mRecentKeyTriggered:Z

    .line 373
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    .line 380
    :sswitch_a
    const-string v4, ""

    const-string v5, "RestrictedInput"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 381
    if-eqz v1, :cond_14

    .line 382
    if-eqz v2, :cond_4

    iget-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuTriggered:Z

    if-nez v4, :cond_4

    .line 383
    iput-boolean v9, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuTriggered:Z

    .line 384
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuTime:J

    .line 385
    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuConsumed:Z

    .line 386
    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 387
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptScreenshotChord()V

    .line 388
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptSysDumpChord()V

    goto/16 :goto_2

    .line 391
    :cond_14
    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuTriggered:Z

    .line 392
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    .line 397
    :cond_15
    iget-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mHasPermanentMenuKey:Z

    if-eqz v4, :cond_4

    .line 398
    if-eqz v1, :cond_16

    .line 399
    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 400
    if-eqz v2, :cond_4

    iget-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuTriggered:Z

    if-nez v4, :cond_4

    .line 401
    iput-boolean v9, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuTriggered:Z

    .line 402
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuTime:J

    .line 403
    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuConsumed:Z

    .line 404
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptStopLockTaskModeChord()V

    goto/16 :goto_2

    .line 407
    :cond_16
    iget-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuTriggered:Z

    if-eqz v4, :cond_4

    .line 408
    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuTriggered:Z

    .line 409
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    .line 417
    :sswitch_b
    const-string v4, ""

    const-string v5, "RestrictedInput"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 418
    if-eqz v1, :cond_17

    .line 419
    if-eqz v2, :cond_4

    iget-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mEnterKeyTriggered:Z

    if-nez v4, :cond_4

    .line 420
    iput-boolean v9, p0, Lcom/android/server/policy/CombinationKeyManager;->mEnterKeyTriggered:Z

    .line 421
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mEnterKeyTime:J

    .line 422
    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mEnterKeyConsumed:Z

    .line 423
    iget-object v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 424
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->interceptSysDumpChord()V

    goto/16 :goto_2

    .line 427
    :cond_17
    iput-boolean v8, p0, Lcom/android/server/policy/CombinationKeyManager;->mEnterKeyTriggered:Z

    .line 428
    invoke-direct {p0}, Lcom/android/server/policy/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    .line 171
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x4 -> :sswitch_8
        0x6 -> :sswitch_2
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0x1a -> :sswitch_2
        0x1b -> :sswitch_4
        0x42 -> :sswitch_b
        0x52 -> :sswitch_a
        0xa8 -> :sswitch_1
        0xa9 -> :sswitch_0
        0xbb -> :sswitch_9
        0x3fe -> :sswitch_6
        0x404 -> :sswitch_5
        0x412 -> :sswitch_7
    .end sparse-switch
.end method

.method public isCombinationKeyTriggered()Z
    .locals 3

    .prologue
    .line 587
    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-nez v0, :cond_0

    .line 588
    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyTriggered:Z

    .line 587
    if-nez v0, :cond_0

    .line 588
    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mFlashKeyTriggered:Z

    .line 587
    if-nez v0, :cond_0

    .line 588
    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraRecordKeyTriggered:Z

    .line 587
    if-nez v0, :cond_0

    .line 589
    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mWiFiProtectedSetupKeyTriggered:Z

    .line 587
    if-nez v0, :cond_0

    .line 591
    const-string v0, ""

    const-string v1, "RestrictedInput"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuTriggered:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mEnterKeyTriggered:Z

    .line 587
    if-eqz v0, :cond_1

    .line 593
    :cond_0
    const-string v0, "CombinationKeyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CombinationKeyTriggered HomeTrigger ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyTriggered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 594
    const-string v2, " mVolumeDownKeyTriggered = "

    .line 593
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 594
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    .line 593
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 595
    const-string v2, " mVolumeUpKeyTriggered = "

    .line 593
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 595
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    .line 593
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const/4 v0, 0x1

    return v0

    .line 598
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isConsumedKeyCombination(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 474
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 475
    .local v1, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 477
    .local v0, "down":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_1

    return v4

    .line 475
    .end local v0    # "down":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "down":Z
    goto :goto_0

    .line 478
    :cond_1
    sparse-switch v1, :sswitch_data_0

    .line 583
    :cond_2
    return v4

    .line 481
    :sswitch_0
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyConsumed:Z

    if-eqz v2, :cond_2

    .line 482
    if-nez v0, :cond_3

    .line 483
    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeDownKeyConsumed:Z

    .line 485
    :cond_3
    return v5

    .line 490
    :sswitch_1
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyConsumed:Z

    if-eqz v2, :cond_2

    .line 491
    if-nez v0, :cond_4

    .line 492
    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mVolumeUpKeyConsumed:Z

    .line 494
    :cond_4
    return v5

    .line 499
    :sswitch_2
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyConsumed:Z

    if-eqz v2, :cond_2

    .line 500
    if-nez v0, :cond_5

    .line 501
    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mPowerKeyConsumed:Z

    .line 503
    :cond_5
    return v5

    .line 507
    :sswitch_3
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyConsumed:Z

    if-eqz v2, :cond_2

    .line 508
    if-nez v0, :cond_6

    .line 509
    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mHomeKeyConsumed:Z

    .line 511
    :cond_6
    return v5

    .line 515
    :sswitch_4
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraKeyConsumed:Z

    if-eqz v2, :cond_2

    .line 516
    if-nez v0, :cond_7

    .line 517
    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraKeyConsumed:Z

    .line 519
    :cond_7
    return v5

    .line 523
    :sswitch_5
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mFlashKeyConsumed:Z

    if-eqz v2, :cond_2

    .line 524
    if-nez v0, :cond_8

    .line 525
    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mFlashKeyConsumed:Z

    .line 527
    :cond_8
    return v5

    .line 531
    :sswitch_6
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraRecordKeyConsumed:Z

    if-eqz v2, :cond_2

    .line 532
    if-nez v0, :cond_9

    .line 533
    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mCameraRecordKeyConsumed:Z

    .line 535
    :cond_9
    return v5

    .line 539
    :sswitch_7
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mWiFiProtectedSetupKeyConsumed:Z

    if-eqz v2, :cond_2

    .line 540
    if-nez v0, :cond_a

    .line 541
    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mWiFiProtectedSetupKeyConsumed:Z

    .line 543
    :cond_a
    return v5

    .line 547
    :sswitch_8
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mBackKeyConsumed:Z

    if-eqz v2, :cond_2

    .line 548
    if-nez v0, :cond_b

    .line 549
    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mBackKeyConsumed:Z

    .line 551
    :cond_b
    return v5

    .line 555
    :sswitch_9
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mRecentKeyConsumed:Z

    if-eqz v2, :cond_2

    .line 556
    if-nez v0, :cond_c

    .line 557
    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mRecentKeyConsumed:Z

    .line 559
    :cond_c
    return v5

    .line 563
    :sswitch_a
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuConsumed:Z

    if-eqz v2, :cond_2

    .line 564
    if-nez v0, :cond_d

    .line 565
    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mMenuConsumed:Z

    .line 567
    :cond_d
    return v5

    .line 572
    :sswitch_b
    const-string v2, ""

    const-string v3, "RestrictedInput"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 573
    iget-boolean v2, p0, Lcom/android/server/policy/CombinationKeyManager;->mEnterKeyConsumed:Z

    if-eqz v2, :cond_2

    .line 574
    if-nez v0, :cond_e

    .line 575
    iput-boolean v4, p0, Lcom/android/server/policy/CombinationKeyManager;->mEnterKeyConsumed:Z

    .line 577
    :cond_e
    return v5

    .line 478
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x4 -> :sswitch_8
        0x6 -> :sswitch_2
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0x1a -> :sswitch_2
        0x1b -> :sswitch_4
        0x42 -> :sswitch_b
        0x52 -> :sswitch_a
        0xa8 -> :sswitch_1
        0xa9 -> :sswitch_0
        0xbb -> :sswitch_9
        0x3fe -> :sswitch_6
        0x404 -> :sswitch_5
        0x412 -> :sswitch_7
    .end sparse-switch
.end method

.method public onSystemReady()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/CombinationKeyManager;->mHasPermanentMenuKey:Z

    .line 155
    return-void
.end method
