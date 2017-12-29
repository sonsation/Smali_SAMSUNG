.class public Lcom/android/settings/location/LocationSettings;
.super Lcom/android/settings/location/LocationSettingsBase;
.source "LocationSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/LocationSettings$1;,
        Lcom/android/settings/location/LocationSettings$2;,
        Lcom/android/settings/location/LocationSettings$3;,
        Lcom/android/settings/location/LocationSettings$4;,
        Lcom/android/settings/location/LocationSettings$5;,
        Lcom/android/settings/location/LocationSettings$PackageEntryClickedListener;,
        Lcom/android/settings/location/LocationSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private injector:Lcom/android/settings/location/SettingsInjector;

.field private mAgpsFunctionSwitch:Landroid/preference/PreferenceScreen;

.field private mAgpsMenu:Landroid/preference/PreferenceCategory;

.field private mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

.field private mClockSync:Landroid/preference/SwitchPreference;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mImproveLocation:Landroid/preference/Preference;

.field private mIsEmerMode:Z

.field private mLocationMode:Landroid/preference/Preference;

.field private mLocationObserver:Landroid/database/ContentObserver;

.field private mLocationSettingsEnabler:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

.field private mLocationUseInBackground:Landroid/preference/Preference;

.field private mManagedProfile:Landroid/os/UserHandle;

.field private mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

