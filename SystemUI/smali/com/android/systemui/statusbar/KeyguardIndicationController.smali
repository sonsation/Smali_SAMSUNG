.class public Lcom/android/systemui/statusbar/KeyguardIndicationController;
.super Ljava/lang/Object;
.source "KeyguardIndicationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/KeyguardIndicationController$1;,
        Lcom/android/systemui/statusbar/KeyguardIndicationController$2;,
        Lcom/android/systemui/statusbar/KeyguardIndicationController$3;,
        Lcom/android/systemui/statusbar/KeyguardIndicationController$4;
    }
.end annotation


# instance fields
.field private final mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryIsLow:Z

.field private mBatteryLevel:I

.field private mBounceAnimList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mBounceInterpolator:Lcom/android/systemui/statusbar/phone/BounceInterpolator;

.field private mChargingSpeed:I

.field private mChargingType:I

.field private mChargingWattage:I

.field private final mContext:Landroid/content/Context;

.field private mCountdownIndication:Ljava/lang/String;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private final mFastThreshold:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsChargeabled:Z

.field private mIsEmergencyMode:Z

.field private mIsFaceRecognitionRunning:Z

.field private mIsMobileKeyboardCovered:I

.field private mIsPowerSavingMode:Z

.field private mIsSinglePageLockscreen:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMessageToShowOnScreenOn:Ljava/lang/String;

.field private mPowerCharged:Z

.field private mPowerPluggedIn:Z

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestingIndication:Ljava/lang/String;

.field private mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

