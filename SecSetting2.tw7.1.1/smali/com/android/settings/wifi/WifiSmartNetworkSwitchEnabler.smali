.class public Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;
.super Ljava/lang/Object;
.source "WifiSmartNetworkSwitchEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler$1;,
        Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler$2;
    }
.end annotation


# static fields
.field private static final CSC_CONFIG_OP_BRANDING:Ljava/lang/String;


# instance fields
.field private mAggressiveMode:Landroid/preference/SwitchPreference;

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSnsSettingPref:Landroid/preference/PreferenceScreen;

.field private final mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mSwitchPreferences:Landroid/preference/SwitchPreference;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->updateSmartNetworkSwitchServiceCheck()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 67
    const-string/jumbo v1, "CscFeature_Wifi_ConfigOpBranding"

    .line 66
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchPreference"    # Landroid/preference/SwitchPreference;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v3}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler$1;-><init>(Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 75
    new-instance v0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler$2;-><init>(Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 119
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    .line 120
    iput-object p2, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    .line 121
    iput-object v4, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 123
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    .line 124
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 130
    const-string/jumbo v3, "wifi_watchdog_poor_network_test_enabled"

    .line 129
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    .line 131
    const-string/jumbo v0, "WifiSmartNetworkSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WifiSnsSettingDialog appears with SNS Enabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 135
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 136
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 141
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->setPreferenceState()V

    .line 118
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 129
    goto :goto_0

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Landroid/preference/PreferenceScreen;Landroid/preference/SwitchPreference;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switchBar"    # Lcom/android/settings/widget/SwitchBar;
    .param p3, "snsSettingPref"    # Landroid/preference/PreferenceScreen;
    .param p4, "aggressiveMode"    # Landroid/preference/SwitchPreference;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v3}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler$1;-><init>(Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 75
    new-instance v0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler$2;-><init>(Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 146
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    .line 147
    iput-object p3, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSnsSettingPref:Landroid/preference/PreferenceScreen;

    .line 148
    iput-object p4, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAggressiveMode:Landroid/preference/SwitchPreference;

    .line 149
    iput-object p2, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 151
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    .line 152
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 158
    const-string/jumbo v3, "wifi_watchdog_poor_network_test_enabled"

    .line 157
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    .line 159
    const-string/jumbo v0, "WifiSmartNetworkSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WifiSnsSettingDialog appears with SNS Enabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 163
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mEnabled:Z

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 145
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 157
    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_1
.end method

.method private updateSmartNetworkSwitchServiceCheck()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 259
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    if-nez v0, :cond_0

    .line 260
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 264
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 258
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->updateSmartNetworkSwitchAvailability(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 283
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->setPreferenceState()V

    .line 284
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 268
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b15d8

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 269
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 270
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 273
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b15d9

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 274
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 275
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 278
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b15da

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 279
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 280
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 202
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 203
    check-cast v0, Ljava/lang/Boolean;

    .line 205
    .local v0, "value":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->setSmartNetworkSwitchEnable(Z)V

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->setPreferenceState()V

    .line 207
    const/4 v1, 0x1

    return v1

    .line 209
    .end local v0    # "value":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 196
    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->setSmartNetworkSwitchEnable(Z)V

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->setRadioPreferenceState()V

    .line 195
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 184
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 185
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 183
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 171
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mFilter:Landroid/content/IntentFilter;

    .line 172
    const-string/jumbo v3, "android.permission.CHANGE_NETWORK_STATE"

    .line 171
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 173
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mMobileDataObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 174
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 178
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->updateSmartNetworkSwitchServiceCheck()V

    .line 179
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 170
    :cond_1
    return-void
.end method

.method sendGSIMdata(Ljava/lang/String;)V
    .locals 6
    .param p1, "dataValue"    # Ljava/lang/String;

    .prologue
    .line 340
    const-string/jumbo v2, "feature"

    .line 341
    .local v2, "featureKey":Ljava/lang/String;
    const-string/jumbo v3, "SNSU"

    .line 342
    .local v3, "featureValue":Ljava/lang/String;
    const-string/jumbo v1, "extra"

    .line 344
    .local v1, "dataKey":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    .line 345
    :cond_0
    return-void

    .line 344
    :cond_1
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 347
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 348
    .local v4, "msgLog":Landroid/os/Message;
    const/16 v5, 0x4d

    iput v5, v4, Landroid/os/Message;->what:I

    .line 349
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 350
    .local v0, "argsLog":Landroid/os/Bundle;
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 353
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_2

    .line 354
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 339
    :cond_2
    return-void
.end method

.method public setPreferenceState()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 213
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 214
    const-string/jumbo v4, "wifi_watchdog_poor_network_test_enabled"

    .line 213
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_2

    const/4 v0, 0x1

    .line 215
    .local v0, "enabled":Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 216
    if-eqz v0, :cond_6

    .line 217
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSnsAggMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 218
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 219
    const-string/jumbo v4, "wifi_watchdog_poor_network_aggressive_mode_on"

    .line 218
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    .line 220
    .local v1, "mAggressiveEnabled":Z
    :cond_0
    if-eqz v1, :cond_4

    .line 221
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 222
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v3

    .line 221
    if-eqz v3, :cond_3

    .line 223
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    const v4, 0x7f0b0f1e

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 233
    .end local v1    # "mAggressiveEnabled":Z
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 211
    :goto_2
    return-void

    .line 213
    .end local v0    # "enabled":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0

    .line 225
    .restart local v1    # "mAggressiveEnabled":Z
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    const v4, 0x7f0b0f1f

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    .line 228
    :cond_4
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    const v4, 0x7f0b0f20

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    .line 231
    .end local v1    # "mAggressiveEnabled":Z
    :cond_5
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    const v4, 0x7f0b15b4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_1

    .line 235
    :cond_6
    const-string/jumbo v2, "VZW"

    sget-object v3, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 238
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    const v3, 0x7f0b15b2

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(I)V

    .line 240
    :goto_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_2

    .line 236
    :cond_7
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSwitchPreferences:Landroid/preference/SwitchPreference;

    const v3, 0x7f0b15b3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_3
.end method

.method public setRadioPreferenceState()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 245
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 246
    const-string/jumbo v3, "wifi_watchdog_poor_network_test_enabled"

    .line 245
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1

    const/4 v0, 0x1

    .line 247
    .local v0, "enabled":Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 248
    const-string/jumbo v3, "wifi_watchdog_poor_network_aggressive_mode_on"

    .line 247
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_2

    const/4 v1, 0x1

    .line 249
    .local v1, "mAggressiveEnabled":Z
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSnsSettingPref:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAggressiveMode:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 250
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isSupportSnsAggMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 251
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSnsSettingPref:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAggressiveMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 252
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAggressiveMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 244
    :cond_0
    :goto_2
    return-void

    .line 245
    .end local v0    # "enabled":Z
    .end local v1    # "mAggressiveEnabled":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0

    .line 247
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "mAggressiveEnabled":Z
    goto :goto_1

    .line 254
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mSnsSettingPref:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mAggressiveMode:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method public setSmartNetworkSwitchEnable(Z)V
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 293
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 294
    .local v1, "msgBigdata":Landroid/os/Message;
    const/16 v4, 0x131

    iput v4, v1, Landroid/os/Message;->what:I

    .line 295
    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 296
    if-eqz p1, :cond_2

    .line 297
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_watchdog_poor_network_aggressive_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 298
    iput v6, v1, Landroid/os/Message;->arg2:I

    .line 305
    :goto_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 306
    if-eqz p1, :cond_3

    .line 307
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 308
    const-string/jumbo v5, "wifi_watchdog_poor_network_test_enabled"

    .line 307
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 309
    const-string/jumbo v4, "WifiSmartNetworkSwitchEnabler"

    const-string/jumbo v5, "SNS On pressed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 321
    const-string/jumbo v5, "wifi_watchdog_poor_network_aggressive_mode_on"

    .line 320
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_4

    const/4 v0, 0x1

    .line 323
    .local v0, "mAggressiveEnabled":Z
    :goto_2
    if-eqz p1, :cond_6

    .line 324
    if-eqz v0, :cond_5

    .line 325
    const-string/jumbo v4, "AGG"

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->sendGSIMdata(Ljava/lang/String;)V

    .line 333
    :goto_3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_7

    const/4 v2, 0x1

    .line 335
    .local v2, "value":Z
    :goto_4
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0039

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v2, :cond_0

    const/16 v3, 0x3e8

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 292
    return-void

    .line 300
    .end local v0    # "mAggressiveEnabled":Z
    .end local v2    # "value":Z
    :cond_1
    iput v3, v1, Landroid/os/Message;->arg2:I

    goto :goto_0

    .line 303
    :cond_2
    const/4 v4, 0x2

    iput v4, v1, Landroid/os/Message;->arg2:I

    goto :goto_0

    .line 315
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 316
    const-string/jumbo v5, "wifi_watchdog_poor_network_test_enabled"

    .line 315
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 317
    const-string/jumbo v4, "WifiSmartNetworkSwitchEnabler"

    const-string/jumbo v5, "SNS Off pressed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 320
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "mAggressiveEnabled":Z
    goto :goto_2

    .line 327
    :cond_5
    const-string/jumbo v4, "ON"

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->sendGSIMdata(Ljava/lang/String;)V

    goto :goto_3

    .line 330
    :cond_6
    const-string/jumbo v4, "OFF"

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->sendGSIMdata(Ljava/lang/String;)V

    goto :goto_3

    .line 333
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "value":Z
    goto :goto_4
.end method