.field private mManagedProfileSwitchClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSatelliteView:Landroid/preference/PreferenceScreen;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mUm:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings/location/LocationSettings;)Lcom/android/settings/location/SettingsInjector;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->injector:Lcom/android/settings/location/SettingsInjector;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/location/LocationSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mImproveLocation:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/location/LocationSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/location/LocationSettings;)Lcom/samsung/android/settings/location/LocationSettingsEnabler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mLocationSettingsEnabler:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/location/LocationSettings;)Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/location/LocationSettings;)Lcom/android/settingslib/SecRestrictedSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/location/LocationSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/settings/location/LocationSettings;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/location/LocationSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(I)I
    .locals 1
    .param p0, "mode"    # I

    .prologue
    invoke-static {p0}, Lcom/android/settings/location/LocationSettings;->getLocationString(I)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 705
    new-instance v0, Lcom/android/settings/location/LocationSettings$3;

    invoke-direct {v0}, Lcom/android/settings/location/LocationSettings$3;-><init>()V

    .line 704
    sput-object v0, Lcom/android/settings/location/LocationSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 715
    new-instance v0, Lcom/android/settings/location/LocationSettings$4;

    invoke-direct {v0}, Lcom/android/settings/location/LocationSettings$4;-><init>()V

    .line 714
    sput-object v0, Lcom/android/settings/location/LocationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 111
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettingsBase;-><init>()V

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->mIsEmerMode:Z

    .line 167
    new-instance v0, Lcom/android/settings/location/LocationSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/location/LocationSettings$1;-><init>(Lcom/android/settings/location/LocationSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/location/LocationSettings;->mLocationObserver:Landroid/database/ContentObserver;

    .line 644
    new-instance v0, Lcom/android/settings/location/LocationSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/location/LocationSettings$2;-><init>(Lcom/android/settings/location/LocationSettings;)V

    .line 643
    iput-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitchClickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 748
    new-instance v0, Lcom/android/settings/location/LocationSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/location/LocationSettings$5;-><init>(Lcom/android/settings/location/LocationSettings;)V

    iput-object v0, p0, Lcom/android/settings/location/LocationSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 111
    return-void
.end method

.method private addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/preference/PreferenceScreen;
    .param p3, "lockdownOnLocationAccess"    # Z

    .prologue
    .line 483
    const-string/jumbo v3, "location_services"

    invoke-virtual {p2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 484
    .local v0, "categoryLocationServices":Landroid/preference/PreferenceCategory;
    new-instance v3, Lcom/android/settings/location/SettingsInjector;

    invoke-direct {v3, p1}, Lcom/android/settings/location/SettingsInjector;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/location/LocationSettings;->injector:Lcom/android/settings/location/SettingsInjector;

    .line 487
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->injector:Lcom/android/settings/location/SettingsInjector;

    if-eqz p3, :cond_1

    .line 488
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 487
    :goto_0
    invoke-virtual {v4, v3}, Lcom/android/settings/location/SettingsInjector;->getInjectedSettings(I)Ljava/util/List;

    move-result-object v2

    .line 490
    .local v2, "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v3, Lcom/android/settings/location/LocationSettings$10;

    invoke-direct {v3, p0}, Lcom/android/settings/location/LocationSettings$10;-><init>(Lcom/android/settings/location/LocationSettings;)V

    iput-object v3, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 500
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 501
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.location.InjectedSettingChanged"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 502
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 504
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settings/location/LocationSettings;->isKioskEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 508
    :cond_0
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 481
    :goto_1
    return-void

    .line 488
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_1
    const/4 v3, -0x2

    goto :goto_0

    .line 505
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_2
    invoke-direct {p0, v2, v0}, Lcom/android/settings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    goto :goto_1
.end method

.method private addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
    .locals 3
    .param p2, "container"    # Landroid/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;",
            "Landroid/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, "prefs":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v2, Lcom/android/settings/location/LocationSettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings/location/LocationSettings$6;-><init>(Lcom/android/settings/location/LocationSettings;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 277
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 278
    .local v0, "entry":Landroid/preference/Preference;
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 269
    .end local v0    # "entry":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private changeManagedProfileLocationAccessStatus(Z)V
    .locals 8
    .param p1, "mainSwitchOn"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 421
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    if-nez v5, :cond_0

    .line 422
    return-void

    .line 424
    :cond_0
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v5, v6}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 425
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 426
    const-string/jumbo v6, "no_share_location"

    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 425
    invoke-static {v5, v6, v7}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 427
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->isManagedProfileRestrictedByBase()Z

    move-result v2

    .line 428
    .local v2, "isRestrictedByBase":Z
    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 429
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v5, v0}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 430
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v5, v4}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    .line 420
    :goto_0
    return-void

    .line 432
    :cond_1
    move v1, p1

    .line 433
    .local v1, "enabled":Z
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v5, p1}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setEnabled(Z)V

    .line 435
    const v3, 0x7f0b1d09

    .line 436
    .local v3, "summaryResId":I
    if-nez p1, :cond_2

    .line 437
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v5, v4}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 439
    :cond_2
    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    if-eqz v2, :cond_3

    :goto_1
    invoke-virtual {v5, v4}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setChecked(Z)V

    .line 440
    if-eqz v2, :cond_4

    .line 441
    const v3, 0x7f0b1d09

    .line 443
    :goto_2
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    new-instance v5, Lcom/android/settings/location/LocationSettings$9;

    invoke-direct {v5, p0}, Lcom/android/settings/location/LocationSettings$9;-><init>(Lcom/android/settings/location/LocationSettings;)V

    invoke-virtual {v4, v5}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 457
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v4, v3}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 439
    :cond_3
    const/4 v4, 0x1

    goto :goto_1

    .line 441
    :cond_4
    const v3, 0x7f0b1d08

    goto :goto_2
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 23

    .prologue
    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/settings/SettingsActivity;

    .line 284
    .local v4, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    .line 285
    .local v18, "root":Landroid/preference/PreferenceScreen;
    if-eqz v18, :cond_0

    .line 286
    invoke-virtual/range {v18 .. v18}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 288
    :cond_0
    const v19, 0x7f080095

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/location/LocationSettings;->addPreferencesFromResource(I)V

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    .line 293
    const-string/jumbo v19, "clock_sync"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/location/LocationSettings;->mClockSync:Landroid/preference/SwitchPreference;

    .line 294
    const-string/jumbo v19, "assisted_gps_function_switch"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/location/LocationSettings;->mAgpsFunctionSwitch:Landroid/preference/PreferenceScreen;

    .line 295
    const-string/jumbo v19, "satellite_view"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/location/LocationSettings;->mSatelliteView:Landroid/preference/PreferenceScreen;

    .line 296
    const-string/jumbo v19, "cmcc_agpsmenu"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/location/LocationSettings;->mAgpsMenu:Landroid/preference/PreferenceCategory;

    .line 298
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v19

    if-nez v19, :cond_3

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mClockSync:Landroid/preference/SwitchPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mAgpsFunctionSwitch:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 302
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mSatelliteView:Landroid/preference/PreferenceScreen;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mAgpsMenu:Landroid/preference/PreferenceCategory;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 320
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings/location/LocationSettings;->setupManagedProfileCategory(Landroid/preference/PreferenceScreen;)V

    .line 321
    const-string/jumbo v19, "location_mode"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    .line 323
    const-string/jumbo v19, "improve_location"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/location/LocationSettings;->mImproveLocation:Landroid/preference/Preference;

    .line 324
    const-string/jumbo v19, "use_in_background_location"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/location/LocationSettings;->mLocationUseInBackground:Landroid/preference/Preference;

    .line 325
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v19

    if-nez v19, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 330
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    move-object/from16 v19, v0

    .line 331
    new-instance v20, Lcom/android/settings/location/LocationSettings$8;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/settings/location/LocationSettings$8;-><init>(Lcom/android/settings/location/LocationSettings;Lcom/android/settings/SettingsActivity;)V

    .line 330
    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 343
    const-string/jumbo v19, "recent_location_requests"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceCategory;

    .line 342
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    .line 344
    new-instance v11, Lcom/android/settingslib/location/RecentLocationApps;

    invoke-direct {v11, v4}, Lcom/android/settingslib/location/RecentLocationApps;-><init>(Landroid/content/Context;)V

    .line 345
    .local v11, "recentApps":Lcom/android/settingslib/location/RecentLocationApps;
    invoke-virtual {v11}, Lcom/android/settingslib/location/RecentLocationApps;->getAppList()Ljava/util/List;

    move-result-object v13

    .line 346
    .local v13, "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/location/RecentLocationApps$Request;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 347
    .local v12, "recentLocationPrefs":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "request$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/settingslib/location/RecentLocationApps$Request;

    .line 348
    .local v15, "request":Lcom/android/settingslib/location/RecentLocationApps$Request;
    new-instance v10, Lcom/android/settings/DimmableIconPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v19

    .line 349
    iget-object v0, v15, Lcom/android/settingslib/location/RecentLocationApps$Request;->contentDescription:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    .line 348
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v10, v0, v1}, Lcom/android/settings/DimmableIconPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 351
    .local v10, "pref":Lcom/android/settings/DimmableIconPreference;
    new-instance v6, Lcom/samsung/android/settings/IconResizer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Lcom/samsung/android/settings/IconResizer;-><init>(Landroid/content/Context;)V

    .line 352
    .local v6, "iconResizer":Lcom/samsung/android/settings/IconResizer;
    const v19, 0x7f0a0023

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/samsung/android/settings/IconResizer;->setIconSize(I)V

    .line 353
    iget-object v0, v15, Lcom/android/settingslib/location/RecentLocationApps$Request;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/samsung/android/settings/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 355
    .local v17, "resizedicon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/android/settings/DimmableIconPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 356
    iget-object v0, v15, Lcom/android/settingslib/location/RecentLocationApps$Request;->label:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/settings/DimmableIconPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 357
    iget-boolean v0, v15, Lcom/android/settingslib/location/RecentLocationApps$Request;->isHighBattery:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    .line 358
    const v19, 0x7f0b17ab

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/settings/DimmableIconPreference;->setSummary(I)V

    .line 363
    :goto_3
    new-instance v19, Lcom/android/settings/location/LocationSettings$PackageEntryClickedListener;

    iget-object v0, v15, Lcom/android/settingslib/location/RecentLocationApps$Request;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v15, Lcom/android/settingslib/location/RecentLocationApps$Request;->userHandle:Landroid/os/UserHandle;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/location/LocationSettings$PackageEntryClickedListener;-><init>(Lcom/android/settings/location/LocationSettings;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 362
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/settings/DimmableIconPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 364
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 306
    .end local v6    # "iconResizer":Lcom/samsung/android/settings/IconResizer;
    .end local v10    # "pref":Lcom/android/settings/DimmableIconPreference;
    .end local v11    # "recentApps":Lcom/android/settingslib/location/RecentLocationApps;
    .end local v12    # "recentLocationPrefs":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    .end local v13    # "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/location/RecentLocationApps$Request;>;"
    .end local v15    # "request":Lcom/android/settingslib/location/RecentLocationApps$Request;
    .end local v16    # "request$iterator":Ljava/util/Iterator;
    .end local v17    # "resizedicon":Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mClockSync:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mClockSync:Landroid/preference/SwitchPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v21, "clock_sync_enabled"

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    const/16 v19, 0x1

    :goto_4
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mClockSync:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/settings/location/LocationSettings$7;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/location/LocationSettings$7;-><init>(Lcom/android/settings/location/LocationSettings;)V

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_0

    .line 307
    :cond_4
    const/16 v19, 0x0

    goto :goto_4

    .line 326
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mLocationUseInBackground:Landroid/preference/Preference;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 360
    .restart local v6    # "iconResizer":Lcom/samsung/android/settings/IconResizer;
    .restart local v10    # "pref":Lcom/android/settings/DimmableIconPreference;
    .restart local v11    # "recentApps":Lcom/android/settingslib/location/RecentLocationApps;
    .restart local v12    # "recentLocationPrefs":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    .restart local v13    # "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/location/RecentLocationApps$Request;>;"
    .restart local v15    # "request":Lcom/android/settingslib/location/RecentLocationApps$Request;
    .restart local v16    # "request$iterator":Ljava/util/Iterator;
    .restart local v17    # "resizedicon":Landroid/graphics/drawable/Drawable;
    :cond_6
    const v19, 0x7f0b17ac

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/android/settings/DimmableIconPreference;->setSummary(I)V

    goto :goto_3

    .line 367
    .end local v6    # "iconResizer":Lcom/samsung/android/settings/IconResizer;
    .end local v10    # "pref":Lcom/android/settings/DimmableIconPreference;
    .end local v15    # "request":Lcom/android/settingslib/location/RecentLocationApps$Request;
    .end local v17    # "resizedicon":Landroid/graphics/drawable/Drawable;
    :cond_7
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_8

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v12, v1}, Lcom/android/settings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 380
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/location/LocationSettings;->mIsEmerMode:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const-string/jumbo v20, "UPSM"

    const v21, 0x7f080095

    move-object/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->getRemovePreferenceInOtherMode(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 382
    .local v14, "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v14, :cond_b

    .line 383
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "list$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 384
    .local v7, "list":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/settings/location/LocationSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_6

    .line 371
    .end local v7    # "list":Ljava/lang/String;
    .end local v8    # "list$iterator":Ljava/util/Iterator;
    .end local v14    # "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    new-instance v5, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/location/LocationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 372
    .local v5, "banner":Landroid/preference/Preference;
    const v19, 0x7f04018c

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 373
    const v19, 0x7f0b17a9

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 374
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 388
    .end local v5    # "banner":Landroid/preference/Preference;
    :cond_9
    const/4 v9, 0x0

    .line 392
    .local v9, "lockdownOnLocationAccess":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v19, v0

    const-string/jumbo v20, "no_share_location"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v19

    .line 392
    if-eqz v19, :cond_a

    .line 394
    const/4 v9, 0x1

    .line 396
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v4, v1, v9}, Lcom/android/settings/location/LocationSettings;->addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;Z)V

    .line 398
    .end local v9    # "lockdownOnLocationAccess":Z
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/location/LocationSettings;->refreshLocationMode(Landroid/content/Context;)V

    .line 402
    return-object v18
