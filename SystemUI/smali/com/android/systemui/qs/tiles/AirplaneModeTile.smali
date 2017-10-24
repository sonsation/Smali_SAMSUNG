.class public Lcom/android/systemui/qs/tiles/AirplaneModeTile;
.super Lcom/android/systemui/qs/QSTile;
.source "AirplaneModeTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;,
        Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

.field private final mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/QSTile",
            "<",
            "Lcom/android/systemui/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private mIsWaitingForEcmExit:Z

.field private mListening:Z

.field private mNumSlot:I

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceState:[I

.field private final mSetting:Lcom/android/systemui/qs/GlobalSetting;

.field private final mShopDemoSetting:Lcom/android/systemui/qs/SecureSetting;

.field private mSimCount:I

.field private mSupportCellularVoice:Z

.field private mTM:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mTM:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/QSTile$Host;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mServiceState:[I

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/GlobalSetting;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/SecureSetting;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mShopDemoSetting:Lcom/android/systemui/qs/SecureSetting;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSimCount:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSupportCellularVoice:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/qs/tiles/AirplaneModeTile;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSimCount:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSupportCellularVoice:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isNecessaryToRegister()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isTSafeLockWithSecureKeyguard()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/tiles/AirplaneModeTile;I)I
    .locals 1
    .param p1, "subId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->registerPhoneStateListener(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->setEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->unregisterPhoneStateListener()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 9
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    const v6, 0x7f0c0083

    const v3, 0x7f020378

    const/4 v0, 0x1

    const v4, 0x7f0b00ff

    .line 110
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 86
    iput v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mNumSlot:I

    .line 88
    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSupportCellularVoice:Z

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mIsWaitingForEcmExit:Z

    .line 94
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v2, 0x7f020368

    .line 96
    const v7, 0x7f0c0084

    move-object v1, p0

    move v5, v4

    .line 94
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;IIIIII)V

    .line 93
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 98
    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;

    const v2, 0x7f020367

    .line 99
    const v5, 0x7f0b0100

    .line 100
    const v7, 0x7f0c0085

    move-object v1, p0

    .line 98
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;IIIIII)V

    .line 97
    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    .line 382
    new-instance v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 112
    new-instance v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string/jumbo v3, "airplane_mode_on"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$2;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    .line 125
    new-instance v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string/jumbo v3, "shopdemo"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$3;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mShopDemoSetting:Lcom/android/systemui/qs/SecureSetting;

    .line 133
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->registerPhoneStateListener(Landroid/content/Context;)V

    .line 135
    new-instance v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Lcom/android/systemui/qs/tiles/AirplaneModeTile$AirplaneModeDetailAdapter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .line 141
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 145
    .local v8, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string/jumbo v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string/jumbo v0, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string/jumbo v0, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    return-void
.end method

