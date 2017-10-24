.class public Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitorCallback.java"


# instance fields
.field private mShowing:Z

.field private mVisibilityChangedCalled:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricLockoutChanged(Z)V
    .locals 0
    .param p1, "lockout"    # Z

    .prologue
    .line 369
    return-void
.end method

.method public onBootCompleted()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 374
    return-void
.end method

.method public onDesktopModeChanged(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    .line 348
    return-void
.end method

.method public onDevicePolicyManagerStateChanged()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public onEmergencyCallAction()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public onFaceRecognitionStateChanged(Z)V
    .locals 0
    .param p1, "faceRecognitionRunning"    # Z

    .prologue
    .line 333
    return-void
.end method

.method public onFaceUnlockStateChanged(ZI)V
    .locals 0
    .param p1, "running"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 234
    return-void
.end method

.method public onFailedUnlockAttemptChanged()V
    .locals 0

    .prologue
    .line 319
    return-void
.end method

.method public onFingerprintAcquired(I)V
    .locals 0
    .param p1, "acquireInfo"    # I

    .prologue
    .line 203
    return-void
.end method

.method public onFingerprintAuthFailed()V
    .locals 0

    .prologue
    .line 208
    return-void
.end method

.method public onFingerprintAuthenticated(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 214
    return-void
.end method

.method public onFingerprintError(ILjava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # I
    .param p2, "errString"    # Ljava/lang/String;

    .prologue
    .line 229
    return-void
.end method

.method public onFingerprintHelp(ILjava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # I
    .param p2, "helpString"    # Ljava/lang/String;

    .prologue
    .line 221
    return-void
.end method

.method public onFingerprintRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .prologue
    .line 239
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 0
    .param p1, "why"    # I

    .prologue
    .line 169
    return-void
.end method

.method public onFotaPreinstallerFinish()V
    .locals 0

    .prologue
    .line 340
    return-void
.end method

.method public onIrisAuthFailed()V
    .locals 0

    .prologue
    .line 287
    return-void
.end method

.method public onIrisAuthenticated(IJ)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "start"    # J

    .prologue
    .line 275
    return-void
.end method

.method public onIrisError(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 295
    return-void
.end method

.method public onIrisHelp(ILjava/lang/String;)V
    .locals 0
    .param p1, "helpCode"    # I
    .param p2, "errorText"    # Ljava/lang/String;

    .prologue
    .line 282
    return-void
.end method

.method public onIrisRunningStateChanged(Z)V
    .locals 0
    .param p1, "irisRunning"    # Z

    .prologue
    .line 308
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 0
    .param p1, "bouncer"    # Z

    .prologue
    .line 91
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 76
    return-void
.end method

.method public onKeyguardVisibilityChangedRaw(Z)V
    .locals 6
    .param p1, "showing"    # Z

    .prologue
    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 80
    .local v0, "now":J
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mShowing:Z

    if-ne p1, v2, :cond_0

    .line 81
    iget-wide v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mVisibilityChangedCalled:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    .line 83
    iput-wide v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mVisibilityChangedCalled:J

    .line 84
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mShowing:Z

    .line 78
    return-void
.end method

.method public onOpenThemeChanged()V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .param p1, "phoneState"    # I

    .prologue
    .line 70
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 45
    return-void
.end method

.method public onRefreshCarrierInfo()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 62
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public onSecurityModeChanged(Z)V
    .locals 0
    .param p1, "isSecure"    # Z

    .prologue
    .line 353
    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "slotId"    # I
    .param p3, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 125
    return-void
.end method

.method public onStartedGoingToSleep(I)V
    .locals 0
    .param p1, "why"    # I

    .prologue
    .line 161
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public onStartedWakingUp(I)V
    .locals 0
    .param p1, "why"    # I

    .prologue
    .line 326
    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 245
    return-void
.end method

.method public onSystemDialogsShowing()V
    .locals 0

    .prologue
    .line 313
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public onTrustChanged(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 184
    return-void
.end method

.method public onTrustGrantedWithFlags(II)V
    .locals 0
    .param p1, "flags"    # I
    .param p2, "userId"    # I

    .prologue
    .line 194
    return-void
.end method

.method public onTrustManagedChanged(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 189
    return-void
.end method

.method public onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 0
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 259
    return-void
.end method

.method public onUpdateServiceBoxRemoteViews(Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V
    .locals 0
    .param p1, "item"    # Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    .prologue
    .line 361
    return-void
.end method

.method public onUserInfoChanged(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 130
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 118
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 113
    return-void
.end method
