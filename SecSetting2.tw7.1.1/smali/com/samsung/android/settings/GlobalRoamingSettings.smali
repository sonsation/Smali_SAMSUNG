.class public Lcom/samsung/android/settings/GlobalRoamingSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "GlobalRoamingSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/GlobalRoamingSettings$1;,
        Lcom/samsung/android/settings/GlobalRoamingSettings$2;,
        Lcom/samsung/android/settings/GlobalRoamingSettings$3;,
        Lcom/samsung/android/settings/GlobalRoamingSettings$4;,
        Lcom/samsung/android/settings/GlobalRoamingSettings$5;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonDataRoaming:Lcom/android/settingslib/SecRestrictedSwitchPreference;

.field private mButtonDataSaver:Landroid/preference/PreferenceScreen;

.field private mButtonRoamingEnv:Landroid/preference/PreferenceScreen;

.field private mDirectCustomerService:Landroid/preference/Preference;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mHandler:Landroid/os/Handler;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRoamingNetworkSettings:Landroid/preference/Preference;

.field private mUseDataRoamingObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/GlobalRoamingSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/GlobalRoamingSettings;)Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/GlobalRoamingSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mRoamingNetworkSettings:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/GlobalRoamingSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/GlobalRoamingSettings;->getDataRoamingState()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/GlobalRoamingSettings;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/GlobalRoamingSettings;->toogleDataRoamingToast(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 394
    new-instance v0, Lcom/samsung/android/settings/GlobalRoamingSettings$5;

    invoke-direct {v0}, Lcom/samsung/android/settings/GlobalRoamingSettings$5;-><init>()V

    .line 393
    sput-object v0, Lcom/samsung/android/settings/GlobalRoamingSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 86
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 100
    new-instance v0, Lcom/samsung/android/settings/GlobalRoamingSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/GlobalRoamingSettings$1;-><init>(Lcom/samsung/android/settings/GlobalRoamingSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    new-instance v0, Lcom/samsung/android/settings/GlobalRoamingSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/GlobalRoamingSettings$2;-><init>(Lcom/samsung/android/settings/GlobalRoamingSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mHandler:Landroid/os/Handler;

    .line 136
    new-instance v0, Lcom/samsung/android/settings/GlobalRoamingSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/GlobalRoamingSettings$3;-><init>(Lcom/samsung/android/settings/GlobalRoamingSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 159
    new-instance v0, Lcom/samsung/android/settings/GlobalRoamingSettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/GlobalRoamingSettings$4;-><init>(Lcom/samsung/android/settings/GlobalRoamingSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mUseDataRoamingObserver:Landroid/database/ContentObserver;

    .line 86
    return-void
.end method

.method private getDataRoamingState()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 349
    sget-object v2, Lcom/samsung/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 350
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "data_roaming"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private toggleDataRoaming(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 359
    sget-object v0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 360
    const-string/jumbo v2, "data_roaming"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 359
    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 361
    iget-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    .line 362
    iget-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 356
    return-void

    .line 360
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toogleDataRoamingToast(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 366
    sget-object v0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f0b116b

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 365
    return-void
.end method

.method private updateCurrentRoamingNetwork()V
    .locals 11

    .prologue
    .line 271
    sget-object v9, Lcom/samsung/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 272
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const-string/jumbo v9, "phone"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    .line 274
    .local v7, "phone":Lcom/android/internal/telephony/ITelephony;
    :try_start_0
    invoke-interface {v7}, Lcom/android/internal/telephony/ITelephony;->getPhoneServiceState()I

    move-result v9

    if-nez v9, :cond_2

    .line 275
    const-string/jumbo v9, "phone"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/GlobalRoamingSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 276
    .local v8, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v6

    .line 277
    .local v6, "operatorName":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, "operator":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 280
    move-object v3, v6

    .line 281
    .local v3, "operatorFullName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 282
    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 283
    .local v4, "operatorMCC":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x3

    invoke-virtual {v2, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 284
    .local v5, "operatorMNC":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 286
    .end local v4    # "operatorMCC":Ljava/lang/String;
    .end local v5    # "operatorMNC":Ljava/lang/String;
    :cond_0
    iget-object v9, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mRoamingNetworkSettings:Landroid/preference/Preference;

    invoke-virtual {v9, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 270
    .end local v2    # "operator":Ljava/lang/String;
    .end local v3    # "operatorFullName":Ljava/lang/String;
    .end local v6    # "operatorName":Ljava/lang/String;
    .end local v8    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_0
    return-void

    .line 289
    :cond_2
    iget-object v9, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mRoamingNetworkSettings:Landroid/preference/Preference;

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 291
    :catch_0
    move-exception v1

    .line 292
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 177
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/samsung/android/settings/GlobalRoamingSettings;->finish()V

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/GlobalRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    .line 181
    iget-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_1

    .line 186
    :cond_1
    const v0, 0x7f08007f

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/GlobalRoamingSettings;->addPreferencesFromResource(I)V

    .line 187
    invoke-virtual {p0}, Lcom/samsung/android/settings/GlobalRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0b0cfc

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 188
    const-string/jumbo v0, "button_data_roaming"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/GlobalRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/SecRestrictedSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    .line 189
    const-string/jumbo v0, "button_data_saver"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/GlobalRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mButtonDataSaver:Landroid/preference/PreferenceScreen;

    .line 190
    const-string/jumbo v0, "button_network_settings"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/GlobalRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mRoamingNetworkSettings:Landroid/preference/Preference;

    .line 191
    const-string/jumbo v0, "button_roaming_env"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/GlobalRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mButtonRoamingEnv:Landroid/preference/PreferenceScreen;

    .line 192
    const-string/jumbo v0, "button_direct_call_customer_service"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/GlobalRoamingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mDirectCustomerService:Landroid/preference/Preference;

    .line 194
    iget-object v0, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 175
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 252
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 255
    sget-object v1, Lcom/samsung/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/GlobalRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 258
    sget-object v1, Lcom/samsung/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :cond_1
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 298
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .local v1, "key":Ljava/lang/String;
    move-object v3, p2

    .line 299
    check-cast v3, Ljava/lang/Boolean;

    .line 300
    .local v3, "value":Ljava/lang/Boolean;
    const/4 v2, 0x1

    .line 302
    .local v2, "result":Z
    const-string/jumbo v4, "button_data_roaming"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 303
    const-string/jumbo v4, "GlobalRoaming"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onPreferenceChange: mUseDataRoaming : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 306
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.SKT_ROAMING_DATA_POPUP"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    .local v0, "i":Landroid/content/Intent;
    sget-object v4, Lcom/samsung/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 308
    return v7

    .line 310
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/GlobalRoamingSettings;->toggleDataRoaming(Z)V

    .line 313
    :cond_1
    return v2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v7, 0x0

    .line 318
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 319
    .local v2, "key":Ljava/lang/String;
    sget-boolean v3, Lcom/android/settings/Utils;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "GlobalRoaming"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "preference: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mRoamingNetworkSettings:Landroid/preference/Preference;

    invoke-virtual {v3, p2}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 321
    sget-object v3, Lcom/samsung/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 322
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GlobalRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 323
    .local v0, "insertSimPopup":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0b0d09

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/GlobalRoamingSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SIM"

    const-string/jumbo v5, "USIM"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 324
    const v4, 0x7f0b0d0a

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/GlobalRoamingSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "SIM"

    const-string/jumbo v6, "USIM"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 323
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 325
    const v4, 0x104000a

    .line 323
    invoke-virtual {v3, v4, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 326
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 327
    const/4 v3, 0x1

    return v3

    .line 329
    .end local v0    # "insertSimPopup":Landroid/app/AlertDialog$Builder;
    :cond_1
    const-string/jumbo v3, "button_direct_call_customer_service"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/samsung/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 330
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.CALL_PRIVILEGED"

    .line 331
    const-string/jumbo v4, "tel"

    const-string/jumbo v5, "+82234167010"

    invoke-static {v4, v5, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 330
    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 332
    .local v1, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/samsung/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportKorRoamingConcept(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 333
    const-string/jumbo v3, "RADDialOption"

    const-string/jumbo v4, "korea"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 335
    :cond_2
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 336
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/GlobalRoamingSettings;->startActivity(Landroid/content/Intent;)V

    .line 342
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    .line 337
    :cond_4
    const-string/jumbo v3, "button_add_service"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 338
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    const-string/jumbo v4, "http://m.roaming.uplus.co.kr"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 339
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/GlobalRoamingSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 199
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 201
    sget-object v1, Lcom/samsung/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mAirplaneModeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 202
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0}, Lcom/samsung/android/settings/GlobalRoamingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "data_roaming"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 205
    iget-object v3, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mUseDataRoamingObserver:Landroid/database/ContentObserver;

    .line 204
    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 207
    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/GlobalRoamingSettings;->getDataRoamingState()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    .line 208
    invoke-direct {p0}, Lcom/samsung/android/settings/GlobalRoamingSettings;->getDataRoamingState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 209
    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    const v2, 0x7f0b116c

    invoke-virtual {v1, v2}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setSummary(I)V

    .line 214
    :goto_0
    sget-object v1, Lcom/samsung/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v1, v5}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setEnabled(Z)V

    .line 216
    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mRoamingNetworkSettings:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 232
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v1}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    sget-object v1, Lcom/samsung/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    .line 234
    const-string/jumbo v2, "no_data_roaming"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 233
    invoke-static {v1, v2, v3}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 235
    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v1, v5}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setEnabled(Z)V

    .line 241
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/settings/GlobalRoamingSettings;->updateCurrentRoamingNetwork()V

    .line 243
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 244
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.android.settings.ACTION_DATA_ROAMING_NEGATIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    const-string/jumbo v1, "com.android.settings.ACTION_DATA_ROAMING_POSITIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    sget-object v1, Lcom/samsung/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 198
    return-void

    .line 211
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    const v2, 0x7f0b116b

    invoke-virtual {v1, v2}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 218
    :cond_3
    sget-object v1, Lcom/samsung/android/settings/GlobalRoamingSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportKorRoamingConcept(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 219
    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz v1, :cond_4

    .line 225
    :goto_3
    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mRoamingNetworkSettings:Landroid/preference/Preference;

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 223
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v1, v6}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setEnabled(Z)V

    goto :goto_3

    .line 227
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v1, v5}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setEnabled(Z)V

    .line 228
    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mRoamingNetworkSettings:Landroid/preference/Preference;

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 237
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    const-string/jumbo v2, "no_data_roaming"

    invoke-virtual {v1, v2}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    goto :goto_2
.end method
