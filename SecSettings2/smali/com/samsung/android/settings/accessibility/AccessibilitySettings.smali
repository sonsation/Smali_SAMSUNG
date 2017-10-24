.class public Lcom/samsung/android/settings/accessibility/AccessibilitySettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Lcom/android/settings/DialogCreatable;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/AccessibilitySettings$1;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettings$2;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettings$3;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettings$4;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettings$5;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettings$6;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field protected static isTalkbackInstalled:Z

.field static final sInstalledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field private mCallAnsweringEndingPreference:Landroid/preference/PreferenceScreen;

.field private mCategoriesCategory:Landroid/preference/PreferenceCategory;

.field private mContext:Landroid/content/Context;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDirectAccessPreference:Landroid/preference/PreferenceScreen;

.field private mDirectionLockPreference:Landroid/preference/PreferenceScreen;

.field private mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private final mHandler:Landroid/os/Handler;

.field private final mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mManageAccessibilityPreference:Landroid/preference/PreferenceScreen;

.field private mMoresettingsCategory:Landroid/preference/PreferenceCategory;

.field private mNoServicesMessagePreference:Landroid/preference/Preference;

.field private mNotificationReminderPreference:Landroid/preference/PreferenceScreen;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

.field private mServicesCategory:Landroid/preference/PreferenceCategory;

.field private final mSettingsContentObserver:Lcom/samsung/android/settings/accessibility/SettingsContentObserver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mSingleTapModeObserver:Landroid/database/ContentObserver;

.field private mSingleTapModePreference:Landroid/preference/SwitchPreference;

.field private final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mDirectAccessPreference:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mDirectionLockPreference:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mNotificationReminderPreference:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mSingleTapModePreference:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;I)V
    .locals 0
    .param p1, "dialogId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->updateServicesPreferences()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 134
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->isTalkbackInstalled:Z

    .line 153
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 152
    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 155
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    .line 822
    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$4;-><init>()V

    .line 821
    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 831
    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$5;

    invoke-direct {v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$5;-><init>()V

    .line 830
    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 103
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    .line 159
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 163
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    .line 165
    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$1;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 174
    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$2;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 201
    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$3;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$3;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;Landroid/os/Handler;)V

    .line 200
    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/samsung/android/settings/accessibility/SettingsContentObserver;

    .line 958
    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$6;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$6;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mSingleTapModeObserver:Landroid/database/ContentObserver;

    .line 968
    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$7;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 103
    return-void
.end method

