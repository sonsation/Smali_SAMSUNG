.class public Lcom/android/systemui/power/PowerUI;
.super Lcom/android/systemui/SystemUI;
.source "PowerUI.java"

# interfaces
.implements Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/PowerUI$1;,
        Lcom/android/systemui/power/PowerUI$2;,
        Lcom/android/systemui/power/PowerUI$3;,
        Lcom/android/systemui/power/PowerUI$4;,
        Lcom/android/systemui/power/PowerUI$5;,
        Lcom/android/systemui/power/PowerUI$6;,
        Lcom/android/systemui/power/PowerUI$Receiver;,
        Lcom/android/systemui/power/PowerUI$WarningsUI;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private mBatteryChargingType:I

.field private mBatteryHealth:I

.field private mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mBatteryHighVoltageCharger:Z

.field private mBatteryLevel:I

.field private mBatteryOnline:I

.field private mBatteryOverheatLevel:I

.field private mBatterySlowCharger:Z

.field private mBatteryStatus:I

.field private mBatteryWaterConnector:Z

.field private mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

.field private mChargerAnimationWindowLp:Landroid/view/WindowManager$LayoutParams;

.field private mChargerAnimationWindowManager:Landroid/view/WindowManager;

.field private mCurrentOrientation:I

.field private mDismissBatteryHealthInterruptionWarning:Z

.field private mDisplay:Landroid/view/Display;

.field private mFullyConnected:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInvalidCharger:I

.field private mIsChargerAnimationPlaying:Z

.field private mIsDeviceMoving:Z

.field private mIsPowerSupplyingActivated:Z

.field private mIsRunningOverheatWarningTask:Z

.field private mIsSContextEnabled:Z

.field private mIsSContextListenerRigstered:Z

.field private mIsScreenOn:Z

.field private mIsShutdownTaskDelayed:Z

.field private mLowBatteryAlertCloseLevel:I