.end method

.method private static getLocationString(I)I
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 540
    packed-switch p0, :pswitch_data_0

    .line 554
    const/4 v0, 0x0

    return v0

    .line 542
    :pswitch_0
    const v0, 0x7f0b17a7

    return v0

    .line 544
    :pswitch_1
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    const v0, 0x7f0b09df

    return v0

    .line 547
    :cond_0
    const v0, 0x7f0b17a6

    return v0

    .line 550
    :pswitch_2
    const v0, 0x7f0b17a5

    return v0

    .line 552
    :pswitch_3
    const v0, 0x7f0b17a4

    return v0

    .line 540
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isKioskEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 464
    const-string/jumbo v1, "persona"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    .line 466
    .local v0, "pm":Lcom/samsung/android/knox/SemPersonaManager;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 468
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v1

    return v1
.end method

.method private isManagedProfileRestrictedByBase()Z
    .locals 3

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    .line 638
    const/4 v0, 0x0

    return v0

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v1, "no_share_location"

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method private setupManagedProfileCategory(Landroid/preference/PreferenceScreen;)V
    .locals 3
    .param p1, "root"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v2, 0x0

    .line 408
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    .line 409
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getManagedProfiles(Landroid/os/UserManager;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 411
    :cond_0
    const-string/jumbo v0, "managed_profile_location_switch"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 412
    iput-object v2, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    .line 405
    :goto_0
    return-void

    .line 415
    :cond_1
    const-string/jumbo v0, "managed_profile_location_switch"

    .line 414
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/SecRestrictedSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    .line 416
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfileSwitch:Lcom/android/settingslib/SecRestrictedSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/SecRestrictedSwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 536
    const v0, 0x7f0b1bd5

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 182
    const/16 v0, 0x3f

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/android/settings/location/LocationSettingsBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 190
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    .line 193
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 194
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/widget/Switch;

    .line 195
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 197
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->requestFocus()Z

    .line 198
    new-instance v1, Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V

    iput-object v1, p0, Lcom/android/settings/location/LocationSettings;->mLocationSettingsEnabler:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    .line 186
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 211
    invoke-super {p0, p1}, Lcom/android/settings/location/LocationSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 213
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationSettings;->setHasOptionsMenu(Z)V

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->mIsEmerMode:Z

    .line 222
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings/location/LocationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 210
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 514
    const/4 v0, 0x1

    const v1, 0x7f0b17b1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 516
    invoke-super {p0, p1, p2}, Lcom/android/settings/location/LocationSettingsBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 513
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 204
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onDestroyView()V

    .line 205
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 203
    return-void
.end method

.method public onModeChanged(IZ)V
    .locals 13
    .param p1, "mode"    # I
    .param p2, "restricted"    # Z

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 559
    invoke-static {p1}, Lcom/android/settings/location/LocationSettings;->getLocationString(I)I

    move-result v6

    .line 560
    .local v6, "modeDescription":I
    if-eqz v6, :cond_0

    .line 561
    const v7, 0x7f0b17a7

    if-ne v6, v7, :cond_5

    .line 562
    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 566
    :goto_0
    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    invoke-virtual {v7, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 572
    :cond_0
    if-eqz p1, :cond_6

    const/4 v1, 0x1

    .line 573
    .local v1, "enabled":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 574
    const-string/jumbo v10, "no_share_location"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    .line 573
    invoke-static {v7, v10, v11}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 575
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 576
    const-string/jumbo v10, "no_share_location"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    .line 575
    invoke-static {v7, v10, v11}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    .line 578
    .local v2, "hasBaseUserRestriction":Z
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 579
    const-string/jumbo v10, "gps"

    .line 578
    invoke-static {v7, v10}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v4

    .line 580
    .local v4, "isGpsOn":Z
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 581
    const-string/jumbo v10, "content://com.sec.knox.provider/LocationPolicy"

    .line 582
    const-string/jumbo v11, "isGPSStateChangeAllowed"

    .line 580
    invoke-static {v7, v10, v11, v12}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 583
    .local v5, "isLocationGPSStateChangeAllowed":I
    if-eqz v4, :cond_7

    if-nez v5, :cond_7

    const/4 v3, 0x1

    .line 588
    .local v3, "isGpsEnforced":Z
    :goto_2
    if-nez v2, :cond_8

    if-eqz v0, :cond_8

    .line 589
    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v7, v0}, Lcom/android/settings/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 594
    :goto_3
    iget-object v10, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_b

    :cond_1
    move v7, v8

    :goto_4
    invoke-virtual {v10, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 595
    iget-object v10, p0, Lcom/android/settings/location/LocationSettings;->mImproveLocation:Landroid/preference/Preference;

    if-eqz v1, :cond_2

    if-eqz p2, :cond_c

    :cond_2
    move v7, v8

    :goto_5
    invoke-virtual {v10, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 596
    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mLocationUseInBackground:Landroid/preference/Preference;

    if-eqz v1, :cond_3

    if-eqz p2, :cond_d

    :cond_3
    :goto_6
    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 597
    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 612
    invoke-direct {p0, v1}, Lcom/android/settings/location/LocationSettings;->changeManagedProfileLocationAccessStatus(Z)V

    .line 614
    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mLocationSettingsEnabler:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    invoke-virtual {v7, p1, p2}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->onModeChanged(IZ)V

    .line 618
    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->injector:Lcom/android/settings/location/SettingsInjector;

    if-eqz v7, :cond_4

    .line 619
    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->injector:Lcom/android/settings/location/SettingsInjector;

    invoke-virtual {v7}, Lcom/android/settings/location/SettingsInjector;->reloadStatusMessages()V

    .line 558
    :cond_4
    return-void

    .line 564
    .end local v0    # "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .end local v1    # "enabled":Z
    .end local v2    # "hasBaseUserRestriction":Z
    .end local v3    # "isGpsEnforced":Z
    .end local v4    # "isGpsOn":Z
    .end local v5    # "isLocationGPSStateChangeAllowed":I
    :cond_5
    iget-object v7, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_0

    .line 572
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "enabled":Z
    goto/16 :goto_1

    .line 583
    .restart local v0    # "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .restart local v2    # "hasBaseUserRestriction":Z
    .restart local v4    # "isGpsOn":Z
    .restart local v5    # "isLocationGPSStateChangeAllowed":I
    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "isGpsEnforced":Z
    goto :goto_2

    .line 591
    :cond_8
    iget-object v10, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-nez p2, :cond_9

    if-eqz v3, :cond_a

    :cond_9
    move v7, v8

    :goto_7
    invoke-virtual {v10, v7}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_3

    :cond_a
    move v7, v9

    goto :goto_7

    :cond_b
    move v7, v9

    .line 594
    goto :goto_4

    :cond_c
    move v7, v9

    .line 595
    goto :goto_5

    :cond_d
    move v8, v9

    .line 596
    goto :goto_6
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    .line 521
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 522
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 530
    invoke-super {p0, p1}, Lcom/android/settings/location/LocationSettingsBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 525
    :pswitch_0
    const-class v1, Lcom/android/settings/location/ScanningSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 526
    const v3, 0x7f0b17b2

    .line 527
    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    .line 524
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 528
    const/4 v1, 0x1

    return v1

    .line 522
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 247
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mLocationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 260
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mLocationSettingsEnabler:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->pause()V

    .line 264
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "Location"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 266
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onPause()V

    .line 245
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v1, "LocationSettings"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    const-string/jumbo v1, "LocationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Swallowing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 228
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onResume()V

    .line 229
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mLocationSettingsEnabler:Lcom/samsung/android/settings/location/LocationSettingsEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/location/LocationSettingsEnabler;->resume()V

    .line 230
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 237
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mLocationObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 236
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 241
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "Location"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 227
    return-void
.end method