.method private initializeAllPreferences()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 515
    const-string/jumbo v7, "categories_category"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    iput-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mCategoriesCategory:Landroid/preference/PreferenceCategory;

    .line 516
    const-string/jumbo v7, "services_category"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    iput-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    .line 517
    const-string/jumbo v7, "moresettings_category"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    iput-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mMoresettingsCategory:Landroid/preference/PreferenceCategory;

    .line 520
    const-string/jumbo v7, "direct_access"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mDirectAccessPreference:Landroid/preference/PreferenceScreen;

    .line 521
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mDirectAccessPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 522
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->updateDirectAccessStatus()V

    .line 524
    const-string/jumbo v7, "direction_lock"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mDirectionLockPreference:Landroid/preference/PreferenceScreen;

    .line 526
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string/jumbo v9, "SEC_FLOATING_FEATURE_ACCESSIBILITY_SUPPORT_DIRECTION_LOCK"

    invoke-virtual {v7, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 527
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mMoresettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mDirectionLockPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 531
    :cond_1
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 532
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mDirectionLockPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 536
    :cond_2
    const-string/jumbo v7, "notification_preference"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mNotificationReminderPreference:Landroid/preference/PreferenceScreen;

    .line 537
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mNotificationReminderPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 538
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mNotificationReminderPreference:Landroid/preference/PreferenceScreen;

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 540
    const/4 v3, 0x0

    .line 542
    .local v3, "isSingleFolderType":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 547
    .end local v3    # "isSingleFolderType":Z
    :goto_0
    const-string/jumbo v7, "call_answering_ending"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mCallAnsweringEndingPreference:Landroid/preference/PreferenceScreen;

    .line 548
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_VoiceCall_SupportVoiceRecordingDuringHoldCall"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 549
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v7

    .line 548
    if-eqz v7, :cond_4

    .line 550
    :cond_3
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mCallAnsweringEndingPreference:Landroid/preference/PreferenceScreen;

    const v8, 0x7f0b0207

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 553
    :cond_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    if-nez v7, :cond_c

    if-nez v3, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 559
    :goto_1
    const-string/jumbo v7, "toggle_easy_interaction_preference"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mSingleTapModePreference:Landroid/preference/SwitchPreference;

    .line 560
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mSingleTapModePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 561
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 562
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 563
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_d

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 569
    .end local v0    # "context":Landroid/content/Context;
    :cond_5
    :goto_2
    const-string/jumbo v7, "share_acc_setting_menu"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mManageAccessibilityPreference:Landroid/preference/PreferenceScreen;

    .line 570
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    .line 571
    .local v2, "isKioskContainer":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 572
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string/jumbo v8, "SEC_FLOATING_FEATURE_ACCESSIBILITY_SUPPORT_MANAGE_ACCESSIBILITY"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    if-eqz v7, :cond_e

    .line 573
    :cond_6
    :goto_3
    const-string/jumbo v7, "AccessibilitySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Manage accessiblity getCurrentUser : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mMoresettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mManageAccessibilityPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 577
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 578
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v8, "com.samsung.android.app.assistantmenu"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-eqz v7, :cond_9

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v8, "com.samsung.android.universalswitch"

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 582
    :cond_9
    :goto_4
    const-string/jumbo v7, "audio_preference_key"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    .line 583
    .local v5, "mHearingPreference":Landroid/preference/PreferenceScreen;
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mCategoriesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 584
    const-string/jumbo v7, "moresettings_category"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->removePreference(Ljava/lang/String;)V

    .line 514
    .end local v5    # "mHearingPreference":Landroid/preference/PreferenceScreen;
    :cond_a
    return-void

    .end local v2    # "isKioskContainer":Z
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .restart local v3    # "isSingleFolderType":Z
    :cond_b
    move v3, v8

    .line 542
    goto/16 :goto_0

    .line 543
    :catch_0
    move-exception v1

    .line 544
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 554
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "isSingleFolderType":Z
    :cond_c
    const-string/jumbo v7, "AccessibilitySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "CallAnsweringEning getCurrentUser : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mMoresettingsCategory:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mCallAnsweringEndingPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 564
    .restart local v0    # "context":Landroid/content/Context;
    :cond_d
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mSingleTapModePreference:Landroid/preference/SwitchPreference;

    const v8, 0x7f0b0251

    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_2

    .line 572
    .end local v0    # "context":Landroid/content/Context;
    .restart local v2    # "isKioskContainer":Z
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    :cond_e
    if-eqz v2, :cond_7

    goto/16 :goto_3

    .line 578
    :cond_f
    const-string/jumbo v7, "com.sec.feature.sensorhub"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 579
    const-string/jumbo v7, "mobility_preference_key"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    .line 580
    .local v4, "mDexterityPreference":Landroid/preference/PreferenceScreen;
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mCategoriesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v4}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4
.end method

.method private updateAllPreferences()V
    .locals 0

    .prologue
    .line 623
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->updateDefaultPreferences()V

    .line 624
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->updateServicesPreferences()V

    .line 622
    return-void
.end method