.method private getPhoneId(I)I
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 490
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 491
    .local v0, "phoneId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 492
    const/4 v1, 0x0

    return v1

    .line 494
    :cond_0
    return v0
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "slotId"    # I

    .prologue
    .line 468
    new-instance v0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$4;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;I)V

    .line 485
    .local v0, "mListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private isNecessaryToRegister()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 411
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isMultisim()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 412
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/DeviceState;->getSimSettingState(Landroid/content/Context;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Multisim isNecessaryToRegister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return v2

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/DeviceState;->getSimSettingState(Landroid/content/Context;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 424
    :cond_2
    return v1

    .line 418
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/DeviceState;->getSimSettingState(Landroid/content/Context;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v0, v0, v1

    if-nez v0, :cond_2

    .line 419
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isNecessaryToRegister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return v2
.end method

.method private isTSafeLockWithSecureKeyguard()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 574
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "keyguard"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 575
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isTSafeLockWithSecureKeyguard : secure show "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 576
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    .line 575
    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 578
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->supportTLockPackage()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 579
    const-string/jumbo v4, "off_menu_setting"

    .line 578
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    move v2, v3

    .line 577
    :cond_0
    return v2

    :cond_1
    move v1, v2

    .line 576
    goto :goto_0
.end method

.method private registerPhoneStateListener(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 429
    const-string/jumbo v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mTM:Landroid/telephony/TelephonyManager;

    .line 430
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isMultisim()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    iput v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mNumSlot:I

    .line 431
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/statusbar/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSimCount:I

    .line 433
    iget v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSimCount:I

    if-nez v4, :cond_1

    .line 434
    iput-object v10, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mServiceState:[I

    .line 435
    return-void

    :cond_0
    move v4, v6

    .line 430
    goto :goto_0

    .line 437
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mNumSlot:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " registerPhoneStateListener: ActiveSimCnt "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSimCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    new-array v4, v5, [Landroid/telephony/PhoneStateListener;

    iput-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 439
    iget v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mNumSlot:I

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mServiceState:[I

    .line 440
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mNumSlot:I

    if-ge v0, v4, :cond_4

    .line 441
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    .line 442
    .local v3, "subIdtemp":[I
    if-eqz v3, :cond_2

    .line 443
    aget v2, v3, v9

    .line 444
    .local v2, "subId":I
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getPhoneId(I)I

    move-result v1

    .line 445
    .local v1, "phoneId":I
    if-ltz v2, :cond_3

    if-ne v0, v1, :cond_3

    .line 446
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "registerPhoneStateListener subId:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " phoneId "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v5

    aput-object v5, v4, v1

    .line 448
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mTM:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 452
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mServiceState:[I

    aput v9, v4, v1

    .line 440
    .end local v1    # "phoneId":I
    .end local v2    # "subId":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 450
    .restart local v1    # "phoneId":I
    .restart local v2    # "subId":I
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aput-object v10, v4, v1

    goto :goto_2

    .line 428
    .end local v1    # "phoneId":I
    .end local v2    # "subId":I
    .end local v3    # "subIdtemp":[I
    :cond_4
    return-void
.end method

.method private setEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 217
    const-string/jumbo v2, "ril.cdma.inecmmode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mIsWaitingForEcmExit:Z

    .line 219
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 220
    .local v0, "ecmDialogIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 221
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v2, v0}, Lcom/android/systemui/qs/QSTile$Host;->startActivityDismissingKeyguard(Landroid/content/Intent;)V

    .line 216
    .end local v0    # "ecmDialogIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 225
    .local v1, "mgr":Landroid/net/ConnectivityManager;
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setEnabled :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    goto :goto_0
.end method

.method private showConfirmCheckboxPopup()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 500
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    return-void

    .line 502
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v7, 0x7f040184

    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 504
    .local v0, "airplaneAlertView":Landroid/view/View;
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mTM:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    .line 505
    .local v4, "isVoiceCapable":Z
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "showConfirmCheckboxPopup : isVoiceCapable ? "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v4, :cond_4

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    if-nez v4, :cond_5

    .line 508
    const v5, 0x7f0f042e

    .line 516
    .local v5, "message":I
    :goto_1
    sget-boolean v6, Lcom/android/systemui/SystemUIRune;->IS_VZW_POPUP:Z

    if-eqz v6, :cond_1

    .line 517
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/statusbar/DeviceState;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 518
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/statusbar/DeviceState;->isVoWifiProvisioned(Landroid/content/Context;)Z

    move-result v6

    .line 517
    if-eqz v6, :cond_7

    .line 520
    const v5, 0x7f0f0431

    .line 525
    :cond_1
    :goto_2
    const v6, 0x7f13043e

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 526
    .local v3, "contentText":Landroid/widget/TextView;
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 527
    const v6, 0x7f13043f

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 528
    .local v2, "checkbox":Landroid/widget/CheckBox;
    sget-boolean v6, Lcom/android/systemui/SystemUIRune;->IS_VZW_POPUP:Z

    if-nez v6, :cond_2

    sget-boolean v6, Lcom/android/systemui/SystemUIRune;->IS_CMCC_POPUP:Z

    if-eqz v6, :cond_8

    .line 532
    :cond_2
    :goto_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 533
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-direct {v7, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 534
    sget-boolean v6, Lcom/android/systemui/SystemUIRune;->IS_VZW_POPUP:Z

    if-eqz v6, :cond_9

    const v6, 0x7f0f042a

    .line 533
    :goto_4
    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 537
    sget-boolean v6, Lcom/android/systemui/SystemUIRune;->IS_VZW_POPUP:Z

    if-eqz v6, :cond_a

    const v6, 0x7f0f0045

    .line 538
    :goto_5
    new-instance v8, Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;

    invoke-direct {v8, p0, v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$5;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Landroid/widget/CheckBox;)V

    .line 533
    invoke-virtual {v7, v6, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 549
    new-instance v7, Lcom/android/systemui/qs/tiles/AirplaneModeTile$6;

    invoke-direct {v7, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$6;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    const/high16 v8, 0x1040000

    .line 533
    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 555
    new-instance v7, Lcom/android/systemui/qs/tiles/AirplaneModeTile$7;

    invoke-direct {v7, p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile$7;-><init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;)V

    .line 533
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 563
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v6}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 564
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->setDialogWindowType(Landroid/app/AlertDialog;)V

    .line 566
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KnoxStateMonitor;->isNeedtoSetupAirplaneModeTileDialog()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 567
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d9

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 570
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 498
    return-void

    .line 505
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "checkbox":Landroid/widget/CheckBox;
    .end local v3    # "contentText":Landroid/widget/TextView;
    .end local v5    # "message":I
    :cond_4
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 509
    :cond_5
    sget-boolean v6, Lcom/android/systemui/SystemUIRune;->IS_CMCC_POPUP:Z

    if-eqz v6, :cond_6

    .line 510
    const v5, 0x7f0f042f

    .restart local v5    # "message":I
    goto/16 :goto_1

    .line 512
    .end local v5    # "message":I
    :cond_6
    const v5, 0x7f0f042b

    .restart local v5    # "message":I
    goto/16 :goto_1

    .line 522
    :cond_7
    const v5, 0x7f0f0430

    goto/16 :goto_2

    .line 529
    .restart local v2    # "checkbox":Landroid/widget/CheckBox;
    .restart local v3    # "contentText":Landroid/widget/TextView;
    :cond_8
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_3

    .line 535
    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_9
    const v6, 0x7f0f0429

    goto :goto_4

    .line 537
    :cond_a
    const v6, 0x1040630

    goto :goto_5
.end method

.method private supportTLockPackage()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 583
    const/4 v3, 0x0

    .line 584
    .local v3, "result":Z
    const-string/jumbo v0, "com.skt.t_smart_charge"

    .line 586
    .local v0, "TLOCK_PKG_NAME":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 587
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 588
    const-string/jumbo v5, "com.skt.t_smart_charge"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 589
    .local v4, "tLock":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 590
    :goto_0
    if-eqz v3, :cond_0

    .line 591
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "supportTLockPackage()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    .end local v4    # "tLock":Landroid/content/pm/ApplicationInfo;
    :cond_0
    return v3

    .line 589
    .restart local v4    # "tLock":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 593
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "tLock":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 594
    .local v1, "ex":Ljava/lang/Exception;
    return v7
.end method

.method private unregisterPhoneStateListener()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 458
    iget v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSimCount:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    if-nez v1, :cond_1

    :cond_0
    return-void

    .line 459
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    .line 460
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 461
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterPhoneStateListener  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mTM:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 459
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 457
    :cond_3
    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0311

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f0310

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor;->isAirplaneModeTileBlocked()Z

    move-result v0

    .line 232
    if-eqz v0, :cond_0

    .line 234
    const/4 v0, 0x0

    return-object v0

    .line 236
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.AIRPLANE_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 363
    const/16 v0, 0x70

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f03c1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleClick()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 174
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor;->isAirplaneModeTileBlocked()Z

    move-result v0

    .line 173
    if-eqz v0, :cond_0

    .line 175
    return-void

    .line 177
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleClick "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " dim "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->dim:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getMetricsCategory()I

    move-result v4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 180
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_SKT_POPUP:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->isTSafeLockWithSecureKeyguard()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0432

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 182
    return-void

    :cond_1
    move v0, v2

    .line 178
    goto :goto_0

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v0, p0}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSTileOnKeyguard(Lcom/android/systemui/qs/QSTile;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    return-void

    .line 188
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->dim:Z

    if-eqz v0, :cond_4

    return-void

    .line 190
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mShopDemoSetting:Lcom/android/systemui/qs/SecureSetting;

    invoke-virtual {v0}, Lcom/android/systemui/qs/SecureSetting;->getValue()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 191
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0433

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 193
    return-void

    .line 196
    :cond_5
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_OJT_POPUP:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_9

    .line 202
    :cond_6
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->handleRefreshState(Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    if-eqz v0, :cond_7

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->fireDisableStateChanged(Z)V

    .line 204
    :cond_7
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_AIRPLANE_MODE_ENABLE_POPUP:Z

    if-eqz v0, :cond_8

    .line 205
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 206
    const-string/jumbo v3, "tw_globalactions_dont_show_again"

    .line 205
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_8

    .line 207
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_a

    .line 213
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_b

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->setEnabled(Z)V

    .line 172
    return-void

    .line 196
    :cond_9
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isMultisim()Z

    move-result v0

    if-nez v0, :cond_6

    .line 197
    const-string/jumbo v0, "28601"

    invoke-static {v1}, Lcom/android/systemui/statusbar/DeviceState;->getNetworkOperatorNumeric(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 196
    if-eqz v0, :cond_6

    .line 198
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0434

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 208
    :cond_a
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->showConfirmCheckboxPopup()V

    .line 209
    return-void

    :cond_b
    move v1, v2

    .line 213
    goto :goto_2
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 154
    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->showDetail(Z)V

    .line 240
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 12
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$BooleanState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 254
    instance-of v7, p2, Ljava/lang/Integer;

    if-eqz v7, :cond_0

    move-object v7, p2

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 256
    .local v6, "value":I
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v7, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v7, v7, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    iput-boolean v7, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 257
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v7, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v7, v7, Lcom/android/systemui/qs/QSTile$BooleanState;->dim:Z

    iput-boolean v7, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->dim:Z

    .line 259
    instance-of v7, p2, Ljava/lang/Boolean;

    if-eqz v7, :cond_1

    move-object v7, p2

    .line 260
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->dim:Z

    .line 261
    const v7, 0x7f020378

    invoke-static {v7}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v7

    iput-object v7, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 262
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " handleUpdateState:  dim  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    const v8, 0x7f0f03c1

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 358
    const-class v7, Landroid/widget/Switch;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 357
    iput-object v7, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    iput-object v7, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->minimalAccessibilityClassName:Ljava/lang/String;

    .line 253
    return-void

    .line 254
    .end local v6    # "value":I
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v7}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v6

    .restart local v6    # "value":I
    goto :goto_0

    .line 264
    :cond_1
    iget v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSimCount:I

    if-nez v7, :cond_4

    .line 265
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v7}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v7

    if-ne v7, v8, :cond_3

    move v7, v8

    :goto_2
    iput-boolean v7, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 266
    iput-boolean v9, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->dim:Z

    .line 267
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    if-eqz v7, :cond_2

    .line 268
    iget-boolean v7, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {p0, v7}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->fireToggleStateChanged(Z)V

    .line 269
    invoke-virtual {p0, v9}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->fireDisableStateChanged(Z)V

    .line 337
    :cond_2
    :goto_3
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " handleUpdateState:  value "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "  state.dim "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->dim:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-boolean v7, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->dim:Z

    if-eqz v7, :cond_c

    .line 340
    const v7, 0x7f020378

    invoke-static {v7}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v7

    iput-object v7, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    goto :goto_1

    :cond_3
    move v7, v9

    .line 265
    goto :goto_2

    .line 272
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 273
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " handleUpdateState: popup showing return ,  dim  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->dim:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return-void

    .line 276
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v7}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v7

    if-ne v7, v8, :cond_9

    .line 277
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mServiceState:[I

    if-eqz v7, :cond_2

    .line 278
    const/4 v2, 0x0

    .line 279
    .local v2, "mSlotsInAirplaneMode":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, v10, :cond_7

    .line 280
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v5

    .line 281
    .local v5, "subIdtemp":[I
    if-eqz v5, :cond_6

    .line 282
    aget v4, v5, v9

    .line 283
    .local v4, "subId":I
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getPhoneId(I)I

    move-result v3

    .line 284
    .local v3, "phoneId":I
    if-ltz v4, :cond_6

    if-ne v0, v3, :cond_6

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-static {v7, v0}, Lcom/android/systemui/statusbar/DeviceState;->getSimSettingState(Landroid/content/Context;I)I

    move-result v7

    if-ne v7, v8, :cond_6

    .line 285
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mServiceState:[I

    aget v7, v7, v0

    if-ne v7, v11, :cond_6

    .line 286
    add-int/lit8 v2, v2, 0x1

    .line 279
    .end local v3    # "phoneId":I
    .end local v4    # "subId":I
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 291
    .end local v5    # "subIdtemp":[I
    :cond_7
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/statusbar/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result v7

    if-ne v2, v7, :cond_8

    .line 292
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "# of poweroff( in servicestate) : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iput-boolean v8, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 294
    iput-boolean v9, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->dim:Z

    .line 295
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    if-eqz v7, :cond_2

    .line 296
    invoke-virtual {p0, v8}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->fireToggleStateChanged(Z)V

    .line 297
    invoke-virtual {p0, v9}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->fireDisableStateChanged(Z)V

    goto/16 :goto_3

    .line 299
    :cond_8
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mServiceState:[I

    aget v7, v7, v9

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSupportCellularVoice:Z

    if-nez v7, :cond_2

    .line 300
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "in-service but, mSupportCellularVoice false "

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iput-boolean v8, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 303
    iput-boolean v9, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->dim:Z

    .line 304
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    if-eqz v7, :cond_2

    .line 305
    invoke-virtual {p0, v8}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->fireToggleStateChanged(Z)V

    .line 306
    invoke-virtual {p0, v9}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->fireDisableStateChanged(Z)V

    goto/16 :goto_3

    .line 311
    .end local v0    # "i":I
    .end local v2    # "mSlotsInAirplaneMode":I
    :cond_9
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mServiceState:[I

    if-eqz v7, :cond_2

    .line 312
    const/4 v1, 0x0

    .line 313
    .local v1, "mInServiceSlot":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    if-ge v0, v10, :cond_b

    .line 314
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v5

    .line 315
    .restart local v5    # "subIdtemp":[I
    if-eqz v5, :cond_a

    .line 316
    aget v4, v5, v9

    .line 317
    .restart local v4    # "subId":I
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->getPhoneId(I)I

    move-result v3

    .line 318
    .restart local v3    # "phoneId":I
    if-ltz v4, :cond_a

    if-ne v0, v3, :cond_a

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-static {v7, v0}, Lcom/android/systemui/statusbar/DeviceState;->getSimSettingState(Landroid/content/Context;I)I

    move-result v7

    if-ne v7, v8, :cond_a

    .line 319
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mServiceState:[I

    aget v7, v7, v0

    if-eq v7, v11, :cond_a

    .line 320
    add-int/lit8 v1, v1, 0x1

    .line 313
    .end local v3    # "phoneId":I
    .end local v4    # "subId":I
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 325
    .end local v5    # "subIdtemp":[I
    :cond_b
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/statusbar/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result v7

    if-ne v1, v7, :cond_2

    .line 326
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "# of NON-poweroff( in servicestate) : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iput-boolean v9, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    .line 328
    iput-boolean v9, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->dim:Z

    .line 329
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    if-eqz v7, :cond_2

    .line 330
    invoke-virtual {p0, v9}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->fireToggleStateChanged(Z)V

    .line 331
    invoke-virtual {p0, v9}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->fireDisableStateChanged(Z)V

    goto/16 :goto_3

    .line 342
    .end local v0    # "i":I
    .end local v1    # "mInServiceSlot":I
    :cond_c
    iget-boolean v7, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v7, :cond_d

    .line 343
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mEnable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    iput-object v7, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    goto/16 :goto_1

    .line 345
    :cond_d
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mDisable:Lcom/android/systemui/qs/QSTile$AnimationIcon;

    iput-object v7, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    goto/16 :goto_1
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 253
    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    .end local p1    # "state":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    .prologue
    .line 161
    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 377
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mListening:Z

    .line 379
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->mSetting:Lcom/android/systemui/qs/GlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/GlobalSetting;->setListening(Z)V

    .line 375
    return-void
.end method