.field private mSettingsValueList:[Landroid/net/Uri;

.field private mSineOut33:Landroid/view/animation/PathInterpolator;

.field private final mSlowThreshold:I

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private final mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field private mTransientIndication:Ljava/lang/String;

.field private mTransientTextColor:I

.field mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mVisible:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/BounceInterpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceInterpolator:Lcom/android/systemui/statusbar/phone/BounceInterpolator;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRestingIndication:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSlowThreshold:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCountdownIndication:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFastThreshold:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/KeyguardIndicationController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsMobileKeyboardCovered:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/LockIcon;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mMessageToShowOnScreenOn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryIsLow:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    return p1
.end method

.method static synthetic -set10(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsPowerSavingMode:Z

    return p1
.end method

.method static synthetic -set11(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsSinglePageLockscreen:Z

    return p1
.end method

.method static synthetic -set12(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mMessageToShowOnScreenOn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set13(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerCharged:Z

    return p1
.end method

.method static synthetic -set14(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    return p1
.end method

.method static synthetic -set15(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRestingIndication:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set16(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingSpeed:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingType:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingWattage:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCountdownIndication:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsChargeabled:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsEmergencyMode:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsFaceRecognitionRunning:Z

    return p1
.end method

.method static synthetic -set9(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsMobileKeyboardCovered:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isLockIconVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isRunningCountdownState()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isShowDelayedHelpText()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isShowEmptyMessage()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/CharSequence;Z)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "isShowAnimation"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->switchIndication(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)V
    .locals 0
    .param p1, "isShowAnimation"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateLockIconVisibility(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const v5, 0x3e2e147b    # 0.17f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    .line 122
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f2b851f    # 0.67f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v5, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSineOut33:Landroid/view/animation/PathInterpolator;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    .line 129
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/net/Uri;

    .line 130
    const-string/jumbo v1, "powersaving_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v3

    .line 131
    const-string/jumbo v1, "psm_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 132
    const-string/jumbo v1, "low_power"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 133
    const-string/jumbo v1, "emergency_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 129
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSettingsValueList:[Landroid/net/Uri;

    .line 135
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    .line 150
    iput v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsMobileKeyboardCovered:I

    .line 154
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsFaceRecognitionRunning:Z

    .line 391
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 532
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 551
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    .line 158
    iput-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 159
    iput-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 160
    iput-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    .line 161
    iput v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSlowThreshold:I

    .line 162
    iput v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFastThreshold:I

    .line 163
    iput-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 164
    iput-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;Lcom/android/systemui/statusbar/phone/LockIcon;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textView"    # Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;
    .param p3, "lockIcon"    # Lcom/android/systemui/statusbar/phone/LockIcon;

    .prologue
    const/4 v4, 0x0

    const v5, 0x3e2e147b    # 0.17f

    const/4 v3, 0x0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    .line 122
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f2b851f    # 0.67f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v5, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSineOut33:Landroid/view/animation/PathInterpolator;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    .line 129
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/net/Uri;

    .line 130
    const-string/jumbo v1, "powersaving_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v3

    .line 131
    const-string/jumbo v1, "psm_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 132
    const-string/jumbo v1, "low_power"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 133
    const-string/jumbo v1, "emergency_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 129
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSettingsValueList:[Landroid/net/Uri;

    .line 135
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    .line 150
    iput v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsMobileKeyboardCovered:I

    .line 154
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsFaceRecognitionRunning:Z

    .line 391
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 532
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 551
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    .line 169
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 170
    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 171
    iput-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 174
    .local v6, "res":Landroid/content/res/Resources;
    const v0, 0x7f0c008a

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSlowThreshold:I

    .line 175
    const v0, 0x7f0c008b

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFastThreshold:I

    .line 178
    const-string/jumbo v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 177
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 179
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 181
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 183
    new-instance v0, Lcom/android/systemui/statusbar/phone/BounceInterpolator;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/BounceInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceInterpolator:Lcom/android/systemui/statusbar/phone/BounceInterpolator;

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/SettingsHelper;->registerCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 192
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper;->isPowerSavingMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsPowerSavingMode:Z

    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsEmergencyMode:Z

    .line 201
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v0, :cond_0

    .line 202
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    .line 203
    const-string/jumbo v0, "android.intent.action.CONFIGURATION_CHANGED"

    .line 202
    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsMobileKeyboardCovered:I

    .line 168
    :cond_0
    return-void
.end method

.method private computeIndication()Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v4, 0x1388

    .line 309
    const/4 v1, 0x1

    .line 310
    .local v1, "helpTextVisible":Z
    const/4 v0, 0x1

    .line 312
    .local v0, "batteryTextVisible":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KnoxStateMonitor;->isLockscreenHelpTextEnabled()Z

    move-result v1

    .line 313
    .local v1, "helpTextVisible":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KnoxStateMonitor;->isLockscreenBatteryInfoEnabled()Z

    move-result v0

    .line 315
    .local v0, "batteryTextVisible":Z
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isShowEmptyMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    const-string/jumbo v2, " "

    return-object v2

    .line 317
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isRunningCountdownState()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 318
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCountdownIndication:Ljava/lang/String;

    :goto_0
    return-object v2

    :cond_1
    const-string/jumbo v2, " "

    goto :goto_0

    .line 319
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 320
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    :goto_1
    return-object v2

    :cond_3
    const-string/jumbo v2, " "

    goto :goto_1

    .line 321
    :cond_4
    if-eqz v0, :cond_5

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsChargeabled:Z

    if-eqz v2, :cond_5

    .line 322
    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showGuideTextDelayed(J)V

    .line 323
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getChargingText()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 324
    :cond_5
    if-eqz v0, :cond_6

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryIsLow:Z

    if-eqz v2, :cond_6

    .line 325
    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showGuideTextDelayed(J)V

    .line 326
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f066d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 328
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 329
    const-string/jumbo v2, " "

    return-object v2

    .line 331
    :cond_7
    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRestingIndication:Ljava/lang/String;

    :goto_2
    return-object v2

    :cond_8
    const-string/jumbo v2, " "

    goto :goto_2
.end method

.method private getChargingText()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 679
    const-string/jumbo v0, ""

    .line 680
    .local v0, "chargingText":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerCharged:Z

    if-eqz v5, :cond_0

    .line 681
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f066e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 684
    :cond_0
    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingType:I

    packed-switch v5, :pswitch_data_0

    .line 698
    :goto_0
    sget-boolean v5, Lcom/android/systemui/SystemUIRune;->SUPPORT_BATTERY_CHARGING_ESTIMATE_TIME:Z

    if-eqz v5, :cond_1

    .line 700
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v5}, Lcom/android/internal/app/IBatteryStats;->computeChargeTimeRemaining()J

    move-result-wide v2

    .line 701
    .local v2, "chargingTimeRemaining":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_1

    .line 702
    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getFormattedTime(J)Ljava/lang/String;

    move-result-object v1

    .line 703
    .local v1, "chargingTimeFormatted":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 704
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const v8, 0x7f0f0673

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 703
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 711
    .end local v1    # "chargingTimeFormatted":Ljava/lang/String;
    .end local v2    # "chargingTimeRemaining":J
    :cond_1
    :goto_1
    return-object v0

    .line 686
    :pswitch_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const v7, 0x7f0f066f

    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 689
    :pswitch_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const v7, 0x7f0f0670

    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 692
    :pswitch_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const v7, 0x7f0f0671

    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 695
    :pswitch_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const v7, 0x7f0f0672

    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 706
    :catch_0
    move-exception v4

    .line 707
    .local v4, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "KeyguardIndication"

    const-string/jumbo v6, "Error calling IBatteryStats: "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 684
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getFormattedTime(J)Ljava/lang/String;
    .locals 11
    .param p1, "millis"    # J

    .prologue
    .line 716
    const-wide/16 v6, 0x3e8

    div-long v4, p1, v6

    .line 717
    .local v4, "secondsLong":J
    const/4 v1, 0x0

    .local v1, "hours":I
    const/4 v2, 0x0

    .local v2, "minutes":I
    const/4 v3, 0x0

    .line 719
    .local v3, "seconds":I
    const-wide/16 v6, 0xe10

    cmp-long v6, v4, v6

    if-ltz v6, :cond_0

    .line 720
    const-wide/16 v6, 0xe10

    div-long v6, v4, v6

    long-to-int v1, v6

    .line 721
    mul-int/lit16 v6, v1, 0xe10

    int-to-long v6, v6

    sub-long/2addr v4, v6

    .line 723
    :cond_0
    const-wide/16 v6, 0x3c

    cmp-long v6, v4, v6

    if-ltz v6, :cond_1

    .line 724
    const-wide/16 v6, 0x3c

    div-long v6, v4, v6

    long-to-int v2, v6

    .line 725
    mul-int/lit8 v6, v2, 0x3c

    int-to-long v6, v6

    sub-long/2addr v4, v6

    .line 728
    :cond_1
    long-to-int v3, v4

    .line 730
    if-nez v1, :cond_2

    const/4 v6, 0x2

    if-lt v2, v6, :cond_2

    const/16 v6, 0x1e

    if-lt v3, v6, :cond_2

    .line 731
    add-int/lit8 v2, v2, 0x1

    .line 733
    :cond_2
    if-lez v1, :cond_3

    if-lez v2, :cond_3

    .line 734
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const v8, 0x7f0f0674

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 754
    .local v0, "formattedTime":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 736
    .end local v0    # "formattedTime":Ljava/lang/String;
    :cond_3
    if-lez v1, :cond_4

    .line 737
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const v8, 0x7f0f0675

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "formattedTime":Ljava/lang/String;
    goto :goto_0

    .line 738
    .end local v0    # "formattedTime":Ljava/lang/String;
    :cond_4
    if-lez v2, :cond_7

    .line 739
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "el"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 740
    const/4 v6, 0x1

    if-ne v2, v6, :cond_5

    .line 741
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const v8, 0x7f0f0676

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "formattedTime":Ljava/lang/String;
    goto :goto_0

    .line 743
    .end local v0    # "formattedTime":Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const v8, 0x10400a3

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "formattedTime":Ljava/lang/String;
    goto :goto_0

    .line 745
    .end local v0    # "formattedTime":Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const v8, 0x7f0f0676

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "formattedTime":Ljava/lang/String;
    goto :goto_0

    .line 748
    .end local v0    # "formattedTime":Ljava/lang/String;
    :cond_7
    const/4 v6, 0x1

    if-le v3, v6, :cond_8

    .line 749
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const v8, 0x10400a7

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "formattedTime":Ljava/lang/String;
    goto/16 :goto_0

    .line 751
    .end local v0    # "formattedTime":Ljava/lang/String;
    :cond_8
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const v8, 0x10400a8

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "formattedTime":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private getLockIconImage()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 899
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    const v1, 0x7f0202e7

    .line 900
    const v2, 0x7f0202e8

    const/4 v3, 0x2

    .line 899
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/util/ViewStyleUtils;->updateImageStyle(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    const/4 v1, 0x0

    .line 781
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 784
    .local v6, "elapsedRealtime":J
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 786
    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 789
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;JJ)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 779
    return-void
.end method

.method private isLockIconVisible()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 881
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    .line 882
    .local v0, "canSkipBouncer":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result v1

    .line 883
    .local v1, "isSecure":Z
    sget-boolean v2, Lcom/android/keyguard/KeyguardRune;->SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 884
    return v4

    .line 889
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardRune;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 890
    return v4

    .line 891
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_3

    .line 894
    :cond_2
    return v4

    .line 892
    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method private isRunningCountdownState()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 765
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 766
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 767
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    .line 768
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->handleAttemptLockout(J)V

    .line 769
    const/4 v2, 0x1

    return v2

    .line 771
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v2, :cond_1

    .line 772
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    .line 773
    iput-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 775
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private isShowDelayedHelpText()Z
    .locals 2

    .prologue
    .line 920
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsPowerSavingMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsEmergencyMode:Z

    if-nez v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    .line 920
    if-eqz v0, :cond_1

    .line 922
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 924
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private isShowEmptyMessage()Z
    .locals 1

    .prologue
    .line 829
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SIM_PERM_DISABLED:Z

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v0

    .line 829
    if-eqz v0, :cond_0

    .line 831
    const/4 v0, 0x1

    return v0

    .line 837
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private showGuideTextDelayed(J)V
    .locals 3
    .param p1, "delayMs"    # J

    .prologue
    const/4 v2, 0x3

    .line 759
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 760
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 757
    return-void
.end method

.method private switchIndication(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "isShowAnimation"    # Z

    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 905
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, " "

    if-ne p1, v0, :cond_1

    .line 906
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateLockIconVisibility(Z)V

    .line 910
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;Z)V

    .line 903
    return-void

    .line 908
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isLockIconVisible()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateLockIconVisibility(Z)V

    goto :goto_0
.end method

.method private updateIndication()V
    .locals 3

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    .line 272
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->computeIndication()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->switchIndication(Ljava/lang/CharSequence;Z)V

    .line 268
    :cond_0
    return-void
.end method

.method private updateIndication(Z)V
    .locals 3
    .param p1, "isShowAnimation"    # Z

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    .line 283
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->computeIndication()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->switchIndication(Ljava/lang/CharSequence;Z)V

    .line 280
    :cond_0
    return-void
.end method

.method private updateLockIconVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    const/4 v2, 0x0

    .line 914
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getLockIconImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 915
    .local v0, "lockIcon":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    const/16 v1, 0xfe

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 916
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v1, v2, v0, v2, v2}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 913
    return-void

    .line 915
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getHelpText(I)Ljava/lang/String;
    .locals 16
    .param p1, "state"    # I

    .prologue
    .line 604
    const/4 v10, 0x0

    .line 605
    .local v10, "resId":I
    const-string/jumbo v5, ""

    .line 606
    .local v5, "guideText":Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    .line 607
    .local v4, "currentUser":I
    const/4 v7, 0x0

    .line 608
    .local v7, "isMobileKeyboardCovered":Z
    sget-boolean v11, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v11, :cond_0

    sget-boolean v11, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SEC_FINGERPRINT_SENSOR_POSITION_REAR:Z

    if-eqz v11, :cond_3

    .line 612
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 613
    const/4 v12, 0x1

    .line 612
    invoke-virtual {v11, v12, v4}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v12, v11, :cond_5

    .line 615
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v11}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v11

    .line 612
    if-eqz v11, :cond_5

    .line 615
    if-eqz v7, :cond_4

    const/4 v8, 0x0

    .line 616
    .local v8, "isfingerprint":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 617
    const/16 v12, 0x10

    .line 616
    invoke-virtual {v11, v12, v4}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v12, v11, :cond_6

    .line 618
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v11}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed()Z

    move-result v9

    .line 619
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v11, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v3

    .line 621
    .local v3, "canSkipBouncer":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 622
    const-string/jumbo v12, "accessibility"

    .line 621
    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 623
    .local v1, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/keyguard/KeyguardRune;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v6

    .line 625
    .local v6, "isDcmLiveUX":Z
    if-nez v8, :cond_1

    if-eqz v9, :cond_2

    :cond_1
    if-eqz v3, :cond_7

    .line 660
    :cond_2
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v11

    if-eqz v11, :cond_13

    .line 661
    const/4 v11, 0x2

    move/from16 v0, p1

    if-ne v0, v11, :cond_12

    .line 662
    const v10, 0x7f0f0669

    .line 673
    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 675
    :goto_4
    return-object v5

    .line 609
    .end local v1    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v3    # "canSkipBouncer":Z
    .end local v6    # "isDcmLiveUX":Z
    .end local v8    # "isfingerprint":Z
    :cond_3
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsMobileKeyboardCovered:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 610
    const/4 v7, 0x1

    goto :goto_0

    .line 615
    :cond_4
    const/4 v8, 0x1

    .restart local v8    # "isfingerprint":Z
    goto :goto_1

    .line 612
    .end local v8    # "isfingerprint":Z
    :cond_5
    const/4 v8, 0x0

    .restart local v8    # "isfingerprint":Z
    goto :goto_1

    .line 616
    :cond_6
    const/4 v9, 0x0

    .local v9, "isiris":Z
    goto :goto_2

    .line 626
    .end local v9    # "isiris":Z
    .restart local v1    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .restart local v3    # "canSkipBouncer":Z
    .restart local v6    # "isDcmLiveUX":Z
    :cond_7
    if-eqz v8, :cond_b

    if-eqz v9, :cond_b

    .line 628
    const/4 v11, 0x2

    move/from16 v0, p1

    if-ne v0, v11, :cond_9

    .line 629
    const v10, 0x7f0f0664

    .line 651
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 652
    const/4 v12, 0x0

    .line 651
    invoke-virtual {v11, v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getAddRemainingAttempt(I)I

    move-result v2

    .line 653
    .local v2, "attemptRemainingBeforeWipe":I
    if-lez v2, :cond_11

    .line 654
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    .line 655
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    const v14, 0x7f140009

    .line 654
    invoke-virtual {v12, v14, v2, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    .line 631
    .end local v2    # "attemptRemainingBeforeWipe":I
    :cond_9
    if-eqz v6, :cond_a

    const v10, 0x7f0f06b8

    goto :goto_5

    .line 632
    :cond_a
    const v10, 0x7f0f0665

    goto :goto_5

    .line 634
    :cond_b
    if-eqz v8, :cond_e

    .line 636
    const/4 v11, 0x2

    move/from16 v0, p1

    if-ne v0, v11, :cond_c

    .line 637
    const v10, 0x7f0f0666

    goto :goto_5

    .line 639
    :cond_c
    if-eqz v6, :cond_d

    const v10, 0x7f0f06b6

    goto :goto_5

    .line 640
    :cond_d
    const v10, 0x7f0f0667

    goto :goto_5

    .line 642
    :cond_e
    if-eqz v9, :cond_8

    .line 644
    const/4 v11, 0x2

    move/from16 v0, p1

    if-ne v0, v11, :cond_f

    .line 645
    const v10, 0x7f0f066b

    goto :goto_5

    .line 647
    :cond_f
    if-eqz v6, :cond_10

    const v10, 0x7f0f06b7

    goto :goto_5

    .line 648
    :cond_10
    const v10, 0x7f0f0668

    goto :goto_5

    .line 657
    .restart local v2    # "attemptRemainingBeforeWipe":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4

    .line 664
    .end local v2    # "attemptRemainingBeforeWipe":I
    :cond_12
    const v10, 0x7f0f066a

    goto/16 :goto_3

    .line 667
    :cond_13
    const/4 v11, 0x2

    move/from16 v0, p1

    if-ne v0, v11, :cond_15

    .line 668
    if-eqz v6, :cond_14

    const v10, 0x7f0f06b9

    goto/16 :goto_3

    :cond_14
    const v10, 0x7f0f066b

    goto/16 :goto_3

    .line 670
    :cond_15
    if-eqz v6, :cond_16

    const v10, 0x7f0f06b5

    goto/16 :goto_3

    :cond_16
    const v10, 0x7f0f066c

    goto/16 :goto_3
.end method

.method public hideTransientIndication()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 261
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 262
    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 264
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    .line 260
    :cond_0
    return-void
.end method

.method public hideTransientIndicationDelayed(J)V
    .locals 3
    .param p1, "delayMs"    # J

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    .line 230
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 229
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 228
    return-void
.end method

.method public setHelpText(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 594
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getHelpText(I)Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, "guideText":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 596
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 597
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/String;)V

    .line 593
    :goto_0
    return-void

    .line 599
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setRestingIndication(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRestingIndication(Ljava/lang/String;)V
    .locals 0
    .param p1, "restingIndication"    # Ljava/lang/String;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRestingIndication:Ljava/lang/String;

    .line 222
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    .line 220
    return-void
.end method

.method public setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0
    .param p1, "statusBarKeyguardViewManager"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .prologue
    .line 585
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 584
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    .line 210
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setVisibility(I)V

    .line 211
    if-eqz p1, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    .line 213
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    .line 208
    :cond_0
    return-void

    .line 210
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showBounceAnimation()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const v9, 0x3f733333    # 0.95f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 841
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "v$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 842
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 843
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotX(F)V

    goto :goto_0

    .line 846
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 847
    .local v0, "bounceAnimPhase1":Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSineOut33:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 848
    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 849
    new-instance v3, Lcom/android/systemui/statusbar/KeyguardIndicationController$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$6;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 866
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBounceAnimList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 867
    .restart local v1    # "v":Landroid/view/View;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 868
    new-array v3, v8, [Landroid/animation/Animator;

    .line 869
    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v10, [F

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v6

    aput v6, v5, v7

    aput v9, v5, v8

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v7

    .line 868
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 870
    new-array v3, v8, [Landroid/animation/Animator;

    .line 871
    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v10, [F

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v6

    aput v6, v5, v7

    aput v9, v5, v8

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v7

    .line 870
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    .line 874
    .end local v1    # "v":Landroid/view/View;
    :cond_3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 840
    return-void
.end method

.method public showTransientIndication(I)V
    .locals 1
    .param p1, "transientIndication"    # I

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public showTransientIndication(Ljava/lang/String;)V
    .locals 1
    .param p1, "transientIndication"    # Ljava/lang/String;

    .prologue
    .line 244
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/String;I)V

    .line 243
    return-void
.end method

.method public showTransientIndication(Ljava/lang/String;I)V
    .locals 2
    .param p1, "transientIndication"    # Ljava/lang/String;
    .param p2, "textColor"    # I

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    .line 252
    iput p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientTextColor:I

    .line 253
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 254
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication()V

    .line 250
    return-void
.end method