.method private updateDefaultPreferences()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 629
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->updateDirectAccessStatus()V

    .line 632
    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mSingleTapModePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 633
    const-string/jumbo v8, "easy_interaction"

    .line 632
    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 635
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 636
    .local v0, "fromManageAccessibilityIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v7, "SEC_FLOATING_FEATURE_ACCESSIBILITY_SUPPORT_MANAGE_ACCESSIBILITY"

    invoke-virtual {v4, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 637
    const-string/jumbo v4, "importNotification"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 638
    .local v1, "mManageAccessibility":Z
    if-eqz v1, :cond_4

    .line 639
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mManageAccessibilityPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 647
    .end local v1    # "mManageAccessibility":Z
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->shouldDirectionLockBeDisabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 648
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mDirectionLockPreference:Landroid/preference/PreferenceScreen;

    const v7, 0x7f0b1115

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 649
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mDirectionLockPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 652
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "notification_reminder_app_list"

    invoke-static {v4, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 653
    .local v3, "saveAppList":Ljava/lang/String;
    const-string/jumbo v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 654
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "notification_reminder_selectable"

    const/4 v8, -0x2

    invoke-static {v4, v7, v6, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 657
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 658
    const-string/jumbo v7, "notification_reminder_selectable"

    .line 657
    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_5

    move v2, v5

    .line 659
    .local v2, "notificationReminderEnabled":Z
    :goto_2
    if-eqz v2, :cond_6

    .line 660
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mNotificationReminderPreference:Landroid/preference/PreferenceScreen;

    const v5, 0x7f0b1952

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 627
    :goto_3
    return-void

    .end local v0    # "fromManageAccessibilityIntent":Landroid/content/Intent;
    .end local v2    # "notificationReminderEnabled":Z
    .end local v3    # "saveAppList":Ljava/lang/String;
    :cond_3
    move v4, v6

    .line 632
    goto :goto_0

    .line 641
    .restart local v0    # "fromManageAccessibilityIntent":Landroid/content/Intent;
    .restart local v1    # "mManageAccessibility":Z
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mManageAccessibilityPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    .end local v1    # "mManageAccessibility":Z
    .restart local v3    # "saveAppList":Ljava/lang/String;
    :cond_5
    move v2, v6

    .line 657
    goto :goto_2

    .line 662
    .restart local v2    # "notificationReminderEnabled":Z
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mNotificationReminderPreference:Landroid/preference/PreferenceScreen;

    const v5, 0x7f0b1953

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_3
.end method

.method private updateDirectAccessStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 589
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "direct_accessibility"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_6

    .line 590
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "direct_talkback"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_6

    .line 591
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "direct_negative"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_6

    .line 592
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "direct_greyscale"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_6

    .line 593
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "direct_samsung_screen_reader"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_6

    .line 594
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "direct_color_adjustment"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 595
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "color_blind_test"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_6

    .line 596
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "direct_access_control"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x1

    .line 598
    .local v0, "isDANotCheck":Z
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.samsung.android.app.talkback"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 599
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "direct_s_talkback"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x1

    .line 602
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUser()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 603
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "direct_universal_switch"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x1

    .line 606
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.sec.feature.overlaymagnifier"

    invoke-static {v1, v2}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 607
    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "direct_access_magnifier"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x1

    .line 610
    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    .line 611
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "direct_access"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 615
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 616
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mDirectAccessPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 588
    :goto_4
    return-void

    .line 596
    .end local v0    # "isDANotCheck":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "isDANotCheck":Z
    goto :goto_0

    .line 589
    .end local v0    # "isDANotCheck":Z
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "isDANotCheck":Z
    goto :goto_0

    .line 599
    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    .line 603
    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    .line 607
    :cond_9
    const/4 v0, 0x0

    goto :goto_3

    .line 618
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mDirectAccessPreference:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_4
.end method

.method private updateServicesPreferences()V
    .locals 27

    .prologue
    .line 672
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    if-nez v24, :cond_0

    return-void

    .line 674
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 676
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    .line 679
    .local v4, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v13

    .line 681
    .local v13, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    .line 680
    invoke-static/range {v24 .. v24}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v9

    .line 682
    .local v9, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v24, v0

    .line 683
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v25

    .line 682
    invoke-virtual/range {v24 .. v25}, Landroid/app/admin/DevicePolicyManager;->getPermittedAccessibilityServices(I)Ljava/util/List;

    move-result-object v15

    .line 684
    .local v15, "permittedServices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    .line 685
    const-string/jumbo v25, "accessibility_enabled"

    const/16 v26, 0x0

    .line 684
    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    .line 685
    const/16 v25, 0x1

    .line 684
    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    const/4 v3, 0x1

    .line 687
    .local v3, "accessibilityEnabled":Z
    :goto_0
    const/4 v11, 0x0

    .local v11, "i":I
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "count":I
    :goto_1
    if-ge v11, v7, :cond_1

    .line 688
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 689
    .local v12, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-nez v12, :cond_5

    .line 787
    .end local v12    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v24

    if-nez v24, :cond_3

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v24, v0

    if-nez v24, :cond_2

    .line 789
    new-instance v24, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v24, v0

    .line 794
    const v25, 0x7f0b15be

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 793
    invoke-virtual/range {v24 .. v25}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 796
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 666
    :cond_3
    return-void

    .line 684
    .end local v3    # "accessibilityEnabled":Z
    .end local v7    # "count":I
    .end local v11    # "i":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "accessibilityEnabled":Z
    goto :goto_0

    .line 692
    .restart local v7    # "count":I
    .restart local v11    # "i":I
    .restart local v12    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_5
    new-instance v16, Lcom/samsung/android/settingslib/RestrictedPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    .line 693
    .local v16, "preference":Lcom/samsung/android/settingslib/RestrictedPreference;
    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v24

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v23

    .line 695
    .local v23, "title":Ljava/lang/String;
    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v0

    .line 696
    .local v20, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 697
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 696
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v6, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    .local v6, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setKey(Ljava/lang/String;)V

    .line 701
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 702
    if-eqz v3, :cond_7

    .line 703
    invoke-interface {v9, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18

    .line 705
    .local v18, "serviceEnabled":Z
    :goto_2
    if-eqz v18, :cond_8

    .line 706
    const v24, 0x7f0b1952

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 712
    .local v19, "serviceEnabledString":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, v20

    iget-object v14, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 713
    .local v14, "packageName":Ljava/lang/String;
    const-string/jumbo v24, "com.samsung.android.app.talkback"

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 687
    :cond_6
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 702
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v18    # "serviceEnabled":Z
    .end local v19    # "serviceEnabledString":Ljava/lang/String;
    :cond_7
    const/16 v18, 0x0

    goto :goto_2

    .line 708
    .restart local v18    # "serviceEnabled":Z
    :cond_8
    const v24, 0x7f0b1953

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v19

    .restart local v19    # "serviceEnabledString":Ljava/lang/String;
    goto :goto_3

    .line 716
    .restart local v14    # "packageName":Ljava/lang/String;
    :cond_9
    const-string/jumbo v24, "com.samsung.android.universalswitch"

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_6

    .line 719
    const-string/jumbo v24, "com.samsung.android.app.screenreader"

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_6

    .line 722
    const-string/jumbo v24, "com.sec.android.app.camera"

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_6

    .line 725
    const-string/jumbo v24, "com.sec.android.app.camera.plb"

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_6

    .line 730
    if-eqz v15, :cond_d

    invoke-interface {v15, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    .line 731
    .local v17, "serviceAllowed":Z
    :goto_5
    if-nez v17, :cond_a

    if-eqz v18, :cond_e

    .line 741
    :cond_a
    const/16 v24, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 742
    const/16 v24, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 745
    :goto_6
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 746
    if-nez v17, :cond_10

    move/from16 v24, v18

    :goto_7
    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 749
    if-eqz v17, :cond_11

    .line 750
    move-object/from16 v22, v19

    .line 751
    .local v22, "summaryString":Ljava/lang/String;
    const/16 v24, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 756
    :goto_8
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 758
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/samsung/android/settingslib/RestrictedPreference;->setOrder(I)V

    .line 759
    const-class v24, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setFragment(Ljava/lang/String;)V

    .line 760
    const/16 v24, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setPersistent(Z)V

    .line 762
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settingslib/RestrictedPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 763
    .local v10, "extras":Landroid/os/Bundle;
    const-string/jumbo v24, "preference_key"

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/settingslib/RestrictedPreference;->getKey()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    const-string/jumbo v24, "checked"

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 765
    const-string/jumbo v24, "title"

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v8

    .line 768
    .local v8, "description":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 769
    const v24, 0x7f0b15bf

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 771
    :cond_b
    const-string/jumbo v24, "summary"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v21

    .line 774
    .local v21, "settingsClassName":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_c

    .line 775
    const-string/jumbo v24, "settings_title"

    .line 776
    const v25, 0x7f0b1590

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 775
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    const-string/jumbo v24, "settings_component_name"

    .line 778
    new-instance v25, Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v26

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v25

    .line 777
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    :cond_c
    const-string/jumbo v24, "component_name"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 730
    .end local v8    # "description":Ljava/lang/String;
    .end local v10    # "extras":Landroid/os/Bundle;
    .end local v17    # "serviceAllowed":Z
    .end local v21    # "settingsClassName":Ljava/lang/String;
    .end local v22    # "summaryString":Ljava/lang/String;
    :cond_d
    const/16 v17, 0x1

    goto/16 :goto_5

    .line 733
    .restart local v17    # "serviceAllowed":Z
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v26

    .line 732
    invoke-static/range {v24 .. v26}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfAccessibilityServiceDisallowed(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v5

    .line 734
    .local v5, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v5, :cond_f

    .line 735
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/samsung/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 739
    :goto_9
    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_6

    .line 737
    :cond_f
    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_9

    .line 746
    .end local v5    # "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    :cond_10
    const/16 v24, 0x1

    goto/16 :goto_7

    .line 753
    :cond_11
    const v24, 0x7f0b01fc

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 754
    .restart local v22    # "summaryString":Ljava/lang/String;
    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settingslib/RestrictedPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_8
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 233
    const v0, 0x7f0b1814

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x2

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 361
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v10

    .line 360
    if-eqz v10, :cond_2

    .line 362
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    if-nez v10, :cond_2

    .line 363
    new-instance v10, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    .line 366
    new-instance v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v4}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 367
    .local v4, "linkedData1":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 368
    .local v8, "sendEasymodeIntent":Landroid/content/Intent;
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "sendEasymodeIntent":Landroid/content/Intent;
    const-string/jumbo v10, "android.intent.action.MAIN"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 369
    .restart local v8    # "sendEasymodeIntent":Landroid/content/Intent;
    new-instance v10, Landroid/content/ComponentName;

    const-string/jumbo v11, "com.android.settings"

    .line 370
    const-string/jumbo v12, "com.android.settings.Settings$EasyModeAppActivity"

    .line 369
    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 371
    iput-object v8, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 372
    const v10, 0x7f0b05fa

    iput v10, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 375
    new-instance v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v5}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    .line 376
    .local v5, "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 377
    .local v9, "sendSosIntent":Landroid/content/Intent;
    new-instance v9, Landroid/content/Intent;

    .end local v9    # "sendSosIntent":Landroid/content/Intent;
    const-string/jumbo v10, "android.intent.action.MAIN"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 378
    .restart local v9    # "sendSosIntent":Landroid/content/Intent;
    new-instance v10, Landroid/content/ComponentName;

    const-string/jumbo v11, "com.sec.android.app.safetyassurance"

    .line 379
    const-string/jumbo v12, "com.sec.android.app.safetyassurance.settings.SafetyAssuranceSetting"

    .line 378
    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 380
    iput-object v9, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    .line 381
    const v10, 0x7f0b0af7

    iput v10, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    .line 384
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->isEasyModeDisplayed(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 385
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v10, v4}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    .line 389
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 390
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 391
    .local v0, "AppInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 393
    .local v6, "pkgName":Ljava/lang/String;
    const/16 v10, 0x80

    :try_start_0
    invoke-virtual {v7, v6, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 397
    .end local v0    # "AppInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v10, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v10, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 400
    :cond_1
    :goto_1
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getListView()Landroid/widget/ListView;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Landroid/widget/ListView;)V

    .line 403
    .end local v4    # "linkedData1":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    .end local v5    # "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "sendEasymodeIntent":Landroid/content/Intent;
    .end local v9    # "sendSosIntent":Landroid/content/Intent;
    :cond_2
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 404
    const/4 v3, 0x0

    .line 406
    .local v3, "isDualFolderType":Z
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 410
    .end local v3    # "isDualFolderType":Z
    :goto_2
    if-eqz v3, :cond_3

    .line 411
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getListView()Landroid/widget/ListView;

    move-result-object v10

    new-instance v11, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$9;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$9;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)V

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 359
    :cond_3
    return-void

    .line 394
    .restart local v0    # "AppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "linkedData1":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    .restart local v5    # "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    .restart local v6    # "pkgName":Ljava/lang/String;
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    .restart local v8    # "sendEasymodeIntent":Landroid/content/Intent;
    .restart local v9    # "sendSosIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 395
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 398
    .end local v0    # "AppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v10, v5}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    goto :goto_1

    .line 407
    .end local v4    # "linkedData1":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    .end local v5    # "linkedData2":Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "sendEasymodeIntent":Landroid/content/Intent;
    .end local v9    # "sendSosIntent":Landroid/content/Intent;
    .restart local v3    # "isDualFolderType":Z
    :catch_1
    move-exception v2

    .line 408
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 254
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AccessibilitySettings"

    const-string/jumbo v2, "Unable to retrieve configuration"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 441
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 442
    const v0, 0x7f0800d5

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->addPreferencesFromResource(I)V

    .line 443
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mContext:Landroid/content/Context;

    .line 444
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->initializeAllPreferences()V

    .line 445
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 446
    const-string/jumbo v1, "device_policy"

    .line 445
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 448
    new-instance v0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mDirectionLockSettingsHelper:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    .line 450
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportOfflineHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->setHasOptionsMenu(Z)V

    .line 454
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 440
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "dialogId"    # I

    .prologue
    const/4 v3, 0x0

    .line 323
    packed-switch p1, :pswitch_data_0

    .line 354
    return-object v3

    .line 325
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 326
    const v1, 0x7f0b029c

    .line 325
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 327
    const v1, 0x7f0b029e

    .line 325
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 329
    new-instance v1, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings$8;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettings;)V

    .line 328
    const v2, 0x7f0b029d

    .line 325
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 351
    const/high16 v1, 0x1040000

    .line 325
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 238
    const/high16 v0, 0x7f140000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 239
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 237
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    .line 265
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 317
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 269
    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.helphub"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 270
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v3, 0xa

    packed-switch v3, :pswitch_data_1

    .line 309
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    :pswitch_1
    return v6

    .line 282
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.helphub.HELP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "helphub:section"

    const-string/jumbo v4, "accessibility"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 304
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 296
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    :pswitch_3
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.helphub.HELP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string/jumbo v3, "helphub:appid"

    const-string/jumbo v4, "accessibility"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 314
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_4
    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->showDialog(I)V

    .line 315
    return v6

    .line 265
    :pswitch_data_0
    .packed-switch 0x7f1108a6
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 270
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 476
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v1}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 477
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/samsung/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 479
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 480
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mSingleTapModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 483
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "Accessibility"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 484
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 475
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 949
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mSingleTapModePreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 950
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 951
    .local v0, "value":Z
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getMetricsCategory()I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f1002ac

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x3e8

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v4, v5, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    .line 952
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "easy_interaction"

    .line 953
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 952
    :cond_0
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    return v1

    :cond_1
    move v1, v2

    .line 951
    goto :goto_0

    .line 955
    .end local v0    # "value":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    return v2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x0

    .line 495
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mCallAnsweringEndingPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/PreferenceScreen;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 498
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 499
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.callsettings.AnsweringCall"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 501
    const-string/jumbo v2, "FROM_ACCESSIBILITY"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 502
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getMetricsCategory()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1002ab

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    .line 507
    return v6

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "AccessibilitySettings"

    const-string/jumbo v3, "Unable to start callsettings.AnsweringCall"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 508
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mManageAccessibilityPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, p2}, Landroid/preference/PreferenceScreen;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 509
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mManageAccessibilityPreference:Landroid/preference/PreferenceScreen;

    const-class v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 511
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportOfflineHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    const v0, 0x7f1108a6

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 248
    :cond_0
    const v0, 0x7f1108a7

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 250
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 243
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 459
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 460
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->updateAllPreferences()V

    .line 462
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 463
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/samsung/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 465
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 467
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "easy_interaction"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 468
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mSingleTapModeObserver:Landroid/database/ContentObserver;

    .line 466
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 471
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "Accessibility"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 458
    return-void
.end method
