.class public Lcom/android/systemui/power/PowerNotificationWarnings;
.super Ljava/lang/Object;
.source "PowerNotificationWarnings.java"

# interfaces
.implements Lcom/android/systemui/power/PowerUI$WarningsUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/PowerNotificationWarnings$1;,
        Lcom/android/systemui/power/PowerNotificationWarnings$2;,
        Lcom/android/systemui/power/PowerNotificationWarnings$3;,
        Lcom/android/systemui/power/PowerNotificationWarnings$4;,
        Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;
    }
.end annotation


# static fields
.field private static final AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final DEBUG:Z

.field private static final SHOWING_STRINGS:[Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBatteryHealth:I

.field private mBatteryHealthInterruptionDialog:Landroid/app/AlertDialog;

.field mBatteryHealthInterruptionTask:Ljava/lang/Runnable;

.field private mBatteryLevel:I

.field private mBatterySaverRecommend:Z

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryStatus:I

.field private mBucket:I

.field private mBucketDroppedNegativeTimeMs:J

.field private mChargingTime:J

.field private mChargingType:I

.field private mConnectedChargerChangedToast:Landroid/widget/Toast;

.field private final mContext:Landroid/content/Context;

.field private mCurrentBatteryMode:I

.field private mCurrentRecommendedBatteryLevel:I

.field private mFTAMode:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIncompatibleChargerDialog:Landroid/app/AlertDialog;

.field private mInvalidCharger:Z

.field private final mNoMan:Landroid/app/NotificationManager;

.field private mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

.field private mOldBatteryLevel:I

.field private final mOpenBatterySettings:Landroid/content/Intent;

.field private final mOpenBatterySmartManagerSettings:Landroid/content/Intent;

.field private final mOpenLowBatterySmartManagerSettings:Landroid/content/Intent;

.field private final mOpenSaverDetail:Landroid/content/Intent;

.field private mOverheatNoticeDialog:Landroid/app/AlertDialog;

.field private mOverheatShutdownHappenedDialog:Landroid/app/AlertDialog;

.field mOverheatShutdownTask:Ljava/lang/Runnable;

.field private mPlaySound:Z

.field private final mPowerMan:Landroid/os/PowerManager;

.field private mPowerSupplyingInLowBatteryNoticeDialog:Landroid/app/AlertDialog;

.field private final mPowersavingObserver:Landroid/database/ContentObserver;

.field private final mReceiver:Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;

.field private mSafeModeDialog:Landroid/app/AlertDialog;

.field private mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field private mScreenOffTime:J

.field private mShowChargingNotice:Z

.field private mShowing:I

.field private mSlowByChargerConnectionInfoDialog:Landroid/app/AlertDialog;

.field private mSlowChargerToast:Landroid/widget/Toast;

.field private final mSmartManagerBatterySettings:Landroid/content/Intent;

.field private final mStartSaverMode:Landroid/content/DialogInterface$OnClickListener;

.field private mUnintentionalLcdOnAlertDialog:Landroid/app/AlertDialog;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWarning:Z

.field mWaterProtectionAlertDialog:Landroid/app/AlertDialog;

.field private mWillOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

.field private mWirelessChargerDisconnectToast:Landroid/widget/Toast;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/power/PowerNotificationWarnings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySaverRecommend:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/power/PowerNotificationWarnings;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryStatus:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/power/PowerNotificationWarnings;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/power/PowerNotificationWarnings;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentRecommendedBatteryLevel:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenLowBatterySmartManagerSettings:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealthInterruptionDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/power/PowerNotificationWarnings;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I

    return p1
.end method

.method static synthetic -set10(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mUnintentionalLcdOnAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set11(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWillOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/power/PowerNotificationWarnings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFTAMode:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIncompatibleChargerDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatNoticeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownHappenedDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerSupplyingInLowBatteryNoticeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSafeModeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set8(Lcom/android/systemui/power/PowerNotificationWarnings;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    return-object p1
.end method

.method static synthetic -set9(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowByChargerConnectionInfoDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryNotification()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissOverheatShutdownHappenedPopUp()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissPowerSavingNotification()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissWillOverheatShutdownPopUp()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/power/PowerNotificationWarnings;Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->setSaverMode(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showOverHeatPopUp()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showSafeModePopUp()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showStartSaverConfirmation()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 92
    sget-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    .line 99
    new-array v0, v3, [Ljava/lang/String;

    .line 100
    const-string/jumbo v1, "SHOWING_NOTHING"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 101
    const-string/jumbo v1, "SHOWING_WARNING"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 102
    const-string/jumbo v1, "SHOWING_SAVER"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 103
    const-string/jumbo v1, "SHOWING_INVALID_CHARGER"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 99
    sput-object v0, Lcom/android/systemui/power/PowerNotificationWarnings;->SHOWING_STRINGS:[Ljava/lang/String;

    .line 115
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 117
    const/16 v1, 0xd

    .line 115
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/power/PowerNotificationWarnings;->AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    .line 124
    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;)V

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mReceiver:Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;

    .line 125
    const-string/jumbo v1, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->settings(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenBatterySettings:Landroid/content/Intent;

    .line 142
    iput v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryStatus:I

    .line 143
    iput v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealth:I

    .line 172
    const-string/jumbo v1, "com.samsung.android.sm.ACTION_BATTERY"

    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->settings(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSmartManagerBatterySettings:Landroid/content/Intent;

    .line 180
    iput-boolean v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowChargingNotice:Z

    .line 182
    iput v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    .line 183
    iput v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOldBatteryLevel:I

    .line 184
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    .line 194
    iput v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I

    .line 200
    const-string/jumbo v1, "com.samsung.android.sm.POWER_MODE_CHANGE"

    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->settings(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenSaverDetail:Landroid/content/Intent;

    .line 207
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.sm.ACTION_BATTERY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenBatterySmartManagerSettings:Landroid/content/Intent;

    .line 209
    iput-boolean v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySaverRecommend:Z

    .line 210
    const/16 v1, 0x1e

    iput v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentRecommendedBatteryLevel:I

    .line 233
    const-string/jumbo v1, "com.samsung.android.sm.ACTION_LOW_BATTERY"

    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->settings(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenLowBatterySmartManagerSettings:Landroid/content/Intent;

    .line 245
    iput-boolean v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFTAMode:Z

    .line 889
    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$1;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownTask:Ljava/lang/Runnable;

    .line 1176
    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$2;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealthInterruptionTask:Ljava/lang/Runnable;

    .line 2005
    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$3;

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings$3;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowersavingObserver:Landroid/database/ContentObserver;

    .line 2135
    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$4;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mStartSaverMode:Landroid/content/DialogInterface$OnClickListener;

    .line 256
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 257
    const-string/jumbo v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    .line 258
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerMan:Landroid/os/PowerManager;

    .line 259
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mReceiver:Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;

    invoke-virtual {v1}, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->init()V

    .line 262
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "low_power"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 263
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowersavingObserver:Landroid/database/ContentObserver;

    .line 262
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 265
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "low_power"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 267
    .local v0, "powerSaving":I
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I

    .line 255
    :goto_0
    return-void

    .line 270
    :cond_0
    if-eqz v0, :cond_1

    .line 271
    iput v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I

    goto :goto_0

    .line 273
    :cond_1
    iput v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I

    goto :goto_0
.end method

.method private addCloseSaverRecommendAction(Landroid/app/Notification$Builder;)V
    .locals 3
    .param p1, "nb"    # Landroid/app/Notification$Builder;

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0653

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.systemui.power.action.ACTION_BATTERY_CLOSE_SAVER_RECOMMEND"

    invoke-direct {p0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1585
    return-void
.end method

.method private attachLowBatterySound(Landroid/app/Notification$Builder;)V
    .locals 11
    .param p1, "b"    # Landroid/app/Notification$Builder;

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 558
    iget-object v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 561
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v6, "low_battery_sound_timeout"

    .line 560
    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 562
    .local v1, "silenceAfter":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mScreenOffTime:J

    sub-long v2, v6, v8

    .line 563
    .local v2, "offTime":J
    if-lez v1, :cond_0

    .line 564
    iget-wide v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mScreenOffTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 565
    int-to-long v6, v1

    cmp-long v6, v2, v6

    if-lez v6, :cond_0

    .line 566
    const-string/jumbo v6, "PowerUI.Notification"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "screen off too long ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms, limit "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 567
    const-string/jumbo v8, "ms): not waking up the user with low battery sound"

    .line 566
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    return-void

    .line 571
    :cond_0
    sget-boolean v6, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 572
    const-string/jumbo v6, "PowerUI.Notification"

    const-string/jumbo v7, "playing low battery sound. pick-a-doop!"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_1
    const-string/jumbo v6, "power_sounds_enabled"

    invoke-static {v0, v6, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v10, :cond_2

    .line 577
    const-string/jumbo v6, "low_battery_sound"

    .line 576
    invoke-static {v0, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 578
    .local v4, "soundPath":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 579
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 580
    .local v5, "soundUri":Landroid/net/Uri;
    if-eqz v5, :cond_2

    .line 581
    sget-object v6, Lcom/android/systemui/power/PowerNotificationWarnings;->AUDIO_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p1, v5, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 582
    sget-boolean v6, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string/jumbo v6, "PowerUI.Notification"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "playing sound "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    .end local v4    # "soundPath":Ljava/lang/String;
    .end local v5    # "soundUri":Landroid/net/Uri;
    :cond_2
    return-void
.end method

.method private dismissChargingNotification()V
    .locals 4

    .prologue
    .line 1351
    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissChargingNotification()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v1, "charging_state"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v3, 0x7f130039

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1350
    return-void
.end method

.method private dismissFullBatteryNotification()V
    .locals 4

    .prologue
    .line 688
    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissing full battery notification"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v1, "full_battery"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v3, 0x7f130039

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 687
    return-void
.end method

.method private dismissIncompatibleChargerNotification()V
    .locals 4

    .prologue
    .line 1719
    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissing incompatible charger notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v1, "incompatible_charger_state"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v3, 0x7f130039

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1718
    return-void
.end method

.method private dismissInvalidChargerNotification()V
    .locals 2

    .prologue
    .line 594
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissing invalid charger notification"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    .line 596
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 593
    return-void
.end method

.method private dismissLowBatteryNotification()V
    .locals 2

    .prologue
    .line 517
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissing low battery notification"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    .line 519
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 516
    return-void
.end method

.method private dismissOverheatNotification()V
    .locals 4

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v1, "over_heat"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v3, 0x7f130039

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 801
    return-void
.end method

.method private dismissOverheatShutdownHappenedPopUp()V
    .locals 2

    .prologue
    .line 969
    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissOverheatShutdownHappenedPopUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownHappenedDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownHappenedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 968
    :cond_0
    return-void
.end method

.method private dismissPowerSavingNotification()V
    .locals 4

    .prologue
    .line 1999
    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissing saver notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v1, "battery_saver"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v3, 0x7f130039

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1998
    return-void
.end method

.method private dismissPowerSavingRecommendNotification()V
    .locals 4

    .prologue
    .line 1596
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySaverRecommend:Z

    if-eqz v0, :cond_0

    .line 1597
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v1, "battery_saver_recommend"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v3, 0x7f130039

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1598
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySaverRecommend:Z

    .line 1595
    :cond_0
    return-void
.end method

.method private dismissPowerSupplyingInLowBatteryPopUp()V
    .locals 1

    .prologue
    .line 1766
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerSupplyingInLowBatteryNoticeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1767
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerSupplyingInLowBatteryNoticeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1765
    :cond_0
    return-void
.end method

.method private dismissSlowByChargerConnectionInfoPopUp()V
    .locals 2

    .prologue
    .line 1420
    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissChargingNotification()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowByChargerConnectionInfoDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1423
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowByChargerConnectionInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1419
    :cond_0
    return-void
.end method

.method private dismissWillOverheatShutdownPopUp()V
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWillOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 878
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWillOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 876
    :cond_0
    return-void
.end method

.method private getChargeEstimateTime()J
    .locals 4

    .prologue
    .line 1429
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-nez v1, :cond_0

    .line 1430
    const-string/jumbo v1, "batterystats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 1433
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-eqz v1, :cond_1

    .line 1434
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1}, Lcom/android/internal/app/IBatteryStats;->computeChargeTimeRemaining()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 1436
    :catch_0
    move-exception v0

    .line 1437
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "Error calling IBatteryStats: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1439
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method private getFormattedTime(J)Ljava/lang/String;
    .locals 13
    .param p1, "millis"    # J

    .prologue
    .line 1443
    const/16 v1, 0x3c

    .line 1444
    .local v1, "SECONDS_PER_MINUTE":I
    const/16 v0, 0xe10

    .line 1447
    .local v0, "SECONDS_PER_HOUR":I
    const-wide/16 v8, 0x3e8

    div-long v6, p1, v8

    .line 1449
    .local v6, "secondsLong":J
    const/4 v3, 0x0

    .local v3, "hours":I
    const/4 v4, 0x0

    .local v4, "minutes":I
    const/4 v5, 0x0

    .line 1451
    .local v5, "seconds":I
    const-wide/16 v8, 0xe10

    cmp-long v8, v6, v8

    if-ltz v8, :cond_0

    .line 1452
    const-wide/16 v8, 0xe10

    div-long v8, v6, v8

    long-to-int v3, v8

    .line 1453
    int-to-long v8, v3

    const-wide/16 v10, 0xe10

    mul-long/2addr v8, v10

    sub-long/2addr v6, v8

    .line 1455
    :cond_0
    const-wide/16 v8, 0x3c

    cmp-long v8, v6, v8

    if-ltz v8, :cond_1

    .line 1456
    const-wide/16 v8, 0x3c

    div-long v8, v6, v8

    long-to-int v4, v8

    .line 1457
    int-to-long v8, v4

    const-wide/16 v10, 0x3c

    mul-long/2addr v8, v10

    sub-long/2addr v6, v8

    .line 1459
    :cond_1
    long-to-int v5, v6

    .line 1461
    if-nez v3, :cond_2

    const/4 v8, 0x2

    if-lt v4, v8, :cond_2

    const/16 v8, 0x1e

    if-lt v5, v8, :cond_2

    .line 1462
    add-int/lit8 v4, v4, 0x1

    .line 1464
    :cond_2
    if-lez v3, :cond_3

    if-lez v4, :cond_3

    .line 1465
    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const v10, 0x7f0f0026

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1485
    .local v2, "formattedTime":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1467
    .end local v2    # "formattedTime":Ljava/lang/String;
    :cond_3
    if-lez v3, :cond_4

    .line 1468
    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f0f0027

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "formattedTime":Ljava/lang/String;
    goto :goto_0

    .line 1469
    .end local v2    # "formattedTime":Ljava/lang/String;
    :cond_4
    if-lez v4, :cond_7

    .line 1470
    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v8, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "el"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1471
    const/4 v8, 0x1

    if-ne v4, v8, :cond_5

    .line 1472
    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f0f0028

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "formattedTime":Ljava/lang/String;
    goto :goto_0

    .line 1474
    .end local v2    # "formattedTime":Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x10400a3

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "formattedTime":Ljava/lang/String;
    goto :goto_0

    .line 1476
    .end local v2    # "formattedTime":Ljava/lang/String;
    :cond_6
    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f0f0028

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "formattedTime":Ljava/lang/String;
    goto :goto_0

    .line 1479
    .end local v2    # "formattedTime":Ljava/lang/String;
    :cond_7
    const/4 v8, 0x1

    if-le v5, v8, :cond_8

    .line 1480
    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x10400a7

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "formattedTime":Ljava/lang/String;
    goto/16 :goto_0

    .line 1482
    .end local v2    # "formattedTime":Ljava/lang/String;
    :cond_8
    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x10400a8

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "formattedTime":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private pendingActivity(Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 476
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 477
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v4, 0x0

    move-object v2, p1

    move v3, v1

    .line 476
    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 481
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 482
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 481
    invoke-static {v0, v3, v1, v3, v2}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private playPowerStateSound(II)V
    .locals 9
    .param p1, "soundType"    # I
    .param p2, "ringerMode"    # I

    .prologue
    const/4 v8, 0x1

    .line 1887
    const-string/jumbo v4, "PowerUI.Notification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "playPowerStateSound : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    const/4 v4, 0x2

    if-ne v4, p2, :cond_2

    .line 1892
    packed-switch p1, :pswitch_data_0

    .line 1907
    :try_start_0
    const-string/jumbo v4, "system/media/audio/ui/TW_Battery_caution.ogg"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1912
    .local v3, "soundUri":Landroid/net/Uri;
    :goto_0
    if-ne v8, p1, :cond_1

    .line 1913
    const/4 v0, 0x1

    .line 1916
    .local v0, "audioStream":I
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6, v0}, Lcom/android/systemui/media/NotificationPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZI)V

    .line 1918
    const-string/jumbo v4, "PowerUI.Notification"

    const-string/jumbo v5, "RINGER_MODE_NORMAL"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    .end local v0    # "audioStream":I
    .end local v3    # "soundUri":Landroid/net/Uri;
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1950
    const-string/jumbo v5, "haptic_feedback_enabled"

    const/4 v6, 0x0

    const/4 v7, -0x2

    .line 1949
    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v8, :cond_0

    .line 1951
    if-ne p1, v8, :cond_0

    .line 1952
    if-eq v8, p2, :cond_0

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v4, :cond_0

    .line 1953
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mVibrator:Landroid/os/Vibrator;

    .line 1954
    sget-object v5, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    .line 1953
    const v6, 0xc36b

    const/4 v7, -0x1

    .line 1954
    const/4 v8, 0x0

    .line 1953
    invoke-virtual {v4, v6, v7, v8, v5}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    .line 1886
    :cond_0
    :goto_3
    return-void

    .line 1894
    :pswitch_0
    const-string/jumbo v4, "system/media/audio/ui/Charger_Connection.ogg"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .restart local v3    # "soundUri":Landroid/net/Uri;
    goto :goto_0

    .line 1898
    .end local v3    # "soundUri":Landroid/net/Uri;
    :pswitch_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1899
    const-string/jumbo v5, "low_battery_sound"

    .line 1898
    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .restart local v3    # "soundUri":Landroid/net/Uri;
    goto :goto_0

    .line 1903
    .end local v3    # "soundUri":Landroid/net/Uri;
    :pswitch_2
    const-string/jumbo v4, "system/media/audio/ui/TW_Battery_caution.ogg"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .restart local v3    # "soundUri":Landroid/net/Uri;
    goto :goto_0

    .line 1915
    :cond_1
    const/4 v0, 0x5

    .restart local v0    # "audioStream":I
    goto :goto_1

    .line 1919
    .end local v0    # "audioStream":I
    .end local v3    # "soundUri":Landroid/net/Uri;
    :cond_2
    if-ne v8, p2, :cond_4

    .line 1921
    packed-switch p1, :pswitch_data_1

    .line 1932
    const v2, 0xc36b

    .line 1936
    .local v2, "hapticFeedback":I
    :goto_4
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v4, :cond_3

    .line 1937
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mVibrator:Landroid/os/Vibrator;

    sget-object v5, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-virtual {v4, v2, v6, v7, v5}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    .line 1941
    :goto_5
    const-string/jumbo v4, "PowerUI.Notification"

    const-string/jumbo v5, "RINGER_MODE_VIBRATE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1956
    .end local v2    # "hapticFeedback":I
    :catch_0
    move-exception v1

    .line 1957
    .local v1, "exception":Ljava/lang/Exception;
    const-string/jumbo v4, "PowerUI.Notification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "playPowerSound : Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1923
    .end local v1    # "exception":Ljava/lang/Exception;
    :pswitch_3
    const v2, 0xc36b

    .line 1924
    .restart local v2    # "hapticFeedback":I
    goto :goto_4

    .line 1928
    .end local v2    # "hapticFeedback":I
    :pswitch_4
    const v2, 0xc36f

    .line 1929
    .restart local v2    # "hapticFeedback":I
    goto :goto_4

    .line 1939
    :cond_3
    :try_start_1
    const-string/jumbo v4, "PowerUI.Notification"

    const-string/jumbo v5, "playPowerSound : Vibrator is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1942
    .end local v2    # "hapticFeedback":I
    :cond_4
    if-nez p2, :cond_5

    .line 1943
    const-string/jumbo v4, "PowerUI.Notification"

    const-string/jumbo v5, "RINGER_MODE_SILENT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1945
    :cond_5
    const-string/jumbo v4, "PowerUI.Notification"

    const-string/jumbo v5, "unknown RINGER_MODE"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 1892
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1921
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private setSaverMode(Z)V
    .locals 1
    .param p1, "mode"    # Z

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerMan:Landroid/os/PowerManager;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager;->setPowerSaveMode(Z)Z

    .line 628
    return-void
.end method

.method private static settings(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 487
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1c800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private showBatteryHealthInterruptionPopUp()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1102
    const/4 v2, 0x0

    .line 1103
    .local v2, "messageId":I
    iget v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealth:I

    packed-switch v3, :pswitch_data_0

    .line 1127
    :goto_0
    :pswitch_0
    if-nez v2, :cond_0

    .line 1128
    const-string/jumbo v3, "PowerUI.Notification"

    const-string/jumbo v4, "status is NotCharging but health is wrong value"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    return-void

    .line 1105
    :pswitch_1
    const v2, 0x7f0f0657

    .line 1106
    goto :goto_0

    .line 1109
    :pswitch_2
    const v2, 0x7f0f0658

    .line 1110
    goto :goto_0

    .line 1116
    :pswitch_3
    const v2, 0x7f0f0655

    .line 1117
    goto :goto_0

    .line 1120
    :pswitch_4
    const v2, 0x7f0f0659

    .line 1121
    goto :goto_0

    .line 1132
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealthInterruptionDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_1

    .line 1133
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealthInterruptionDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1159
    :goto_1
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->playPowerSound(I)V

    .line 1101
    return-void

    .line 1136
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1137
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1138
    const v3, 0x7f0f0654

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1139
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1140
    const v3, 0x104000a

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1142
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1143
    .local v1, "d":Landroid/app/AlertDialog;
    new-instance v3, Lcom/android/systemui/power/PowerNotificationWarnings$13;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$13;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1154
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 1155
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1156
    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealthInterruptionDialog:Landroid/app/AlertDialog;

    goto :goto_1

    .line 1103
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private showChargingNotification(I)V
    .locals 14
    .param p1, "priorChargingType"    # I

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x6

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1235
    const-string/jumbo v2, ""

    .line 1237
    .local v2, "text":Ljava/lang/CharSequence;
    const-string/jumbo v5, "PowerUI.Notification"

    const-string/jumbo v8, "showChargingNotification()"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    iget v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    packed-switch v5, :pswitch_data_0

    .line 1291
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v8, 0x7f0f063d

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1295
    .local v4, "title":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    sget-boolean v5, Lcom/android/systemui/SystemUIRune;->SUPPORT_USB_TYPE_C:Z

    if-eqz v5, :cond_9

    .line 1296
    iget v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    if-ne v5, v12, :cond_8

    move v5, v6

    .line 1295
    :goto_1
    if-nez v5, :cond_1

    .line 1297
    iget-wide v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_a

    .line 1298
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 1299
    iget v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    iget-wide v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    invoke-direct {p0, v10, v11}, Lcom/android/systemui/power/PowerNotificationWarnings;->getFormattedTime(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    .line 1298
    const v10, 0x7f0f064c

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1306
    :cond_1
    :goto_2
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1307
    const v8, 0x7f020575

    .line 1306
    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1309
    iget-wide v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucketDroppedNegativeTimeMs:J

    .line 1306
    invoke-virtual {v5, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1315
    const/4 v7, -0x2

    .line 1306
    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1316
    const-string/jumbo v7, "sys"

    .line 1306
    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1318
    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1319
    const v8, 0x106005a

    .line 1318
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 1306
    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1322
    .local v1, "nb":Landroid/app/Notification$Builder;
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSmartManagerBatterySettings:Landroid/content/Intent;

    invoke-direct {p0, v5}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingActivity(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1324
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 1327
    iget-wide v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-gtz v5, :cond_2

    iget v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    if-ne v5, v13, :cond_b

    .line 1329
    :cond_2
    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5, v1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v5, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v0

    .line 1333
    .local v0, "n":Landroid/app/Notification;
    :goto_3
    iget-object v5, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v5, :cond_3

    .line 1334
    iget-object v5, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const v7, 0x1020044

    const/16 v8, 0x8

    invoke-virtual {v5, v7, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1336
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v7, "charging_state"

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v9, 0x7f130039

    invoke-virtual {v5, v7, v9, v0, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1337
    iput-boolean v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowChargingNotice:Z

    .line 1232
    return-void

    .line 1241
    .end local v0    # "n":Landroid/app/Notification;
    .end local v1    # "nb":Landroid/app/Notification$Builder;
    .end local v4    # "title":Ljava/lang/CharSequence;
    :pswitch_0
    const-string/jumbo v5, "VZW"

    sget-object v8, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "SPR"

    sget-object v8, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1242
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v8, 0x7f0f063e

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 1244
    .end local v4    # "title":Ljava/lang/CharSequence;
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v8, 0x7f0f063d

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 1248
    .end local v4    # "title":Ljava/lang/CharSequence;
    :pswitch_1
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v8, 0x7f0f063f

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 1252
    .end local v4    # "title":Ljava/lang/CharSequence;
    :pswitch_2
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v8, 0x7f0f0640

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 1256
    .end local v4    # "title":Ljava/lang/CharSequence;
    :pswitch_3
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v8, 0x7f0f0641

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "title":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 1260
    .end local v4    # "title":Ljava/lang/CharSequence;
    :pswitch_4
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v8, 0x7f0f0645

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1261
    .restart local v4    # "title":Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v9, 0x7f0f0646

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1262
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "\n"

    invoke-virtual {v5, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1264
    if-eq p1, v13, :cond_0

    .line 1265
    const v3, 0x7f0f0647

    .line 1267
    .local v3, "textId":I
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowChargerToast:Landroid/widget/Toast;

    if-nez v5, :cond_6

    .line 1268
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string/jumbo v8, ""

    invoke-static {v5, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowChargerToast:Landroid/widget/Toast;

    .line 1270
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowChargerToast:Landroid/widget/Toast;

    if-eqz v5, :cond_7

    .line 1271
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowChargerToast:Landroid/widget/Toast;

    invoke-virtual {v5, v3}, Landroid/widget/Toast;->setText(I)V

    .line 1272
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowChargerToast:Landroid/widget/Toast;

    invoke-virtual {v5, v7}, Landroid/widget/Toast;->setDuration(I)V

    .line 1273
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowChargerToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1275
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v5, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1282
    .end local v3    # "textId":I
    .end local v4    # "title":Ljava/lang/CharSequence;
    :pswitch_5
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v8, 0x7f0f0648

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1283
    .restart local v4    # "title":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v8, 0x7f0f064a

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1285
    if-eq p1, v12, :cond_0

    .line 1286
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showSlowByChargerConnectionInfoPopUp()V

    goto/16 :goto_0

    :cond_8
    move v5, v7

    .line 1296
    goto/16 :goto_1

    :cond_9
    move v5, v7

    .line 1295
    goto/16 :goto_1

    .line 1301
    :cond_a
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    new-array v9, v6, [Ljava/lang/Object;

    .line 1302
    iget v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    .line 1301
    const v10, 0x7f0f064d

    invoke-virtual {v8, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 1328
    .restart local v1    # "nb":Landroid/app/Notification$Builder;
    :cond_b
    sget-boolean v5, Lcom/android/systemui/SystemUIRune;->SUPPORT_USB_TYPE_C:Z

    if-eqz v5, :cond_c

    iget v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    if-eq v5, v12, :cond_2

    .line 1331
    :cond_c
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .restart local v0    # "n":Landroid/app/Notification;
    goto/16 :goto_3

    .line 1239
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private showChargingTypeSwitchedToast(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "toastText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 1532
    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "showChargingTypeSwitchedToast()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mConnectedChargerChangedToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 1535
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mConnectedChargerChangedToast:Landroid/widget/Toast;

    .line 1537
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mConnectedChargerChangedToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 1538
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mConnectedChargerChangedToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1539
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mConnectedChargerChangedToast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 1540
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mConnectedChargerChangedToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1531
    :goto_0
    return-void

    .line 1542
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private showFullBatteryNotification()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 653
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0616

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 654
    .local v3, "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0617

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 656
    .local v2, "text":Ljava/lang/CharSequence;
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 657
    const v5, 0x7f02058a

    .line 656
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 659
    iget-wide v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucketDroppedNegativeTimeMs:J

    .line 656
    invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 660
    const/4 v5, 0x0

    .line 656
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 666
    const/4 v5, -0x2

    .line 656
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 667
    const-string/jumbo v5, "sys"

    .line 656
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 669
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 670
    const v6, 0x7f0b00bd

    .line 669
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 656
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 671
    .local v1, "nb":Landroid/app/Notification$Builder;
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 673
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4, v1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v4, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v0

    .line 675
    .local v0, "n":Landroid/app/Notification;
    iget-object v4, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_0

    .line 676
    iget-object v4, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const v5, 0x1020044

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 678
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v5, "full_battery"

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v7, 0x7f130039

    invoke-virtual {v4, v5, v7, v0, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 652
    return-void
.end method

.method private showIncompatibleChargerPopUpAndNotification()V
    .locals 15

    .prologue
    .line 1624
    const-string/jumbo v11, "PowerUI.Notification"

    const-string/jumbo v12, "showIncompatibleChargerNotification()"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    iget-object v11, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v12, 0x7f0f065a

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1627
    .local v10, "title":Ljava/lang/CharSequence;
    iget-object v11, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v12, 0x7f0f065d

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1629
    .local v8, "notiText":Ljava/lang/CharSequence;
    new-instance v11, Landroid/app/Notification$Builder;

    iget-object v12, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1630
    const v12, 0x7f020727

    .line 1629
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 1631
    const/4 v12, 0x0

    .line 1629
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 1634
    const/4 v12, 0x1

    .line 1629
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 1635
    const/4 v12, 0x1

    .line 1629
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 1636
    const/4 v12, -0x2

    .line 1629
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 1637
    const-string/jumbo v12, "sys"

    .line 1629
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 1638
    const/4 v12, 0x1

    .line 1629
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 1639
    iget-object v12, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 1640
    const v13, 0x7f0b00be

    const/4 v14, 0x0

    .line 1639
    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v12

    .line 1629
    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 1643
    .local v7, "nb":Landroid/app/Notification$Builder;
    iget-object v11, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v11, v7}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 1645
    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 1646
    .local v6, "n":Landroid/app/Notification;
    iget-object v11, v6, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v11, :cond_0

    .line 1647
    iget-object v11, v6, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const v12, 0x1020044

    const/16 v13, 0x8

    invoke-virtual {v11, v12, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1649
    :cond_0
    iget-object v11, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v12, "incompatible_charger_state"

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v14, 0x7f130039

    invoke-virtual {v11, v12, v14, v6, v13}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1651
    iget-object v11, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 1652
    const-string/jumbo v12, "com.android.systemui.incompatible_charging"

    const/4 v13, 0x0

    .line 1651
    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1653
    .local v5, "incompatibleChargingSharedPrefs":Landroid/content/SharedPreferences;
    if-eqz v5, :cond_1

    .line 1654
    const-string/jumbo v11, "DoNotShowIncompatibleChargerWarning"

    const/4 v12, 0x0

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1655
    const-string/jumbo v11, "PowerUI.Notification"

    const-string/jumbo v12, "Incompatible charging notice doesn\'t show again"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    return-void

    .line 1660
    :cond_1
    iget-object v11, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIncompatibleChargerDialog:Landroid/app/AlertDialog;

    if-nez v11, :cond_2

    .line 1661
    new-instance v11, Landroid/view/ContextThemeWrapper;

    iget-object v12, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v13, 0x1030132

    invoke-direct {v11, v12, v13}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 1662
    .local v9, "themeInflater":Landroid/view/LayoutInflater;
    const v11, 0x7f040020

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1663
    .local v4, "incompatibleChargerConnectView":Landroid/view/View;
    const v11, 0x7f1300ca

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 1666
    .local v2, "disableAlertCheckBox":Landroid/widget/CheckBox;
    sget-boolean v11, Lcom/android/systemui/SystemUIRune;->IS_TABLET:Z

    if-eqz v11, :cond_3

    .line 1667
    iget-object v11, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v12, 0x7f0f065c

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1671
    .local v1, "dialogText":Ljava/lang/CharSequence;
    :goto_0
    const v11, 0x7f1300c9

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1674
    new-instance v11, Lcom/android/systemui/power/PowerNotificationWarnings$17;

    invoke-direct {v11, p0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings$17;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/widget/CheckBox;)V

    .line 1673
    invoke-virtual {v2, v11}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1682
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1683
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1684
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1686
    new-instance v11, Lcom/android/systemui/power/PowerNotificationWarnings$18;

    invoke-direct {v11, p0, v2, v5}, Lcom/android/systemui/power/PowerNotificationWarnings$18;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/widget/CheckBox;Landroid/content/SharedPreferences;)V

    .line 1685
    const v12, 0x104000a

    invoke-virtual {v0, v12, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1695
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1697
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 1698
    .local v3, "incompatibleChargerConnectDialog":Landroid/app/AlertDialog;
    new-instance v11, Lcom/android/systemui/power/PowerNotificationWarnings$19;

    invoke-direct {v11, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$19;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v3, v11}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1704
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/16 v12, 0x7d9

    invoke-virtual {v11, v12}, Landroid/view/Window;->setType(I)V

    .line 1705
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1706
    iput-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIncompatibleChargerDialog:Landroid/app/AlertDialog;

    .line 1623
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialogText":Ljava/lang/CharSequence;
    .end local v2    # "disableAlertCheckBox":Landroid/widget/CheckBox;
    .end local v3    # "incompatibleChargerConnectDialog":Landroid/app/AlertDialog;
    .end local v4    # "incompatibleChargerConnectView":Landroid/view/View;
    .end local v9    # "themeInflater":Landroid/view/LayoutInflater;
    :cond_2
    return-void

    .line 1669
    .restart local v2    # "disableAlertCheckBox":Landroid/widget/CheckBox;
    .restart local v4    # "incompatibleChargerConnectView":Landroid/view/View;
    .restart local v9    # "themeInflater":Landroid/view/LayoutInflater;
    :cond_3
    iget-object v11, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v12, 0x7f0f065b

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "dialogText":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private showInvalidChargerNotification()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 351
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 352
    const v3, 0x7f0201b6

    .line 351
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 353
    const-wide/16 v4, 0x0

    .line 351
    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 354
    const/4 v3, 0x0

    .line 351
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 356
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v4, 0x7f0f024a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 351
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 357
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v4, 0x7f0f024b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 351
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 358
    const/4 v3, 0x2

    .line 351
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 360
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 361
    const v4, 0x106005a

    .line 360
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 351
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 362
    .local v1, "nb":Landroid/app/Notification$Builder;
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 363
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 364
    .local v0, "n":Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v3, "low_battery"

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v5, 0x7f130039

    invoke-virtual {v2, v3, v5, v0, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 350
    return-void
.end method

.method private showOverHeatPopUp()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 757
    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->SUPPORT_SPECIFIC_POWER_REQUEST_BY_VZW:Z

    if-eqz v4, :cond_2

    .line 758
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f061c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 759
    .local v3, "title":Ljava/lang/CharSequence;
    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->IS_TABLET:Z

    if-eqz v4, :cond_1

    .line 760
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f061f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 769
    .local v2, "text":Ljava/lang/CharSequence;
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatNoticeDialog:Landroid/app/AlertDialog;

    if-nez v4, :cond_0

    .line 771
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 772
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 773
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 774
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 775
    const v4, 0x104000a

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 777
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 778
    .local v1, "d":Landroid/app/AlertDialog;
    new-instance v4, Lcom/android/systemui/power/PowerNotificationWarnings$6;

    invoke-direct {v4, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$6;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 784
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 785
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 786
    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatNoticeDialog:Landroid/app/AlertDialog;

    .line 753
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v1    # "d":Landroid/app/AlertDialog;
    :cond_0
    return-void

    .line 762
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f061e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "text":Ljava/lang/CharSequence;
    goto :goto_0

    .line 765
    .end local v2    # "text":Ljava/lang/CharSequence;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0620

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 766
    .restart local v3    # "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f061a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "text":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private showOverheatNotification(I)V
    .locals 9
    .param p1, "overheatLevel"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 705
    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->SUPPORT_SPECIFIC_POWER_REQUEST_BY_VZW:Z

    if-eqz v4, :cond_1

    .line 706
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f061c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 707
    .local v3, "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f061d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 716
    .local v2, "notiText":Ljava/lang/CharSequence;
    :goto_0
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 717
    const v5, 0x7f020577

    .line 716
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 723
    const-string/jumbo v5, "sys"

    .line 716
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 725
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 726
    const v6, 0x7f0b00a2

    .line 725
    invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    .line 716
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 731
    .local v1, "nb":Landroid/app/Notification$Builder;
    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 735
    const-string/jumbo v4, "com.samsung.systemui.power.action.ACTION_BATTERY_OVER_HEAT"

    invoke-direct {p0, v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 736
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 744
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 746
    .local v0, "n":Landroid/app/Notification;
    iget-object v4, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_0

    .line 747
    iget-object v4, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const v5, 0x1020044

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 750
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v5, "over_heat"

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v7, 0x7f130039

    invoke-virtual {v4, v5, v7, v0, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 701
    return-void

    .line 709
    .end local v0    # "n":Landroid/app/Notification;
    .end local v1    # "nb":Landroid/app/Notification$Builder;
    .end local v2    # "notiText":Ljava/lang/CharSequence;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0618

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 713
    .restart local v3    # "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0619

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "notiText":Ljava/lang/CharSequence;
    goto/16 :goto_0
.end method

.method private showOverheatShutdownHappenedPopUp()V
    .locals 6

    .prologue
    .line 926
    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->SUPPORT_SPECIFIC_POWER_REQUEST_BY_VZW:Z

    if-eqz v4, :cond_2

    .line 927
    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->IS_TABLET:Z

    if-eqz v4, :cond_1

    .line 928
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0626

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 929
    .local v3, "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0628

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 939
    .local v2, "text":Ljava/lang/CharSequence;
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownHappenedDialog:Landroid/app/AlertDialog;

    if-nez v4, :cond_0

    .line 941
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 942
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 943
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 944
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 947
    new-instance v4, Lcom/android/systemui/power/PowerNotificationWarnings$9;

    invoke-direct {v4, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$9;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    .line 946
    const v5, 0x104000a

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 954
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 955
    .local v1, "d":Landroid/app/AlertDialog;
    new-instance v4, Lcom/android/systemui/power/PowerNotificationWarnings$10;

    invoke-direct {v4, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$10;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 961
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 962
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 963
    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownHappenedDialog:Landroid/app/AlertDialog;

    .line 965
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v1    # "d":Landroid/app/AlertDialog;
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->turnOnScreen()V

    .line 922
    return-void

    .line 931
    .end local v2    # "text":Ljava/lang/CharSequence;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0625

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 932
    .restart local v3    # "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0627

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "text":Ljava/lang/CharSequence;
    goto :goto_0

    .line 935
    .end local v2    # "text":Ljava/lang/CharSequence;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f062e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 936
    .restart local v3    # "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f062f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "text":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private showPowerSavingRecommendNotification(I)V
    .locals 9
    .param p1, "recommendTriggerLevel"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1562
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const v6, 0x7f0f0651

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1563
    .local v3, "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0652

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1565
    .local v2, "text":Ljava/lang/CharSequence;
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1566
    const v5, 0x7f020583

    .line 1565
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1571
    const-string/jumbo v5, "com.samsung.systemui.power.action.ACTION_BATTERY_CLOSE_SAVER_RECOMMEND"

    invoke-direct {p0, v5}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 1565
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1573
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 1574
    const v6, 0x7f0b00bc

    .line 1573
    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    .line 1565
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1576
    .local v1, "nb":Landroid/app/Notification$Builder;
    invoke-direct {p0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->addCloseSaverRecommendAction(Landroid/app/Notification$Builder;)V

    .line 1578
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenBatterySmartManagerSettings:Landroid/content/Intent;

    invoke-direct {p0, v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingActivity(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1579
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 1581
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4, v1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v4, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v0

    .line 1582
    .local v0, "n":Landroid/app/Notification;
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v5, "battery_saver_recommend"

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v7, 0x7f130039

    invoke-virtual {v4, v5, v7, v0, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1558
    return-void
.end method

.method private showPowerSupplyingInLowBatteryPopUp(I)V
    .locals 8
    .param p1, "online"    # I

    .prologue
    const/4 v7, 0x0

    .line 1733
    move v1, p1

    .line 1734
    .local v1, "currentOnline":I
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v6, 0x7f0f0660

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1735
    .local v4, "title":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v6, 0x7f0f0661

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1737
    .local v3, "text":Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerSupplyingInLowBatteryNoticeDialog:Landroid/app/AlertDialog;

    if-nez v5, :cond_0

    .line 1739
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1740
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1741
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1742
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1743
    const v5, 0x104000a

    invoke-virtual {v0, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1745
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1746
    .local v2, "d":Landroid/app/AlertDialog;
    new-instance v5, Lcom/android/systemui/power/PowerNotificationWarnings$20;

    invoke-direct {v5, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$20;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1752
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1753
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1754
    iput-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPowerSupplyingInLowBatteryNoticeDialog:Landroid/app/AlertDialog;

    .line 1756
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v2    # "d":Landroid/app/AlertDialog;
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->turnOnScreen()V

    .line 1732
    return-void
.end method

.method private showSafeModeNotification()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 984
    const-string/jumbo v4, "PowerUI.Notification"

    const-string/jumbo v5, "showSafeModeNotification()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->SUPPORT_SPECIFIC_POWER_REQUEST_BY_VZW:Z

    if-eqz v4, :cond_1

    .line 990
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0635

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 991
    .local v3, "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0636

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 997
    .local v2, "notiText":Ljava/lang/CharSequence;
    :goto_0
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 998
    const v5, 0x7f020584

    .line 997
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1005
    const-string/jumbo v5, "sys"

    .line 997
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1007
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1008
    const v6, 0x106005a

    .line 1007
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 997
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1010
    .local v1, "nb":Landroid/app/Notification$Builder;
    const-string/jumbo v4, "com.samsung.systemui.power.action.ACTION_BATTERY_SAFE_MODE"

    invoke-direct {p0, v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1011
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 1013
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 1015
    .local v0, "n":Landroid/app/Notification;
    iget-object v4, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_0

    .line 1016
    iget-object v4, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const v5, 0x1020044

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1019
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v5, "safe_mode"

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v7, 0x7f130039

    invoke-virtual {v4, v5, v7, v0, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 983
    return-void

    .line 993
    .end local v0    # "n":Landroid/app/Notification;
    .end local v1    # "nb":Landroid/app/Notification$Builder;
    .end local v2    # "notiText":Ljava/lang/CharSequence;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0630

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 994
    .restart local v3    # "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0631

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "notiText":Ljava/lang/CharSequence;
    goto/16 :goto_0
.end method

.method private showSafeModePopUp()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1023
    const-string/jumbo v5, "PowerUI.Notification"

    const-string/jumbo v6, "showSafeModePopUp()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    sget-boolean v5, Lcom/android/systemui/SystemUIRune;->SUPPORT_SPECIFIC_POWER_REQUEST_BY_VZW:Z

    if-eqz v5, :cond_1

    .line 1028
    const v4, 0x7f0f0637

    .line 1029
    .local v4, "titleId":I
    const v2, 0x7f0f0638

    .line 1030
    .local v2, "messageId":I
    const v3, 0x7f0f0639

    .line 1037
    .local v3, "positiveButtonId":I
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSafeModeDialog:Landroid/app/AlertDialog;

    if-nez v5, :cond_0

    .line 1039
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1040
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1041
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1042
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1043
    const/high16 v5, 0x1040000

    invoke-virtual {v0, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1045
    new-instance v5, Lcom/android/systemui/power/PowerNotificationWarnings$11;

    invoke-direct {v5, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$11;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    .line 1044
    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1061
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1062
    .local v1, "d":Landroid/app/AlertDialog;
    new-instance v5, Lcom/android/systemui/power/PowerNotificationWarnings$12;

    invoke-direct {v5, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$12;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1068
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1069
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1070
    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSafeModeDialog:Landroid/app/AlertDialog;

    .line 1022
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v1    # "d":Landroid/app/AlertDialog;
    :cond_0
    return-void

    .line 1032
    .end local v2    # "messageId":I
    .end local v3    # "positiveButtonId":I
    .end local v4    # "titleId":I
    :cond_1
    const v4, 0x7f0f0632

    .line 1033
    .restart local v4    # "titleId":I
    const v2, 0x7f0f0633

    .line 1034
    .restart local v2    # "messageId":I
    const v3, 0x7f0f0634

    .restart local v3    # "positiveButtonId":I
    goto :goto_0
.end method

.method private showSlowByChargerConnectionInfoPopUp()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1357
    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 1358
    const-string/jumbo v9, "com.android.systemui.power_slow_by_charger_connection_info"

    .line 1357
    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1360
    .local v5, "slowByChargerConnectionInfoSharedPrefs":Landroid/content/SharedPreferences;
    if-eqz v5, :cond_0

    .line 1361
    const-string/jumbo v8, "DoNotShowSlowByChargerConnectionInfo"

    invoke-interface {v5, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1362
    const-string/jumbo v8, "PowerUI.Notification"

    const-string/jumbo v9, "Slow by charger connection Info Pop up doesn\'t show again"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    return-void

    .line 1367
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowByChargerConnectionInfoDialog:Landroid/app/AlertDialog;

    if-nez v8, :cond_1

    .line 1368
    new-instance v8, Landroid/view/ContextThemeWrapper;

    iget-object v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v10, 0x1030132

    invoke-direct {v8, v9, v10}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 1369
    .local v7, "themeInflater":Landroid/view/LayoutInflater;
    const v8, 0x7f040022

    invoke-virtual {v7, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1370
    .local v6, "slowByChargerConnectionInfoView":Landroid/view/View;
    const v8, 0x7f1300ca

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 1373
    .local v3, "disableAlertCheckBox":Landroid/widget/CheckBox;
    sget-boolean v8, Lcom/android/systemui/SystemUIRune;->SUPPORT_SPECIFIC_POWER_REQUEST_BY_VZW:Z

    if-eqz v8, :cond_2

    .line 1374
    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v9, 0x7f0f0649

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1378
    .local v2, "dialogTitle":Ljava/lang/CharSequence;
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v9, 0x7f0f064b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1380
    .local v1, "dialogText":Ljava/lang/CharSequence;
    const v8, 0x7f1300c9

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1383
    new-instance v8, Lcom/android/systemui/power/PowerNotificationWarnings$14;

    invoke-direct {v8, p0, v3}, Lcom/android/systemui/power/PowerNotificationWarnings$14;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/widget/CheckBox;)V

    .line 1382
    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1391
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1392
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1395
    new-instance v8, Lcom/android/systemui/power/PowerNotificationWarnings$15;

    invoke-direct {v8, p0, v3, v5}, Lcom/android/systemui/power/PowerNotificationWarnings$15;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/widget/CheckBox;Landroid/content/SharedPreferences;)V

    .line 1394
    const v9, 0x104000a

    invoke-virtual {v0, v9, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1404
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1406
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 1407
    .local v4, "slowByChargerConnectionInfoDialog":Landroid/app/AlertDialog;
    new-instance v8, Lcom/android/systemui/power/PowerNotificationWarnings$16;

    invoke-direct {v8, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$16;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1413
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d9

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 1414
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 1415
    iput-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSlowByChargerConnectionInfoDialog:Landroid/app/AlertDialog;

    .line 1356
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialogText":Ljava/lang/CharSequence;
    .end local v2    # "dialogTitle":Ljava/lang/CharSequence;
    .end local v3    # "disableAlertCheckBox":Landroid/widget/CheckBox;
    .end local v4    # "slowByChargerConnectionInfoDialog":Landroid/app/AlertDialog;
    .end local v6    # "slowByChargerConnectionInfoView":Landroid/view/View;
    .end local v7    # "themeInflater":Landroid/view/LayoutInflater;
    :cond_1
    return-void

    .line 1376
    .restart local v3    # "disableAlertCheckBox":Landroid/widget/CheckBox;
    .restart local v6    # "slowByChargerConnectionInfoView":Landroid/view/View;
    .restart local v7    # "themeInflater":Landroid/view/LayoutInflater;
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v9, 0x7f0f0648

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "dialogTitle":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private showStartSaverConfirmation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 611
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v1, :cond_0

    return-void

    .line 612
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    .line 613
    .local v0, "d":Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    const v1, 0x7f0f024d

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setTitle(I)V

    .line 614
    const v1, 0x10405c6

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    .line 615
    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 616
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mStartSaverMode:Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x7f0f024e

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 617
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Z)V

    .line 618
    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$5;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 624
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->show()V

    .line 625
    iput-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 610
    return-void
.end method

.method private showUnintentionalLcdOnPopUp()V
    .locals 6

    .prologue
    .line 1780
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0662

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1781
    .local v3, "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0663

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1783
    .local v2, "text":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mUnintentionalLcdOnAlertDialog:Landroid/app/AlertDialog;

    if-nez v4, :cond_0

    .line 1785
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1786
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1787
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1788
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1790
    new-instance v4, Lcom/android/systemui/power/PowerNotificationWarnings$21;

    invoke-direct {v4, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$21;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    .line 1789
    const v5, 0x104000a

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1796
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1797
    .local v1, "d":Landroid/app/AlertDialog;
    new-instance v4, Lcom/android/systemui/power/PowerNotificationWarnings$22;

    invoke-direct {v4, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$22;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1803
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1804
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1805
    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mUnintentionalLcdOnAlertDialog:Landroid/app/AlertDialog;

    .line 1779
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    .end local v1    # "d":Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method

.method private showWarningNotification()V
    .locals 15

    .prologue
    const v14, 0x7f0f0653

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 371
    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    new-array v10, v8, [Ljava/lang/Object;

    iget v11, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v9

    const v11, 0x7f0f063a

    invoke-virtual {v7, v11, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 372
    .local v6, "title":Ljava/lang/CharSequence;
    iget v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I

    if-ne v13, v7, :cond_2

    .line 373
    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v10, 0x7f0f063c

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 383
    .local v5, "text":Ljava/lang/CharSequence;
    :goto_0
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v7, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 384
    const v10, 0x7f0201b6

    .line 383
    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 386
    iget-wide v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucketDroppedNegativeTimeMs:J

    .line 383
    invoke-virtual {v7, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 391
    const-string/jumbo v10, "PNW.dismissedWarning"

    invoke-direct {p0, v10}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v10

    .line 383
    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v13}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 394
    iget-object v10, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 395
    const v11, 0x106005b

    .line 394
    invoke-virtual {v10, v11}, Landroid/content/Context;->getColor(I)I

    move-result v10

    .line 383
    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 398
    .local v2, "nb":Landroid/app/Notification$Builder;
    const-string/jumbo v7, "PNW.batterySettings"

    invoke-direct {p0, v7}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 400
    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 401
    const-string/jumbo v10, "com.samsung.systemui.power.action.ACTION_BATTERY_LOW_CLOSE_BUTTON"

    invoke-direct {p0, v10}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v10

    .line 399
    invoke-virtual {v2, v9, v7, v10}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 411
    iget-boolean v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    if-eqz v7, :cond_1

    .line 413
    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/statusbar/DeviceState;->isTelephonyIdle(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 414
    invoke-virtual {p0, v13}, Lcom/android/systemui/power/PowerNotificationWarnings;->playPowerSound(I)V

    .line 437
    :cond_0
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->attachLowBatterySound(Landroid/app/Notification$Builder;)V

    .line 439
    iput-boolean v9, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    .line 441
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v7, v2}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 446
    new-instance v7, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v7, v2}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v7, v5}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v1

    .line 447
    .local v1, "n":Landroid/app/Notification;
    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f040021

    invoke-direct {v3, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 448
    .local v3, "remoteViews":Landroid/widget/RemoteViews;
    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v8, 0x1040150

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f1300cb

    invoke-virtual {v3, v8, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 449
    const v7, 0x7f130094

    invoke-virtual {v3, v7, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 450
    const v7, 0x7f1300cc

    invoke-virtual {v3, v7, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 451
    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f1300cd

    invoke-virtual {v3, v8, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 452
    const-string/jumbo v7, "com.samsung.systemui.power.action.ACTION_BATTERY_LOW_CLOSE_BUTTON"

    invoke-direct {p0, v7}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v7

    const v8, 0x7f1300cd

    invoke-virtual {v3, v8, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 454
    invoke-direct {p0, v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateShowButtonBackground(Landroid/widget/RemoteViews;)V

    .line 456
    iput-object v3, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 461
    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v8, "low_battery"

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v10, 0x7f130039

    invoke-virtual {v7, v8, v10, v1, v9}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 367
    return-void

    .line 375
    .end local v1    # "n":Landroid/app/Notification;
    .end local v2    # "nb":Landroid/app/Notification$Builder;
    .end local v3    # "remoteViews":Landroid/widget/RemoteViews;
    .end local v5    # "text":Ljava/lang/CharSequence;
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v10, 0x7f0f063b

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "text":Ljava/lang/CharSequence;
    goto/16 :goto_0

    .line 416
    .restart local v2    # "nb":Landroid/app/Notification$Builder;
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 417
    const-string/jumbo v10, "haptic_feedback_enabled"

    const/4 v11, -0x2

    .line 416
    invoke-static {v7, v10, v9, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v8, :cond_6

    move v0, v8

    .line 418
    .local v0, "hapticsFeedbackEnabled":Z
    :goto_2
    if-eqz v0, :cond_8

    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v7, :cond_8

    .line 419
    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    if-nez v7, :cond_4

    .line 420
    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "audio"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    iput-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    .line 423
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v7, :cond_7

    .line 424
    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    .line 428
    .local v4, "ringerMode":I
    :goto_3
    if-ne v8, v4, :cond_5

    .line 429
    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 430
    const-string/jumbo v8, "zen_mode"

    .line 429
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_0

    .line 431
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mVibrator:Landroid/os/Vibrator;

    .line 432
    sget-object v8, Landroid/os/Vibrator$SemMagnitudeTypes;->TYPE_TOUCH:Landroid/os/Vibrator$SemMagnitudeTypes;

    .line 431
    const v10, 0xc36f

    const/4 v11, -0x1

    invoke-virtual {v7, v10, v11, v12, v8}, Landroid/os/Vibrator;->semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V

    goto/16 :goto_1

    .end local v0    # "hapticsFeedbackEnabled":Z
    .end local v4    # "ringerMode":I
    :cond_6
    move v0, v9

    .line 416
    goto :goto_2

    .line 426
    .restart local v0    # "hapticsFeedbackEnabled":Z
    :cond_7
    const/4 v4, 0x2

    .restart local v4    # "ringerMode":I
    goto :goto_3

    .line 434
    .end local v4    # "ringerMode":I
    :cond_8
    const-string/jumbo v7, "PowerUI.Notification"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "hapticsFeedbackEnabled = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private showWillOverheatShutdownPopUp()V
    .locals 9

    .prologue
    const v8, 0x7f0f062c

    const v6, 0x104000a

    const/4 v7, 0x0

    .line 825
    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->SUPPORT_SPECIFIC_POWER_REQUEST_BY_VZW:Z

    if-eqz v4, :cond_2

    .line 826
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0621

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 827
    .local v3, "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 828
    .local v0, "button_text":Ljava/lang/CharSequence;
    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->IS_TABLET:Z

    if-eqz v4, :cond_1

    .line 829
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0623

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 833
    .local v2, "text":Ljava/lang/CharSequence;
    :goto_0
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 834
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 844
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWillOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    if-nez v4, :cond_0

    .line 845
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 846
    .local v1, "d":Landroid/app/ProgressDialog;
    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 847
    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 848
    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 850
    new-instance v4, Lcom/android/systemui/power/PowerNotificationWarnings$7;

    invoke-direct {v4, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$7;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    .line 849
    invoke-virtual {v1, v0, v4}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 856
    new-instance v4, Lcom/android/systemui/power/PowerNotificationWarnings$8;

    invoke-direct {v4, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$8;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 861
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d9

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 862
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 863
    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWillOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    .line 865
    .end local v1    # "d":Landroid/app/ProgressDialog;
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->turnOnScreen()V

    .line 820
    return-void

    .line 831
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0622

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "text":Ljava/lang/CharSequence;
    goto :goto_0

    .line 836
    .end local v0    # "button_text":Ljava/lang/CharSequence;
    .end local v2    # "text":Ljava/lang/CharSequence;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v5, 0x7f0f0629

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 837
    .restart local v3    # "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 838
    .restart local v0    # "button_text":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const v6, 0x7f0f062b

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 839
    .restart local v2    # "text":Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 840
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private showWirelessChargerDisconnectToast()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1499
    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "showWirelessChargerDisconnectToast()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0642

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1503
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargerDisconnectToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    .line 1504
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargerDisconnectToast:Landroid/widget/Toast;

    .line 1506
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargerDisconnectToast:Landroid/widget/Toast;

    if-eqz v1, :cond_1

    .line 1507
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargerDisconnectToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1508
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargerDisconnectToast:Landroid/widget/Toast;

    invoke-virtual {v1, v3}, Landroid/widget/Toast;->setDuration(I)V

    .line 1509
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWirelessChargerDisconnectToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1498
    :goto_0
    return-void

    .line 1511
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private turnOnScreen()V
    .locals 6

    .prologue
    .line 1075
    const-string/jumbo v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 1076
    .local v1, "powerManager":Landroid/os/IPowerManager;
    if-nez v1, :cond_0

    .line 1077
    const-string/jumbo v2, "PowerUI.Notification"

    const-string/jumbo v3, "turnOnScreen : fail to get PowerManager reference"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    return-void

    .line 1082
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "BatteryStateChanged"

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/os/IPowerManager;->wakeUp(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1074
    :goto_0
    return-void

    .line 1083
    :catch_0
    move-exception v0

    .line 1084
    .local v0, "exception":Landroid/os/RemoteException;
    const-string/jumbo v2, "PowerUI.Notification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "turnOnScreen : Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateNotification()V
    .locals 4

    .prologue
    .line 331
    sget-boolean v0, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PowerUI.Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNotification mWarning="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mPlaySound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 332
    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    .line 331
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 332
    const-string/jumbo v2, " mInvalidCharger="

    .line 331
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 332
    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    .line 331
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    if-eqz v0, :cond_1

    .line 334
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showInvalidChargerNotification()V

    .line 335
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    .line 330
    :goto_0
    return-void

    .line 336
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    if-eqz v0, :cond_3

    .line 338
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor;->isBatteryNotificationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 342
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showWarningNotification()V

    .line 343
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    goto :goto_0

    .line 339
    :cond_2
    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "We do not show warning notifications due to KNOX."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return-void

    .line 345
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    const-string/jumbo v1, "low_battery"

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const v3, 0x7f130039

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 346
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    goto :goto_0
.end method

.method private updateShowButtonBackground(Landroid/widget/RemoteViews;)V
    .locals 4
    .param p1, "v"    # Landroid/widget/RemoteViews;

    .prologue
    const v3, 0x7f1300cd

    .line 466
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/SettingsHelper;->isShowButtonBackground()Z

    move-result v0

    .line 467
    .local v0, "showButtonBg":Z
    if-eqz v0, :cond_0

    .line 468
    const-string/jumbo v1, "setBackgroundResource"

    const v2, 0x10805a6

    invoke-virtual {p1, v3, v1, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 465
    :goto_0
    return-void

    .line 470
    :cond_0
    const-string/jumbo v1, "setBackgroundResource"

    const v2, 0x10805a5

    invoke-virtual {p1, v3, v1, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public dismissBatteryHealthInterruptionPopUp()V
    .locals 2

    .prologue
    .line 1170
    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissChargingNotification()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealthInterruptionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1173
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealthInterruptionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1169
    :cond_0
    return-void
.end method

.method public dismissBatteryHealthInterruptionWarning()V
    .locals 2

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealthInterruptionTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1166
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissBatteryHealthInterruptionPopUp()V

    .line 1163
    return-void
.end method

.method public dismissChargingNotice()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1343
    iput v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    .line 1344
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    .line 1345
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowChargingNotice:Z

    .line 1347
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissChargingNotification()V

    .line 1342
    return-void
.end method

.method public dismissFullBatteryNotice()V
    .locals 3

    .prologue
    .line 683
    const-string/jumbo v0, "PowerUI.Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dismissing full battery notice: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissFullBatteryNotification()V

    .line 682
    return-void
.end method

.method public dismissIncompatibleChargerNotice()V
    .locals 1

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIncompatibleChargerDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1713
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mIncompatibleChargerDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1715
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissIncompatibleChargerNotification()V

    .line 1711
    return-void
.end method

.method public dismissInvalidChargerWarning()V
    .locals 0

    .prologue
    .line 590
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissInvalidChargerNotification()V

    .line 589
    return-void
.end method

.method public dismissLowBatteryWarning()V
    .locals 3

    .prologue
    .line 512
    sget-boolean v0, Lcom/android/systemui/power/PowerNotificationWarnings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PowerUI.Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dismissing low battery warning: level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryNotification()V

    .line 511
    return-void
.end method

.method public dismissOverheatWarning()V
    .locals 2

    .prologue
    .line 792
    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissOverheatWarning()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatNoticeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatNoticeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 798
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissOverheatNotification()V

    .line 791
    return-void
.end method

.method public dismissPowerSavingRecommendNotice()V
    .locals 2

    .prologue
    .line 1591
    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissPowerSavingRecommendNotice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissPowerSavingRecommendNotification()V

    .line 1590
    return-void
.end method

.method public dismissPowerSupplyingInLowBatteryNotice()V
    .locals 2

    .prologue
    .line 1761
    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissPowerSupplyingInLowBatteryNotice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissPowerSupplyingInLowBatteryPopUp()V

    .line 1760
    return-void
.end method

.method public dismissWaterProtectionAlertDialog()V
    .locals 1

    .prologue
    .line 2172
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2173
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2171
    :cond_0
    return-void
.end method

.method public dismissWillOverheatShutdownWarning()V
    .locals 2

    .prologue
    .line 870
    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "dismissWillOverheatShutdownWarning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 873
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissWillOverheatShutdownPopUp()V

    .line 869
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v0, 0x0

    .line 305
    const-string/jumbo v1, "mWarning="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 306
    const-string/jumbo v1, "mPlaySound="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 307
    const-string/jumbo v1, "mInvalidCharger="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 308
    const-string/jumbo v1, "mShowing="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/power/PowerNotificationWarnings;->SHOWING_STRINGS:[Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 309
    const-string/jumbo v1, "mSaverConfirmation="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz v1, :cond_0

    const-string/jumbo v0, "not null"

    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public isInvalidChargerWarningShowing()Z
    .locals 1

    .prologue
    .line 502
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    return v0
.end method

.method public isLowBatteryWarningShowing()Z
    .locals 1

    .prologue
    .line 525
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    return v0
.end method

.method public playPowerSound(I)V
    .locals 10
    .param p1, "soundType"    # I

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 1825
    const-string/jumbo v4, "PowerUI.Notification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "playPowerSound : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KnoxStateMonitor;->isChargerConnectionSoundEnabledState()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1835
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    if-nez v4, :cond_1

    .line 1836
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    .line 1838
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mVibrator:Landroid/os/Vibrator;

    if-nez v4, :cond_2

    .line 1839
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "vibrator"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mVibrator:Landroid/os/Vibrator;

    .line 1842
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v4, :cond_4

    .line 1843
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 1844
    .local v0, "audioMode":I
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->semIsRecordActive(I)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eq v9, v0, :cond_5

    .line 1845
    if-eq v8, v0, :cond_5

    .line 1846
    const-string/jumbo v4, "PowerUI.Notification"

    const-string/jumbo v5, "playPowerSound - recording so doesn\'t play sound"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    return-void

    .line 1829
    .end local v0    # "audioMode":I
    :cond_3
    if-ne p1, v7, :cond_0

    .line 1830
    const-string/jumbo v4, "PowerUI.Notification"

    const-string/jumbo v5, "playPowerSound : Knox Custom disabled SOUND_TYPE_CHARGER_CONNECTION"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    return-void

    .line 1850
    :cond_4
    const/4 v0, 0x0

    .line 1853
    .restart local v0    # "audioMode":I
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    if-nez v4, :cond_6

    .line 1854
    const-string/jumbo v4, "PowerUI.Notification"

    const-string/jumbo v5, "playPowerSound : NotificationPlayer is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    new-instance v4, Lcom/android/systemui/media/NotificationPlayer;

    const-string/jumbo v5, "PowerUI.Notification"

    invoke-direct {v4, v5}, Lcom/android/systemui/media/NotificationPlayer;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    .line 1857
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    if-nez v4, :cond_6

    .line 1858
    const-string/jumbo v4, "PowerUI.Notification"

    const-string/jumbo v5, "playPowerSound : fail to new NotificationPlayer"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    return-void

    .line 1864
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v4, :cond_9

    .line 1865
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    .line 1870
    .local v3, "targetRingerMode":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1871
    const-string/jumbo v5, "alertoncall_mode"

    const/4 v6, -0x2

    .line 1870
    invoke-static {v4, v5, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v7, :cond_a

    .line 1871
    const/4 v2, 0x1

    .line 1872
    .local v2, "notifyDuringCalls":Z
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/statusbar/DeviceState;->isTelephonyIdle(Landroid/content/Context;)Z

    move-result v1

    .line 1873
    .local v1, "isCallIdle":Z
    if-eqz v1, :cond_7

    if-ne v9, v0, :cond_b

    .line 1875
    :cond_7
    :goto_2
    if-eqz v2, :cond_c

    .line 1876
    const-string/jumbo v4, "PowerUI.Notification"

    const-string/jumbo v5, "calling so vibrate"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    const/4 v3, 0x1

    .line 1883
    :cond_8
    invoke-direct {p0, p1, v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->playPowerStateSound(II)V

    .line 1824
    return-void

    .line 1867
    .end local v1    # "isCallIdle":Z
    .end local v2    # "notifyDuringCalls":Z
    .end local v3    # "targetRingerMode":I
    :cond_9
    const/4 v3, 0x2

    .restart local v3    # "targetRingerMode":I
    goto :goto_0

    .line 1871
    :cond_a
    const/4 v2, 0x0

    .restart local v2    # "notifyDuringCalls":Z
    goto :goto_1

    .line 1874
    .restart local v1    # "isCallIdle":Z
    :cond_b
    if-ne v8, v0, :cond_8

    goto :goto_2

    .line 1879
    :cond_c
    const-string/jumbo v4, "PowerUI.Notification"

    const-string/jumbo v5, "calling and doesn\'t notify during calls"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    return-void
.end method

.method public runOverheatShutdownTask(I)V
    .locals 4
    .param p1, "delayTime"    # I

    .prologue
    .line 884
    const-string/jumbo v0, "PowerUI.Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "runOverheatShutdownTask - Delay time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOverheatShutdownTask:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 883
    return-void
.end method

.method public showBatteryHealthInterruptionWarning()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1092
    const-string/jumbo v2, "PowerUI.Notification"

    const-string/jumbo v3, "showBatteryHealthInterruptionWarning()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "SHOULD_SHUT_DOWN"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 1094
    .local v0, "isShutdownOn":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1095
    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "don\'t show Battery health interruption warning while Shutdown is ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    return-void

    .end local v0    # "isShutdownOn":Z
    :cond_0
    move v0, v1

    .line 1093
    goto :goto_0

    .line 1098
    .restart local v0    # "isShutdownOn":Z
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showBatteryHealthInterruptionPopUp()V

    .line 1091
    return-void
.end method

.method public showChargingNotice(I)V
    .locals 9
    .param p1, "chargingType"    # I

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v8, 0x6

    .line 1186
    iget v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    .line 1187
    .local v2, "oldChargingType":I
    iget-wide v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    .line 1189
    .local v0, "oldChargingTime":J
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_BATTERY_CHARGING_ESTIMATE_TIME:Z

    if-nez v3, :cond_2

    .line 1190
    if-eq p1, v4, :cond_2

    .line 1191
    if-eq p1, v5, :cond_2

    .line 1192
    if-eq v2, v4, :cond_0

    if-ne v2, v5, :cond_1

    .line 1193
    :cond_0
    if-eqz p1, :cond_1

    .line 1194
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissChargingNotification()V

    .line 1196
    :cond_1
    const-string/jumbo v3, "PowerUI.Notification"

    const-string/jumbo v4, "Charging estimate time is not supported and connected cable is not a fast/slow charger, so return!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    return-void

    .line 1200
    :cond_2
    iput p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    .line 1202
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_BATTERY_CHARGING_ESTIMATE_TIME:Z

    if-eqz v3, :cond_4

    .line 1203
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->getChargeEstimateTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    .line 1207
    :goto_0
    const-string/jumbo v3, "PowerUI.Notification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showChargingNotice oldChargingType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " currentChargingType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1208
    const-string/jumbo v5, " oldChargingTime : "

    .line 1207
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1208
    const-string/jumbo v5, " mChargingTime : "

    .line 1207
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1208
    iget-wide v6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    .line 1207
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_USB_TYPE_C:Z

    if-eqz v3, :cond_5

    .line 1211
    if-ne v2, v8, :cond_3

    .line 1212
    iget v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    if-eq v3, v8, :cond_3

    .line 1213
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissSlowByChargerConnectionInfoPopUp()V

    .line 1215
    :cond_3
    iget v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    if-ne v3, v8, :cond_5

    .line 1216
    iget-boolean v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowChargingNotice:Z

    .line 1215
    if-eqz v3, :cond_5

    .line 1216
    iget v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    if-ne v2, v3, :cond_5

    .line 1217
    const-string/jumbo v3, "PowerUI.Notification"

    const-string/jumbo v4, "Not fully connected charger noti is already shown, so return!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    return-void

    .line 1205
    :cond_4
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    goto :goto_0

    .line 1222
    :cond_5
    iget-boolean v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowChargingNotice:Z

    if-eqz v3, :cond_6

    iget-wide v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingTime:J

    cmp-long v3, v0, v4

    if-nez v3, :cond_6

    iget v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOldBatteryLevel:I

    iget v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    if-ne v3, v4, :cond_6

    .line 1223
    iget v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mChargingType:I

    if-ne v2, v3, :cond_6

    .line 1224
    const-string/jumbo v3, "PowerUI.Notification"

    const-string/jumbo v4, "There is no change about charging status, so return!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    return-void

    .line 1228
    :cond_6
    iget v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    iput v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mOldBatteryLevel:I

    .line 1229
    invoke-direct {p0, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->showChargingNotification(I)V

    .line 1185
    return-void
.end method

.method public showChargingTypeSwitchedNotice(Z)V
    .locals 3
    .param p1, "isFromWirelessToCable"    # Z

    .prologue
    .line 1517
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1518
    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "GATE tool is running so don\'t show Charging type switched notice"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    return-void

    .line 1523
    :cond_0
    if-eqz p1, :cond_1

    .line 1524
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0644

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1528
    .local v0, "text":Ljava/lang/CharSequence;
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showChargingTypeSwitchedToast(Ljava/lang/CharSequence;)V

    .line 1516
    return-void

    .line 1526
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0643

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public showFullBatteryNotice()V
    .locals 4

    .prologue
    .line 635
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 636
    const-string/jumbo v2, "PowerUI.Notification"

    const-string/jumbo v3, "GATE tool is running so don\'t show Full Charge notice"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    return-void

    .line 640
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showFullBatteryNotification()V

    .line 642
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 643
    .local v1, "powerManager":Landroid/os/PowerManager;
    if-nez v1, :cond_1

    .line 644
    const-string/jumbo v2, "PowerUI.Notification"

    const-string/jumbo v3, "notifyFullBatteryNotification : fail to get PowerManager reference"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    return-void

    .line 648
    :cond_1
    const-string/jumbo v2, "PowerUI.Notification"

    const v3, 0x10000006

    .line 647
    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 649
    .local v0, "fullBatteryScreenDimLock":Landroid/os/PowerManager$WakeLock;
    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 634
    return-void
.end method

.method public showIncompatibleChargerNotice()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1606
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "SHOULD_SHUT_DOWN"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 1607
    .local v0, "isShutdownOn":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1608
    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "don\'t show Incompatible charging warning while Shutdown is ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    return-void

    .end local v0    # "isShutdownOn":Z
    :cond_0
    move v0, v1

    .line 1606
    goto :goto_0

    .line 1612
    .restart local v0    # "isShutdownOn":Z
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFTAMode:Z

    if-eqz v1, :cond_2

    .line 1613
    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "FTA Mode is ON so don\'t show Incompatible charging warning"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    return-void

    .line 1617
    :cond_2
    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "showIncompatibleChargerWarning()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryWarning()V

    .line 1620
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showIncompatibleChargerPopUpAndNotification()V

    .line 1605
    return-void
.end method

.method public showInvalidChargerWarning()V
    .locals 1

    .prologue
    .line 601
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    .line 602
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 600
    return-void
.end method

.method public showLowBatteryWarning(Z)V
    .locals 5
    .param p1, "playSound"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 535
    const-string/jumbo v2, "PowerUI.Notification"

    .line 536
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "show low battery warning: level="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 537
    const-string/jumbo v4, " ["

    .line 536
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 537
    iget v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    .line 536
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 537
    const-string/jumbo v4, "] playSound="

    .line 536
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 535
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "SHOULD_SHUT_DOWN"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    move v0, v1

    .line 541
    .local v0, "isShutdownOn":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 542
    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "Shutdown is ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    return-void

    .line 546
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFTAMode:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    const/4 v3, -0x2

    if-eq v3, v2, :cond_2

    .line 547
    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "FTA Mode is ON and Not critical Low battery"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    return-void

    .line 552
    :cond_2
    iput-boolean p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    .line 553
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    .line 554
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 534
    return-void
.end method

.method public showOverheatShutdownHappenedNotice()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 906
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "SHOULD_SHUT_DOWN"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 908
    .local v0, "isShutdownOn":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 909
    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "don\'t show Overheat shutdown notice while Shutdown is ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    return-void

    .end local v0    # "isShutdownOn":Z
    :cond_0
    move v0, v1

    .line 906
    goto :goto_0

    .line 913
    .restart local v0    # "isShutdownOn":Z
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWillOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_2

    .line 914
    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "don\'t show Overheat shutdown notice while Over heat shutdown warning"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    return-void

    .line 918
    :cond_2
    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "showOverheatShutdownHappenedNotice()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showOverheatShutdownHappenedPopUp()V

    .line 905
    return-void
.end method

.method public showOverheatWarning(I)V
    .locals 2
    .param p1, "overheatLevel"    # I

    .prologue
    .line 696
    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "showOverheatWarning()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->showOverheatNotification(I)V

    .line 695
    return-void
.end method

.method public showPowerSavingRecommendNotice(I)V
    .locals 2
    .param p1, "recommendBatteryLevel"    # I

    .prologue
    .line 1550
    iget v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I

    if-nez v0, :cond_0

    .line 1551
    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "showPowerSavingRecommendNotice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->showPowerSavingRecommendNotification(I)V

    .line 1553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatterySaverRecommend:Z

    .line 1554
    iput p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentRecommendedBatteryLevel:I

    .line 1549
    :cond_0
    return-void
.end method

.method public showPowerSupplyingInLowBatteryNotice(I)V
    .locals 2
    .param p1, "batteryOnline"    # I

    .prologue
    .line 1728
    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "showPowerSupplyingInLowBatteryNotice()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerNotificationWarnings;->showPowerSupplyingInLowBatteryPopUp(I)V

    .line 1727
    return-void
.end method

.method public showSafeModeNotice()V
    .locals 2

    .prologue
    .line 978
    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "showSafeModeNotice()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showSafeModeNotification()V

    .line 977
    return-void
.end method

.method public showUnintentionalLcdOnNotice()V
    .locals 2

    .prologue
    .line 1775
    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "showUnintentionallyLcdOnNotice()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showUnintentionalLcdOnPopUp()V

    .line 1774
    return-void
.end method

.method public showWaterProtectionAlertDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2150
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 2151
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2152
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0613

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2153
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0614

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2154
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f04f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2155
    new-instance v1, Lcom/android/systemui/power/PowerNotificationWarnings$23;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/PowerNotificationWarnings$23;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 2162
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    .line 2163
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 2164
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 2166
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2149
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method

.method public showWillOverheatShutdownWarning()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 807
    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "SHOULD_SHUT_DOWN"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 809
    .local v0, "isShutdownOn":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 810
    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "don\'t show Overheat shutdown warning while Shutdown is ON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    return-void

    .end local v0    # "isShutdownOn":Z
    :cond_0
    move v0, v1

    .line 807
    goto :goto_0

    .line 814
    .restart local v0    # "isShutdownOn":Z
    :cond_1
    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "showWillOverheatShutdownWarning()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissOverheatShutdownHappenedPopUp()V

    .line 817
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showWillOverheatShutdownPopUp()V

    .line 806
    return-void
.end method

.method public showWirelessChargerDisconnectNotice()V
    .locals 2

    .prologue
    .line 1490
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mFTAMode:Z

    if-eqz v0, :cond_0

    .line 1491
    const-string/jumbo v0, "PowerUI.Notification"

    const-string/jumbo v1, "FTA Mode is ON so don\'t show Wireless charging disconnect warning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    return-void

    .line 1495
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->showWirelessChargerDisconnectToast()V

    .line 1489
    return-void
.end method

.method public update(IIJII)V
    .locals 3
    .param p1, "batteryLevel"    # I
    .param p2, "bucket"    # I
    .param p3, "screenOffTime"    # J
    .param p5, "batteryStatus"    # I
    .param p6, "batteryHealth"    # I

    .prologue
    .line 315
    iput p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    .line 316
    if-ltz p2, :cond_1

    .line 317
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucketDroppedNegativeTimeMs:J

    .line 321
    :cond_0
    :goto_0
    iput p2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    .line 322
    iput-wide p3, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mScreenOffTime:J

    .line 325
    iput p5, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryStatus:I

    .line 326
    iput p6, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryHealth:I

    .line 314
    return-void

    .line 318
    :cond_1
    iget v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    if-ge p2, v0, :cond_0

    .line 319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucketDroppedNegativeTimeMs:J

    goto :goto_0
.end method

.method public updateLowBatteryWarning()V
    .locals 0

    .prologue
    .line 507
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 506
    return-void
.end method

.method public userSwitched()V
    .locals 0

    .prologue
    .line 607
    invoke-direct {p0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 606
    return-void
.end method
