.class public Lcom/samsung/android/settings/SecAirplaneModeEnabler;
.super Ljava/lang/Object;
.source "SecAirplaneModeEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/SecAirplaneModeEnabler$1;,
        Lcom/samsung/android/settings/SecAirplaneModeEnabler$2;
    }
.end annotation


# instance fields
.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private final mSwitchPref:Landroid/preference/SwitchPreference;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/SecAirplaneModeEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->onAirplaneModeChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "airplaneModeSwitchPreference"    # Landroid/preference/SwitchPreference;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/samsung/android/settings/SecAirplaneModeEnabler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/SecAirplaneModeEnabler$1;-><init>(Lcom/samsung/android/settings/SecAirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mHandler:Landroid/os/Handler;

    .line 71
    new-instance v0, Lcom/samsung/android/settings/SecAirplaneModeEnabler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/SecAirplaneModeEnabler$2;-><init>(Lcom/samsung/android/settings/SecAirplaneModeEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 80
    iput-object p1, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    .line 85
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 86
    iget-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 78
    return-void
.end method

.method private onAirplaneModeChanged()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 152
    iget-object v6, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    iget-object v7, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 154
    const/4 v1, 0x1

    .line 155
    .local v1, "allowChange":Z
    iget-object v6, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 156
    iget-object v6, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    .line 157
    .local v3, "serviceState":Landroid/telephony/ServiceState;
    const/4 v0, 0x0

    .line 159
    .local v0, "airplaneModeEnabled":Z
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    const/4 v0, 0x1

    .line 160
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "airplane_mode_on"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_3

    move v2, v4

    .line 161
    .local v2, "expectAirplaneModeOn":Z
    :goto_1
    if-ne v0, v2, :cond_4

    const/4 v1, 0x1

    .line 163
    .end local v0    # "airplaneModeEnabled":Z
    .end local v2    # "expectAirplaneModeOn":Z
    .end local v3    # "serviceState":Landroid/telephony/ServiceState;
    :cond_0
    :goto_2
    const-string/jumbo v6, "SecAirPlaneModeEnabler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onAirplaneModeChanged= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    if-eqz v1, :cond_1

    .line 165
    iget-object v6, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 166
    iget-object v6, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 167
    iget-object v5, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const v6, 0x7f0b1ad8

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 168
    iget-object v5, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 151
    :cond_1
    :goto_3
    return-void

    .line 159
    .restart local v0    # "airplaneModeEnabled":Z
    .restart local v3    # "serviceState":Landroid/telephony/ServiceState;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v2, v5

    .line 160
    goto :goto_1

    .line 161
    .restart local v2    # "expectAirplaneModeOn":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 170
    .end local v0    # "airplaneModeEnabled":Z
    .end local v2    # "expectAirplaneModeOn":Z
    .end local v3    # "serviceState":Landroid/telephony/ServiceState;
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const v6, 0x7f0b0364

    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 171
    iget-object v4, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_3
.end method

.method private setAirplaneModeOn(Z)V
    .locals 7
    .param p1, "enabling"    # Z

    .prologue
    const/16 v3, 0x3e8

    const/4 v2, 0x0

    .line 108
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    if-eqz p1, :cond_3

    .line 110
    const-string/jumbo v1, "GATE"

    const-string/jumbo v4, "<GATE-M> AIRPLANE_MODE_ON </GATE-M>"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "airplane_mode_on"

    .line 119
    if-eqz p1, :cond_4

    const/4 v1, 0x1

    .line 118
    :goto_1
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 121
    iget-object v1, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 129
    iget-object v1, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 131
    iget-object v1, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 133
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    .line 135
    if-eqz p1, :cond_1

    .line 136
    iget-object v1, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "AIRP"

    invoke-static {v1, v4, v5, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 139
    iget-object v5, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100055

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz p1, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 138
    invoke-static {v1, v4, v5, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    .line 106
    return-void

    .line 112
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :cond_3
    const-string/jumbo v1, "GATE"

    const-string/jumbo v4, "<GATE-M> AIRPLANE_MODE_OFF </GATE-M>"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v1, v2

    .line 119
    goto :goto_1
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 182
    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    iget-object v3, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0376

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 184
    iget-object v3, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 185
    return v6

    .line 190
    :cond_0
    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v3, "false"

    aput-object v3, v1, v6

    .line 191
    .local v1, "selectionArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "content://com.sec.knox.provider/RestrictionPolicy1"

    .line 192
    const-string/jumbo v5, "isAirplaneModeAllowed"

    .line 191
    invoke-static {v3, v4, v5, v1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 194
    .local v0, "isAirplaneModeAllowed":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-eq v0, v7, :cond_1

    .line 195
    return v6

    .line 200
    :cond_1
    const-string/jumbo v3, "ril.cdma.inecmmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 199
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 207
    :goto_0
    return v7

    :cond_2
    move-object v2, p2

    .line 203
    check-cast v2, Ljava/lang/Boolean;

    .line 204
    .local v2, "value":Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/16 v5, 0xb1

    invoke-static {v3, v5, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 205
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->setAirplaneModeOn(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 100
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 93
    iget-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 94
    iget-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 95
    iget-object v0, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 96
    const-string/jumbo v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 96
    const/4 v3, 0x1

    .line 95
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 89
    return-void
.end method

.method public setAirplaneModeInECM(ZZ)V
    .locals 0
    .param p1, "isECMExit"    # Z
    .param p2, "isAirplaneModeOn"    # Z

    .prologue
    .line 211
    if-eqz p1, :cond_0

    .line 213
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->setAirplaneModeOn(Z)V

    .line 210
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/SecAirplaneModeEnabler;->onAirplaneModeChanged()V

    goto :goto_0
.end method
