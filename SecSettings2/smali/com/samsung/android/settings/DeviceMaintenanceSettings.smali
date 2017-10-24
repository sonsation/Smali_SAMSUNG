.class public Lcom/samsung/android/settings/DeviceMaintenanceSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "DeviceMaintenanceSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/DeviceMaintenanceSettings$1;,
        Lcom/samsung/android/settings/DeviceMaintenanceSettings$2;,
        Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;,
        Lcom/samsung/android/settings/DeviceMaintenanceSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mBatteryPref:Landroid/preference/PreferenceScreen;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mMemoryPref:Landroid/preference/PreferenceScreen;

.field private mPerformancePref:Landroid/preference/PreferenceScreen;

.field private mStoragePref:Landroid/preference/PreferenceScreen;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->mBatteryPref:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->mMemoryPref:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->mPerformancePref:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->mStoragePref:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/DeviceMaintenanceSettings$1;-><init>()V

    .line 121
    sput-object v0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 132
    new-instance v0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/DeviceMaintenanceSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 160
    new-instance v0, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/DeviceMaintenanceSettings$3;-><init>(Lcom/samsung/android/settings/DeviceMaintenanceSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 36
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f080061

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->addPreferencesFromResource(I)V

    .line 64
    const-string/jumbo v0, "battery_settings"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->mBatteryPref:Landroid/preference/PreferenceScreen;

    .line 65
    const-string/jumbo v0, "performance_mode"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->mPerformancePref:Landroid/preference/PreferenceScreen;

    .line 66
    const-string/jumbo v0, "storage_settings"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->mStoragePref:Landroid/preference/PreferenceScreen;

    .line 67
    const-string/jumbo v0, "memory_settings"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->mMemoryPref:Landroid/preference/PreferenceScreen;

    .line 69
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    const-string/jumbo v0, "performance_mode"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->removePreference(Ljava/lang/String;)V

    .line 74
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 59
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 92
    iget-object v0, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "DeviceMaintenance"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 89
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 80
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 82
    iget-object v0, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/DeviceMaintenanceSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "DeviceMaintenance"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 79
    :cond_0
    return-void
.end method