.field private final mLowBatteryReminderLevels:[I

.field mOverheatShutdownWarningTask:Ljava/lang/Runnable;

.field mOverheatWarningTask:Ljava/lang/Runnable;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPlugType:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerSavingRecommendNotiTrigger:I

.field private final mPowersavingNotiTriggerObserver:Landroid/database/ContentObserver;

.field private final mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

.field private mSContextListener:Landroid/hardware/scontext/SContextListener;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mSIOPLevel:I

.field private mScreenOffTime:J

.field mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/systemui/power/PowerUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsPowerSupplyingActivated:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/power/PowerUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/systemui/power/PowerUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsShutdownTaskDelayed:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    return v0
.end method

.method static synthetic -get14(Lcom/android/systemui/power/PowerUI;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    return v0
.end method

.method static synthetic -get16(Lcom/android/systemui/power/PowerUI;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/systemui/power/PowerUI;)Landroid/hardware/scontext/SContextListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/systemui/power/PowerUI;)Landroid/hardware/scontext/SContextManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    return v0
.end method

.method static synthetic -get20(Lcom/android/systemui/power/PowerUI;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    return-wide v0
.end method

.method static synthetic -get21(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/power/PowerUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryWaterConnector:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/power/PowerUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/power/PowerUI;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    return p1
.end method

.method static synthetic -set10(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsPowerSupplyingActivated:Z

    return p1
.end method

.method static synthetic -set11(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningOverheatWarningTask:Z

    return p1
.end method

.method static synthetic -set12(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z

    return p1
.end method

.method static synthetic -set13(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic -set14(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsShutdownTaskDelayed:Z

    return p1
.end method

.method static synthetic -set15(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    return p1
.end method

.method static synthetic -set16(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mPowerSavingRecommendNotiTrigger:I

    return p1
.end method

.method static synthetic -set17(Lcom/android/systemui/power/PowerUI;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    return-wide p1
.end method

.method static synthetic -set2(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mBatterySlowCharger:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryWaterConnector:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/systemui/power/PowerUI;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    return p1
.end method

.method static synthetic -set9(Lcom/android/systemui/power/PowerUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mIsDeviceMoving:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/power/PowerUI;I)I
    .locals 1
    .param p1, "level"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/power/PowerUI;II)V
    .locals 0
    .param p1, "priorBatteryStatus"    # I
    .param p2, "priorBatteryHealth"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/power/PowerUI;->checkBatteryHealthInterruptionStatus(II)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/power/PowerUI;ZI)V
    .locals 0
    .param p1, "priorFullyCopnnected"    # Z
    .param p2, "priorPlugType"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/power/PowerUI;->checkConnectedChargerStatus(ZI)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->checkCoolDownStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/power/PowerUI;I)V
    .locals 0
    .param p1, "priorBatteryStatus"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->checkFullBatteryStatus(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/power/PowerUI;I)V
    .locals 0
    .param p1, "priorBatteryOnline"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI;->checkIncompatibleChargerConnection(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/power/PowerUI;II)V
    .locals 0
    .param p1, "priorBatteryLevel"    # I
    .param p2, "priorBatteryStatus"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/power/PowerUI;->checkPowerSavingRecommendStatus(II)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/power/PowerUI;ZI)V
    .locals 0
    .param p1, "priorFullyCopnnected"    # Z
    .param p2, "priorPlugType"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/power/PowerUI;->playChargerConnectionAnimation(ZI)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/power/PowerUI;ZII)V
    .locals 0
    .param p1, "priorFullyCopnnected"    # Z
    .param p2, "priorPlugType"    # I
    .param p3, "priorBateryStatus"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/power/PowerUI;->playChargerConnectionSound(ZII)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    const-string/jumbo v0, "PowerUI"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    .line 75
    new-instance v0, Lcom/android/systemui/power/PowerUI$Receiver;

    invoke-direct {v0, p0, v5}, Lcom/android/systemui/power/PowerUI$Receiver;-><init>(Lcom/android/systemui/power/PowerUI;Lcom/android/systemui/power/PowerUI$Receiver;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

    .line 79
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 80
    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 81
    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 82
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    .line 87
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    .line 106
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mDismissBatteryHealthInterruptionWarning:Z

    .line 108
    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    .line 119
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    .line 121
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mCurrentOrientation:I

    .line 141
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    .line 142
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mBatterySlowCharger:Z

    .line 144
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 145
    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    .line 149
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryWaterConnector:Z

    .line 161
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mPowerSavingRecommendNotiTrigger:I

    .line 192
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsRunningOverheatWarningTask:Z

    .line 193
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsShutdownTaskDelayed:Z

    .line 195
    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    .line 196
    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    .line 206
    iput-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    .line 207
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsPowerSupplyingActivated:Z

    .line 211
    iput-object v5, p0, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 213
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextEnabled:Z

    .line 214
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z

    .line 215
    iput-boolean v4, p0, Lcom/android/systemui/power/PowerUI;->mIsDeviceMoving:Z

    .line 222
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsScreenOn:Z

    .line 604
    new-instance v0, Lcom/android/systemui/power/PowerUI$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$1;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOverheatWarningTask:Ljava/lang/Runnable;

    .line 611
    new-instance v0, Lcom/android/systemui/power/PowerUI$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$2;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownWarningTask:Ljava/lang/Runnable;

    .line 623
    new-instance v0, Lcom/android/systemui/power/PowerUI$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$3;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 923
    new-instance v0, Lcom/android/systemui/power/PowerUI$4;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/power/PowerUI$4;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowersavingNotiTriggerObserver:Landroid/database/ContentObserver;

    .line 945
    new-instance v0, Lcom/android/systemui/power/PowerUI$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$5;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    .line 976
    new-instance v0, Lcom/android/systemui/power/PowerUI$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$6;-><init>(Lcom/android/systemui/power/PowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 68
    return-void
.end method

.method private checkBatteryHealthInterruptionStatus(II)V
    .locals 11
    .param p1, "priorBatteryStatus"    # I
    .param p2, "priorBatteryHealth"    # I

    .prologue
    const/4 v10, 0x0

    const-wide/32 v8, 0xea60

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 640
    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v7, v3, :cond_5

    .line 641
    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq v6, v3, :cond_0

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    const/4 v4, 0x7

    if-ne v4, v3, :cond_4

    .line 643
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_8

    .line 644
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 645
    .local v2, "powerManager":Landroid/os/PowerManager;
    if-nez v2, :cond_6

    .line 646
    const-string/jumbo v3, "PowerUI"

    const-string/jumbo v4, "onReceive : fail to get PowerManager reference"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    .end local v2    # "powerManager":Landroid/os/PowerManager;
    :cond_1
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mDismissBatteryHealthInterruptionWarning:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    const/4 v4, 0x2

    if-ne v4, v3, :cond_2

    .line 706
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissBatteryHealthInterruptionWarning()V

    .line 707
    iput-boolean v10, p0, Lcom/android/systemui/power/PowerUI;->mDismissBatteryHealthInterruptionWarning:Z

    .line 711
    :cond_2
    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq p2, v3, :cond_11

    .line 712
    const/4 v3, 0x5

    if-eq v3, p2, :cond_3

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    const/4 v4, 0x5

    if-ne v4, v3, :cond_10

    .line 714
    :cond_3
    const-string/jumbo v3, "PowerUI"

    const-string/jumbo v4, "Overvoltage/Undervoltage status is changed so turn on the screen."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const-string/jumbo v3, "power"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 716
    .local v1, "powerManager":Landroid/os/IPowerManager;
    if-nez v1, :cond_12

    .line 717
    const-string/jumbo v3, "PowerUI"

    const-string/jumbo v4, "turnOnScreen : fail to get PowerManager reference"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    return-void

    .line 642
    .end local v1    # "powerManager":Landroid/os/IPowerManager;
    :cond_4
    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    const/4 v4, 0x6

    if-eq v4, v3, :cond_0

    .line 663
    :cond_5
    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v7, v3, :cond_d

    .line 664
    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    const/16 v4, 0x8

    if-ne v4, v3, :cond_d

    .line 665
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_b

    .line 666
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 667
    .restart local v2    # "powerManager":Landroid/os/PowerManager;
    if-nez v2, :cond_9

    .line 668
    const-string/jumbo v3, "PowerUI"

    const-string/jumbo v4, "onReceive : fail to get PowerManager reference"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 649
    :cond_6
    const-string/jumbo v3, "PowerUI"

    const v4, 0x10000006

    .line 648
    invoke-virtual {v2, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 651
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_KEEP_DIMMING_AT_BATTERY_HEALTH_INTERRUPTION:Z

    if-eqz v3, :cond_7

    .line 652
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 656
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 658
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showBatteryHealthInterruptionWarning()V

    goto/16 :goto_0

    .line 654
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_1

    .line 660
    .end local v2    # "powerManager":Landroid/os/PowerManager;
    :cond_8
    const/16 v3, 0x8

    if-ne v3, p2, :cond_1

    .line 661
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showBatteryHealthInterruptionWarning()V

    goto/16 :goto_0

    .line 671
    .restart local v2    # "powerManager":Landroid/os/PowerManager;
    :cond_9
    const-string/jumbo v3, "PowerUI"

    const v4, 0x10000006

    .line 670
    invoke-virtual {v2, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 673
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_KEEP_DIMMING_AT_BATTERY_HEALTH_INTERRUPTION:Z

    if-eqz v3, :cond_a

    .line 674
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 678
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 680
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showBatteryHealthInterruptionWarning()V

    goto/16 :goto_0

    .line 676
    :cond_a
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_2

    .line 682
    .end local v2    # "powerManager":Landroid/os/PowerManager;
    :cond_b
    if-ne v6, p2, :cond_1

    .line 683
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_KEEP_DIMMING_AT_BATTERY_HEALTH_INTERRUPTION:Z

    if-nez v3, :cond_c

    .line 684
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 686
    :cond_c
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showBatteryHealthInterruptionWarning()V

    goto/16 :goto_0

    .line 688
    :cond_d
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_1

    .line 689
    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-ne v7, v3, :cond_f

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v6, v3, :cond_f

    .line 690
    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v6, v3, :cond_f

    .line 691
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mDismissBatteryHealthInterruptionWarning:Z

    .line 697
    :goto_3
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_KEEP_DIMMING_AT_BATTERY_HEALTH_INTERRUPTION:Z

    if-eqz v3, :cond_e

    .line 698
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 700
    :cond_e
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 702
    iput-object v5, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_0

    .line 693
    :cond_f
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissBatteryHealthInterruptionWarning()V

    .line 694
    iput-boolean v10, p0, Lcom/android/systemui/power/PowerUI;->mDismissBatteryHealthInterruptionWarning:Z

    goto :goto_3

    .line 713
    :cond_10
    const/16 v3, 0x9

    if-eq v3, p2, :cond_3

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    const/16 v4, 0x9

    if-eq v4, v3, :cond_3

    .line 639
    :cond_11
    :goto_4
    return-void

    .line 722
    .restart local v1    # "powerManager":Landroid/os/IPowerManager;
    :cond_12
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-string/jumbo v3, "BatteryStateChanged"

    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v4, v5, v3, v6}, Landroid/os/IPowerManager;->wakeUp(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 723
    :catch_0
    move-exception v0

    .line 724
    .local v0, "exception":Landroid/os/RemoteException;
    const-string/jumbo v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "turnOnScreen : Exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private checkConnectedChargerStatus(ZI)V
    .locals 7
    .param p1, "priorFullyCopnnected"    # Z
    .param p2, "priorPlugType"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 834
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v2, v0, :cond_f

    .line 835
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eq v5, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-ne v2, v0, :cond_8

    .line 836
    :cond_0
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_USB_TYPE_C:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    if-eqz v0, :cond_5

    .line 838
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    if-eqz v0, :cond_6

    .line 839
    iput v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 846
    :goto_0
    if-ne v4, p2, :cond_2

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eq p2, v0, :cond_2

    .line 847
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0, v5}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingTypeSwitchedNotice(Z)V

    .line 872
    :cond_2
    :goto_1
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    if-eqz v0, :cond_3

    .line 874
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    if-eqz v0, :cond_e

    .line 892
    :cond_3
    :goto_2
    if-ne v4, p2, :cond_4

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-nez v0, :cond_4

    .line 893
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showWirelessChargerDisconnectNotice()V

    .line 833
    :cond_4
    return-void

    .line 837
    :cond_5
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto :goto_0

    .line 840
    :cond_6
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_BATTERY_SLOW_CHARGING_NOTICE:Z

    if-eqz v0, :cond_7

    .line 841
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mBatterySlowCharger:Z

    .line 840
    if-eqz v0, :cond_7

    .line 842
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto :goto_0

    .line 844
    :cond_7
    iput v5, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto :goto_0

    .line 848
    :cond_8
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-ne v4, v0, :cond_d

    .line 849
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    const/16 v1, 0x64

    if-ne v1, v0, :cond_c

    .line 850
    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 854
    :goto_3
    if-eq v5, p2, :cond_9

    if-ne v2, p2, :cond_a

    .line 855
    :cond_9
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eq p2, v0, :cond_a

    .line 856
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0, v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingTypeSwitchedNotice(Z)V

    .line 859
    :cond_a
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z

    if-nez v0, :cond_2

    .line 860
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    if-eq v0, v6, :cond_b

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    if-ne v0, v4, :cond_2

    .line 861
    :cond_b
    const-string/jumbo v0, "PowerUI"

    const-string/jumbo v1, "Register SContextListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    .line 863
    iput-boolean v5, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z

    goto :goto_1

    .line 852
    :cond_c
    iput v6, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto :goto_3

    .line 868
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissChargingNotice()V

    .line 869
    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    goto :goto_1

    .line 875
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    invoke-interface {v0, v1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingNotice(I)V

    goto :goto_2

    .line 877
    :cond_f
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    if-eqz v0, :cond_10

    .line 878
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissChargingNotice()V

    .line 879
    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 883
    :cond_10
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsDeviceMoving:Z

    if-eqz v0, :cond_3

    if-ne v4, p2, :cond_3

    .line 884
    const-string/jumbo v0, "PowerUI"

    const-string/jumbo v1, "Unregister SContextListener - From Check charging type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 886
    iput-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextListenerRigstered:Z

    goto/16 :goto_2
.end method

.method private checkCoolDownStatus(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x2

    .line 550
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_SPECIFIC_POWER_REQUEST_BY_VZW:Z

    if-eqz v1, :cond_0

    .line 581
    :cond_0
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    .line 582
    .local v0, "oldBatteryOverheatLevel":I
    const-string/jumbo v1, "battery_overheat_level"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    .line 583
    const-string/jumbo v1, "PowerUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Battery overheat Level = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    if-eq v0, v1, :cond_2

    .line 586
    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    if-ne v4, v1, :cond_3

    .line 587
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    invoke-interface {v1, v2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showOverheatWarning(I)V

    .line 588
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownWarningTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7530

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 596
    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    if-nez v1, :cond_4

    .line 597
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissOverheatWarning()V

    .line 549
    :cond_2
    :goto_1
    return-void

    .line 589
    :cond_3
    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    if-le v4, v1, :cond_1

    if-gt v4, v0, :cond_1

    .line 590
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissWillOverheatShutdownWarning()V

    .line 592
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownWarningTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 593
    const-string/jumbo v1, "PowerUI"

    const-string/jumbo v2, "Battery overheat level recovered from shutdown"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 598
    :cond_4
    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    const/4 v2, 0x1

    if-ne v2, v1, :cond_2

    .line 599
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    invoke-interface {v1, v2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showOverheatWarning(I)V

    goto :goto_1
.end method

.method private checkFullBatteryStatus(I)V
    .locals 2
    .param p1, "priorBatteryStatus"    # I

    .prologue
    const/4 v1, 0x5

    .line 538
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-eq p1, v0, :cond_0

    .line 539
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v1, v0, :cond_1

    .line 540
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showFullBatteryNotice()V

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    if-ne v1, p1, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissFullBatteryNotice()V

    goto :goto_0
.end method

.method private checkIncompatibleChargerConnection(I)V
    .locals 1
    .param p1, "priorBatteryOnline"    # I

    .prologue
    .line 934
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-nez v0, :cond_1

    .line 935
    if-eqz p1, :cond_1

    .line 936
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showIncompatibleChargerNotice()V

    .line 933
    :cond_0
    :goto_0
    return-void

    .line 937
    :cond_1
    if-nez p1, :cond_0

    .line 938
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissIncompatibleChargerNotice()V

    goto :goto_0
.end method

.method private checkPowerSavingRecommendStatus(II)V
    .locals 2
    .param p1, "priorBatteryLevel"    # I
    .param p2, "priorBatteryStatus"    # I

    .prologue
    const/4 v1, 0x2

    .line 899
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-eq v1, v0, :cond_2

    .line 900
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    if-lt v0, p1, :cond_0

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-eq p2, v0, :cond_2

    .line 901
    :cond_0
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    sparse-switch v0, :sswitch_data_0

    .line 898
    :cond_1
    :goto_0
    return-void

    .line 903
    :sswitch_0
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerSavingRecommendNotiTrigger:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 904
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    const/16 v1, 0x1e

    invoke-interface {v0, v1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showPowerSavingRecommendNotice(I)V

    goto :goto_0

    .line 908
    :sswitch_1
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerSavingRecommendNotiTrigger:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 909
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    const/16 v1, 0x28

    invoke-interface {v0, v1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showPowerSavingRecommendNotice(I)V

    goto :goto_0

    .line 913
    :sswitch_2
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerSavingRecommendNotiTrigger:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 914
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    const/16 v1, 0x32

    invoke-interface {v0, v1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showPowerSavingRecommendNotice(I)V

    goto :goto_0

    .line 917
    :cond_2
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-eq p2, v0, :cond_1

    .line 918
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v1, v0, :cond_1

    .line 919
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissPowerSavingRecommendNotice()V

    goto :goto_0

    .line 901
    nop

    :sswitch_data_0
    .sparse-switch
        0x1e -> :sswitch_0
        0x28 -> :sswitch_1
        0x32 -> :sswitch_2
    .end sparse-switch
.end method

.method private findBatteryLevelBucket(I)I
    .locals 4
    .param p1, "level"    # I

    .prologue
    const/4 v3, 0x0

    .line 311
    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    if-lt p1, v2, :cond_0

    .line 312
    const/4 v2, 0x1

    return v2

    .line 314
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v3

    if-le p1, v2, :cond_1

    .line 315
    return v3

    .line 317
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    array-length v0, v2

    .line 318
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 319
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v2, v2, v1

    if-gt p1, v2, :cond_2

    .line 320
    rsub-int/lit8 v2, v1, -0x1

    return v2

    .line 318
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 323
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "not possible!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private playChargerConnectionAnimation(ZI)V
    .locals 3
    .param p1, "priorFullyCopnnected"    # Z
    .param p2, "priorPlugType"    # I

    .prologue
    const/4 v2, 0x1

    .line 762
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eqz v0, :cond_1

    .line 763
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    .line 762
    if-eqz v0, :cond_1

    .line 763
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-ne p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    if-eq p1, v0, :cond_1

    .line 764
    :cond_0
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    const/4 v1, 0x4

    if-ne v1, v0, :cond_2

    .line 765
    const-string/jumbo v0, "PowerUI"

    const-string/jumbo v1, "Wireless charger connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerUI;->setChargerAnimationView(I)V

    .line 767
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    .line 761
    :cond_1
    :goto_0
    return-void

    .line 769
    :cond_2
    if-eqz p1, :cond_3

    if-eq v2, p2, :cond_1

    .line 770
    const/4 v0, 0x2

    if-eq v0, p2, :cond_1

    .line 771
    :cond_3
    const-string/jumbo v0, "PowerUI"

    const-string/jumbo v1, "Cable charger connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    invoke-direct {p0, v2}, Lcom/android/systemui/power/PowerUI;->setChargerAnimationView(I)V

    .line 773
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    goto :goto_0
.end method

.method private playChargerConnectionSound(ZII)V
    .locals 5
    .param p1, "priorFullyCopnnected"    # Z
    .param p2, "priorPlugType"    # I
    .param p3, "priorBateryStatus"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x4

    .line 733
    const-string/jumbo v0, "PowerUI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "priorPlugType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mPlugType =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eq p2, v0, :cond_3

    const/4 v0, -0x1

    if-eq v0, p2, :cond_3

    .line 735
    :goto_0
    if-eqz p2, :cond_0

    .line 736
    if-ne p2, v3, :cond_4

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eq v0, v3, :cond_4

    .line 739
    :cond_0
    :goto_1
    if-eq v3, p3, :cond_7

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v3, v0, :cond_7

    .line 740
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    const/4 v1, 0x3

    if-eq v1, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    const/4 v1, 0x7

    if-ne v1, v0, :cond_6

    .line 742
    :cond_1
    const-string/jumbo v0, "PowerUI"

    const-string/jumbo v1, "battery health interruption so don\'t play charger connection sound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_2
    :goto_2
    return-void

    .line 734
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 737
    :cond_4
    if-eq p2, v3, :cond_5

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eq v0, v3, :cond_0

    .line 738
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    if-eq p1, v0, :cond_2

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eqz v0, :cond_2

    goto :goto_1

    .line 741
    :cond_6
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    const/4 v1, 0x6

    if-eq v1, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    const/16 v1, 0x8

    if-eq v1, v0, :cond_1

    .line 744
    :cond_7
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mFullyConnected:Z

    if-eqz v0, :cond_2

    .line 745
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "charging_sounds_enabled"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 747
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-ne v3, v0, :cond_8

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsDeviceMoving:Z

    if-nez v0, :cond_8

    .line 748
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsScreenOn:Z

    .line 747
    if-nez v0, :cond_8

    .line 748
    if-eqz p2, :cond_2

    .line 749
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0, v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->playPowerSound(I)V

    goto :goto_2
.end method

.method private setChargerAnimationView(I)V
    .locals 7
    .param p1, "type"    # I

    .prologue
    const/4 v1, -0x1

    const/4 v6, 0x0

    .line 780
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowLp:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    .line 781
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 783
    const/16 v3, 0x7d9

    .line 784
    const v4, 0x1000118

    .line 788
    const/4 v5, -0x3

    move v2, v1

    .line 781
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowLp:Landroid/view/WindowManager$LayoutParams;

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_1

    .line 791
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    .line 793
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const v1, 0x7f04001e

    invoke-static {v0, v1, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/power/ChargerAnimationView;

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    .line 794
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 795
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/power/ChargerAnimationView;->setChargerAnimationViewVisibility(I)V

    .line 796
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/power/ChargerAnimationView;->setChargingAnimationListner(Lcom/android/systemui/power/ChargerAnimationView$ChargerAnimationListener;)V

    .line 798
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mDisplay:Landroid/view/Display;

    .line 799
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, v1}, Lcom/android/systemui/power/ChargerAnimationView;->setWindowDisplay(Landroid/view/Display;)V

    .line 800
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mIsScreenOn:Z

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/systemui/power/ChargerAnimationView;->startChargerAnimation(IIZ)V

    .line 779
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1003
    const-string/jumbo v0, "mLowBatteryAlertCloseLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1004
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1005
    const-string/jumbo v0, "mLowBatteryReminderLevels="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1006
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1007
    const-string/jumbo v0, "mBatteryLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1008
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1009
    const-string/jumbo v0, "mBatteryStatus="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1010
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1011
    const-string/jumbo v0, "mPlugType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1012
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1013
    const-string/jumbo v0, "mInvalidCharger="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1014
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1015
    const-string/jumbo v0, "mScreenOffTime="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1016
    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1017
    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1018
    const-string/jumbo v0, " ("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1019
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 1020
    const-string/jumbo v0, " ago)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1022
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1023
    const-string/jumbo v0, "soundTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1024
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1025
    const-string/jumbo v1, "low_battery_sound_timeout"

    const/4 v2, 0x0

    .line 1024
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1026
    const-string/jumbo v0, "bucket: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1027
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1028
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    invoke-interface {v0, p2}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dump(Ljava/io/PrintWriter;)V

    .line 1002
    return-void
.end method

.method public onChargerAnimationEnd()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 805
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 807
    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    .line 809
    :cond_0
    iput-object v2, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    .line 811
    iput-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    .line 813
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    if-eqz v0, :cond_1

    .line 814
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    invoke-interface {v0, v1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingNotice(I)V

    .line 804
    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 819
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 821
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_BATTERY_CHARGER_CONNECTION_VI:Z

    if-eqz v1, :cond_0

    .line 822
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mDisplay:Landroid/view/Display;

    if-eqz v1, :cond_0

    .line 823
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mCurrentOrientation:I

    .line 824
    .local v0, "oldOrientation":I
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/power/PowerUI;->mCurrentOrientation:I

    .line 826
    iget v1, p0, Lcom/android/systemui/power/PowerUI;->mCurrentOrientation:I

    if-eq v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mIsChargerAnimationPlaying:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    if-eqz v1, :cond_0

    .line 827
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-virtual {v1}, Lcom/android/systemui/power/ChargerAnimationView;->stopChargerAnimation()V

    .line 818
    .end local v0    # "oldOrientation":I
    :cond_0
    return-void
.end method

.method public start()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 225
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    .line 226
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide/16 v4, -0x1

    :goto_0
    iput-wide v4, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    .line 227
    new-instance v4, Lcom/android/systemui/power/PowerNotificationWarnings;

    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {p0, v3}, Lcom/android/systemui/power/PowerUI;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {v4, v5, v3}, Lcom/android/systemui/power/PowerNotificationWarnings;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v4, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    .line 229
    new-instance v0, Lcom/android/systemui/power/PowerUI$7;

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/power/PowerUI$7;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/os/Handler;)V

    .line 235
    .local v0, "obs":Landroid/database/ContentObserver;
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 237
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "low_power_trigger_level"

    .line 236
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 238
    const/4 v4, -0x1

    .line 236
    invoke-virtual {v2, v3, v6, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 239
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->updateBatteryWarningLevels()V

    .line 240
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

    invoke-virtual {v3}, Lcom/android/systemui/power/PowerUI$Receiver;->init()V

    .line 243
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "power_mode_noti_trigger_level"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 244
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mPowersavingNotiTriggerObserver:Landroid/database/ContentObserver;

    .line 243
    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 245
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "power_mode_noti_trigger_level"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/power/PowerUI;->mPowerSavingRecommendNotiTrigger:I

    .line 249
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 250
    .local v1, "powerManager":Landroid/os/PowerManager;
    if-nez v1, :cond_2

    .line 251
    const-string/jumbo v3, "PowerUI"

    const-string/jumbo v4, "start : fail to get PowerManager reference"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.sec.feature.sensorhub"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    const-string/jumbo v3, "PowerUI"

    const-string/jumbo v4, "start : hasSystemFeature(com.sec.feature.sensorhub)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "scontext"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/scontext/SContextManager;

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 260
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v3, :cond_0

    .line 261
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextEnabled:Z

    .line 262
    const-string/jumbo v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start : (mSContextManager != null - mIsSContextEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/power/PowerUI;->mIsSContextEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 269
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 273
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mScreenOnOffCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 224
    return-void

    .line 226
    .end local v0    # "obs":Landroid/database/ContentObserver;
    .end local v1    # "powerManager":Landroid/os/PowerManager;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    goto/16 :goto_0

    .line 253
    .restart local v0    # "obs":Landroid/database/ContentObserver;
    .restart local v1    # "powerManager":Landroid/os/PowerManager;
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    :cond_2
    const-string/jumbo v3, "PowerUI"

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/power/PowerUI;->mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_1
.end method

.method updateBatteryWarningLevels()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 277
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 278
    const v5, 0x10e0050

    .line 277
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 280
    .local v0, "critLevel":I
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 281
    .local v2, "resolver":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 282
    const v5, 0x10e0052

    .line 281
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 284
    .local v1, "defWarnLevel":I
    const-string/jumbo v4, "low_power_trigger_level"

    .line 283
    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 287
    .local v3, "warnLevel":I
    move v3, v1

    .line 289
    if-ge v1, v0, :cond_0

    .line 290
    move v3, v0

    .line 293
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aput v3, v4, v6

    .line 294
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    const/4 v5, 0x1

    aput v0, v4, v5

    .line 295
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    aget v4, v4, v6

    .line 296
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 297
    const v6, 0x10e0053

    .line 296
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 295
    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    .line 276
    return-void
.end method
