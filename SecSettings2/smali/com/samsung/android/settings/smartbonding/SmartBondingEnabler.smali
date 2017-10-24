.class public final Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;
.super Ljava/lang/Object;
.source "SmartBondingEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$1;,
        Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$2;,
        Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$3;,
        Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$4;
    }
.end annotation


# instance fields
.field private mAirPlaneObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mNofiticationDialog:Landroid/app/AlertDialog;

.field private final mSmartBondingObserver:Landroid/database/ContentObserver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mSwitchPref:Landroid/preference/SwitchPreference;

.field private mToddlerModeObserver:Landroid/database/ContentObserver;

.field private mWfcObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->isMenuDIM()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->sendMptcpStartBroadCast(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/preference/SwitchPreference;

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    .line 43
    iput-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 44
    iput-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 45
    iput-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    .line 51
    new-instance v0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$1;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mWfcObserver:Landroid/database/ContentObserver;

    .line 60
    new-instance v0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$2;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mAirPlaneObserver:Landroid/database/ContentObserver;

    .line 73
    new-instance v0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$3;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSmartBondingObserver:Landroid/database/ContentObserver;

    .line 91
    new-instance v0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$4;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mToddlerModeObserver:Landroid/database/ContentObserver;

    .line 111
    iput-object p1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    .line 112
    iput-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 113
    iput-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    .line 114
    iput-object p2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Lcom/android/settings/widget/SwitchBar;

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    .line 43
    iput-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 44
    iput-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 45
    iput-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    .line 51
    new-instance v0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$1;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mWfcObserver:Landroid/database/ContentObserver;

    .line 60
    new-instance v0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$2;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mAirPlaneObserver:Landroid/database/ContentObserver;

    .line 73
    new-instance v0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$3;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSmartBondingObserver:Landroid/database/ContentObserver;

    .line 91
    new-instance v0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$4;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mToddlerModeObserver:Landroid/database/ContentObserver;

    .line 104
    iput-object p1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 106
    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitch:Landroid/widget/Switch;

    .line 107
    iput-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 103
    return-void
.end method

.method private getBtnIdUnderNetworkStatus()I
    .locals 3

    .prologue
    .line 306
    const v0, 0x104000a

    .line 308
    .local v0, "popupBtnId":I
    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 309
    const v0, 0x7f0b0c52

    .line 320
    :cond_0
    :goto_0
    return v0

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 313
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 314
    const v0, 0x7f0b0c54

    goto :goto_0

    .line 312
    :cond_3
    const v0, 0x7f0b0c55

    .line 311
    goto :goto_0

    .line 315
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 316
    const v0, 0x7f0b0c53

    goto :goto_0
.end method

.method private getTextIdUnderNetworkStatus()I
    .locals 3

    .prologue
    .line 274
    const v0, 0x7f0b0c48

    .line 276
    .local v0, "popupMsgId":I
    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    const v0, 0x7f0b0c47

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 281
    const v0, 0x7f0b0c4f

    .line 302
    :cond_1
    :goto_0
    return v0

    .line 282
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 288
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 289
    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 290
    const v0, 0x7f0b0c4b

    goto :goto_0

    .line 283
    :cond_4
    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 284
    const v0, 0x7f0b0c4d

    goto :goto_0

    .line 286
    :cond_5
    const v0, 0x7f0b0c4e

    goto :goto_0

    .line 292
    :cond_6
    const v0, 0x7f0b0c4c

    goto :goto_0

    .line 294
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 295
    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 296
    const v0, 0x7f0b0c49

    goto :goto_0

    .line 298
    :cond_8
    const v0, 0x7f0b0c4a

    goto :goto_0
.end method

.method private isMenuDIM()Z
    .locals 3

    .prologue
    .line 417
    const/4 v0, 0x0

    .line 418
    .local v0, "isDim":Z
    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isEnabledWifiCallingActivity(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportEPDG()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 422
    :cond_0
    :goto_0
    return v0

    .line 419
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isWifiAndMobileNetworkEnabled()Z
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerForToddlerStatus()V
    .locals 4

    .prologue
    .line 339
    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "toddler_mode_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 340
    iget-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mToddlerModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 339
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 338
    return-void
.end method

.method private registerForWfcAndAirPlaneStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 329
    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.samsung.tmowfc.wfcprovider/registration_state_state_id"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mWfcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 330
    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mAirPlaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 328
    return-void
.end method

.method private sendMptcpStartBroadCast(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 410
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 411
    .local v0, "mptcpStateIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.android.mptcp.MPTCP_START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    const-string/jumbo v1, "mptcp_start"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 413
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 409
    return-void
.end method

.method private showNotificationDialog()Z
    .locals 11

    .prologue
    const v10, 0x7f0b1082

    const v9, 0x104000a

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 180
    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 181
    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 182
    iput-object v5, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    .line 185
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 186
    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v4, :cond_1

    .line 187
    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v7}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 189
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 190
    .local v2, "res":Landroid/content/res/Resources;
    const v4, 0x7f0b0c56

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "text":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 192
    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_7

    .line 193
    return v7

    .line 195
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "text":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 196
    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v4, :cond_3

    .line 197
    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v7}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 199
    :cond_3
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 200
    const v5, 0x7f0b0c4f

    .line 199
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 201
    const v5, 0x7f0b0c42

    .line 199
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 203
    new-instance v5, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$5;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$5;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)V

    .line 199
    invoke-virtual {v4, v9, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    .line 207
    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 208
    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_7

    .line 209
    return v7

    .line 211
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 212
    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v4, :cond_5

    .line 213
    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v7}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 215
    :cond_5
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 216
    iget-object v5, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 217
    const v6, 0x7f0b0c51

    .line 216
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->replaceSIMString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 215
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 218
    const v5, 0x7f0b0c50

    .line 215
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 220
    new-instance v5, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$6;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$6;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)V

    .line 215
    invoke-virtual {v4, v9, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    .line 224
    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 225
    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_7

    .line 226
    return v7

    .line 230
    :cond_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 231
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-direct {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->getTextIdUnderNetworkStatus()I

    move-result v1

    .line 232
    .local v1, "msgResId":I
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 233
    const v4, 0x7f0b0c43

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 234
    invoke-direct {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->getBtnIdUnderNetworkStatus()I

    move-result v4

    new-instance v5, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$7;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$7;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 245
    new-instance v4, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$8;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$8;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 256
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    .line 257
    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 258
    iget-object v4, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$9;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$9;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 270
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "msgResId":I
    :cond_7
    return v8
.end method

.method private unregisterForToddlerStatus()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mToddlerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 343
    return-void
.end method

.method private unregisterForWfcAndAirPlaneStatus()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mWfcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 335
    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mAirPlaneObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 333
    return-void
.end method


# virtual methods
.method public getmNofiticationDialog()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mNofiticationDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 349
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->onWidgetChanged(Z)Z

    move-result v0

    return v0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 354
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->onWidgetChanged(Z)Z

    .line 353
    return-void
.end method

.method public onWidgetChanged(Z)Z
    .locals 8
    .param p1, "isChecked"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 358
    iget-object v5, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f1000bc

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 359
    iget-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f1000bd

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    if-eqz p1, :cond_0

    const/16 v2, 0x3e8

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 358
    invoke-static {v5, v6, v7, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    .line 360
    iget-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "smart_bonding"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 362
    .local v1, "smartBondingState":Z
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 363
    invoke-direct {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->showNotificationDialog()Z

    move-result v2

    return v2

    .end local v1    # "smartBondingState":Z
    :cond_0
    move v2, v3

    .line 359
    goto :goto_0

    .line 360
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "smartBondingState":Z
    goto :goto_1

    .line 365
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "mptcp_value"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    .line 366
    if-eqz v1, :cond_6

    .line 396
    :cond_3
    if-eqz p1, :cond_4

    if-eqz v1, :cond_a

    .line 403
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "smart_bonding"

    if-eqz p1, :cond_5

    move v3, v4

    :cond_5
    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 406
    :goto_2
    return v4

    .line 367
    :cond_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 368
    .local v0, "mAlertDialog":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b0c42

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 369
    const v2, 0x7f0b0c15

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 370
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 371
    const v2, 0x7f0b0c23

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 375
    :cond_7
    :goto_3
    new-instance v2, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$10;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$10;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)V

    const v5, 0x104000a

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 381
    new-instance v2, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$11;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler$11;-><init>(Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 391
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 392
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 393
    return v4

    .line 372
    :cond_8
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isAveaSIMValid(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 373
    :cond_9
    const v2, 0x7f0b0c2c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    .line 397
    .end local v0    # "mAlertDialog":Landroid/app/AlertDialog$Builder;
    :cond_a
    iget-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-direct {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->isWifiAndMobileNetworkEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 398
    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->showNotificationDialog()Z

    move-result v2

    return v2

    .line 400
    :cond_c
    iget-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "smart_bonding"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 164
    const-string/jumbo v0, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->unregisterForToddlerStatus()V

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSmartBondingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 168
    invoke-direct {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->unregisterForWfcAndAirPlaneStatus()V

    .line 170
    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 163
    :cond_3
    return-void
.end method

.method public resume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 127
    const-string/jumbo v1, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 129
    const-string/jumbo v2, "toddler_mode_switch"

    .line 128
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 130
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->updateSmartBondingState(Z)V

    .line 132
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->registerForToddlerStatus()V

    .line 134
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 135
    const-string/jumbo v2, "smart_bonding"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSmartBondingObserver:Landroid/database/ContentObserver;

    .line 134
    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 136
    invoke-direct {p0}, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->registerForWfcAndAirPlaneStatus()V

    .line 138
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 139
    const-string/jumbo v2, "smart_bonding"

    .line 138
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    .line 140
    .local v0, "smartBondingState":Z
    :goto_0
    const-string/jumbo v1, "SmartBondingEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onResume() smartBondingState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 142
    const-string/jumbo v1, "SmartBondingEnabler"

    const-string/jumbo v2, "onResume() No sim status so, disable"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v0, 0x0

    .line 146
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_4

    .line 147
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 148
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 151
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_5

    .line 152
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 153
    if-eqz v0, :cond_7

    .line 154
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const v2, 0x7f0b1952

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 158
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 159
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v5}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 126
    :cond_5
    return-void

    .line 138
    .end local v0    # "smartBondingState":Z
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "smartBondingState":Z
    goto :goto_0

    .line 156
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const v2, 0x7f0b1953

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1
.end method

.method public updateSmartBondingState(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .prologue
    .line 324
    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 323
    :cond_1
    return-void
.end method
